1. Download your package: [Your generated favicon (realfavicongenerator.net)](https://realfavicongenerator.net/favicon_result?file_id=p1fthvvr5b1qdr1fdoe62bf01csj6)
2. Extract this package in `<web site>/static/`. If your site is `http://www.example.com`, you should be able to access a file named `http://www.example.com/static/favicon.ico`.
3. Insert the following code in the `<head>` section of your pages:

```html
<link rel="apple-touch-icon" sizes="180x180" href="/static/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="/static/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="/static/favicon-16x16.png">
<link rel="manifest" href="/static/site.webmanifest">
<link rel="mask-icon" href="/static/safari-pinned-tab.svg" color="#5c8c7c">
<link rel="shortcut icon" href="/static/favicon.ico">
<meta name="msapplication-TileColor" content="#e3ffdc">
<meta name="msapplication-config" content="/static/browserconfig.xml">
<meta name="theme-color" content="#efffeb">
```

4. *Optional* - Once your website is deployed, check favicon