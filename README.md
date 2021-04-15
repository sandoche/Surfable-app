<p align="center">
  <img src="/src/public/images/icon.png" width="150">
</p>
<h1 align="center">Surfable</h1>
<p>
  <img src="https://img.shields.io/badge/version-1.0.0-blue.svg?cacheSeconds=2592000" />
  <a href="/LICENSE">
    <img alt="License: Apache 2.0" src="https://img.shields.io/badge/License-Apache 2.0-yellow.svg" target="_blank" />
  </a>

  <a href="https://twitter.com/farbodsaraf">
    <img alt="Twitter: farbodsaraf" src="https://img.shields.io/twitter/follow/farbodsaraf.svg?style=social" target="_blank" />
  </a>
</p>

Install any website as an app for a quick access 📱

Surfable.app is a website to be able to install any website as an application.
It is built with `Express.js` and uses `google-play-scraper` package to search in Google Play Store and to get the metadata.

### 👉 [Get started](https://surfable.app)

## 🤔 How it works

- Surfable.app creates a Progressive Web App for each website that redirects to an URL
- It uses Google Play Store as a source of data by using apps' names, icons and developer website
- The search also works using Google Play Store data
- Because it uses the developer website as the URL of the app, some URLs can be wrong, but it can be corrected (see the documentation below)
- Some links may be missing of the search it can manually be added, doing a pull request

## 📖 How to add & update a website

If you don't know Javascript, just open an [https://github.com/sandoche/Surfable-app/issues](issue) explaining what link you would like to add / edit.
Otherwise just follow the steps below.

### Update a website

If you realize that a website redirects to the wrong URL you can correct it, by following these steps:
1. Go to the page that is wrong
2. Copy the `appId` from the URL for example in `https://surfable.app/pwa/com.sandoche.gitnews/` it would be `com.sandoche.gitnews`
3. Edit the following file [`src/data/websites.js`](/src/data/websites.js)
4. Check if the `appId` does not already exist, if it does edit the object if it does not add to the array, a new object like the following:
```js
{
  title: 'Twitter',
  appId: 'com.twitter.android',
  developerWebsite: 'https://twitter.com/',
  icon: 'https://lh3.googleusercontent.com/wIf3HtczQDjHzHuu7vezhqNs0zXAG85F7VmP7nhsTxO3OHegrVXlqIh_DWBYi86FTIGk',
},
```
5. Note that omitting one of the fields will take the default value from Google Play. You can for example omit the icon field, or the title.
6. Then just do a pull request

### Add a website that does not exist

If a website could not be found in Google Play, it needs to be added manually.
1. Edit the following file [`src/data/websites.js`](/src/data/websites.js)
2. Check if the URL you would like to add does not exist, if it does edit the object if it does not add to the array, a new object like the following:
```js
{
  title: 'Kanbanote',
  developerWebsite: 'https://www.kanbanote.com/board',
  icon: 'https://www.kanbanote.com/assets/app/images/icon_512x512.png',
  appId: 'www.kanbanote.com'
},
```
3. Note that the appId can be anything but should not already be used on Google Play, so putting the website address is a safe choice, also the icon should have a size of 512x512
4. Then just do a pull request


## ⚙️ How to use

### Install

```sh
npm install
```

### Usage

```sh
npm run start
```

### Development

```sh
npm run dev
```

### Deploy to Heroku
Since this project scraps data from Google Play, the number of queries are limited per server, therefore in case of problem we recommend you to host your own instance of Surfable.<br><br>
[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

### Deploy using Docker
```sh
docker build . -t surfable
docker run -p 3000:80 surfable
```

## Authors

👤 **Sandoche ADITTANE & Farbod SARAF**

* Twitter: [@farbodsaraf](https://twitter.com/farbodsaraf)
* Github: [@sandoche](https://github.com/sandoche)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

## ⭐️ Show your support

Give a ⭐️ if this project helped you!

## ☕️ Buy me a coffee 

If you like this project, feel free to donate: https://www.buymeacoffee.com/detoxify

## 📝 License

Copyright © 2020 [Sandoche ADITTANE](https://www.sandoche.com) & [Farbod SARAF](https://farbodsaraf.com/)<br />
This project is [Apache 2.0](/LICENSE) licensed.
