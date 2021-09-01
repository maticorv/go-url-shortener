
# Go URL shortener

Url shortener with reddis and GO


## API Reference

#### Get all items

```http
  GET /create-short-url
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `api_key` | `string` | **Required**. Your API key |

```http
  GET /
```
Return Welcome message "Welcome to the URL Shortener API

#### Get item

```http
  GET /${id}
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `id`      | `string` | **Required**. short_url_id

#### get(shortUrl_id)

Takes shortUrl_id and returns url.

  