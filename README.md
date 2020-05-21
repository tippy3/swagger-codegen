# Swagger Codegen

SwaggerSpecからnodejsのモックサーバーを自動生成し、nodeコンテナでホスティングするサンプルです。Dockerのマルチステージビルドを用いています。

## 使い方

プロジェクトルートに`swagger.yml`を作成し、以下のコマンドを実行します。

```bash
docker-compose up --bulid
```

ブラウザで`localhost:8080/docs`にアクセスするとSwaggerUIが表示されます。

`localhost:8080/v2/pet/1`等、SwaggerSpecで定義したURLにアクセスするとサンプルデータが表示されます。

## 注意事項

- 対応するSwaggerSpecはバージョン2系です。Dockerfileのfromを編集すれば3系に変更できます。
- YAMLファイルの拡張子は`.yml`です。その部分を変更すれば`json`も使用できます。
