FROM swaggerapi/swagger-codegen-cli:2.4.14 as builder
WORKDIR /mock-seed
COPY ./swagger.yml ./
WORKDIR /mock-server
RUN java -jar /opt/swagger-codegen-cli/swagger-codegen-cli.jar generate -i /mock-seed/swagger.yml -l nodejs-server -o ./

FROM node:14.2.0-alpine3.10 as executor
WORKDIR /mock-server
COPY --from=builder /mock-server ./
RUN npm install
EXPOSE 8080
CMD ["npm", "start"]
