---
layout: default
title: Qualtrics
grand_parent: Best Practices
parent: Online Studies
nav_order: 1
---

# Qualtrics

## Embedded data and query strings

You can pass information to Qualtrics to store and use in your survey via query strings, for example the `callbackUrl` or the `assignmentId` of the Pool Tool.

You can find the documentation about how to do so [here](https://www.qualtrics.com/support/survey-platform/survey-module/survey-flow/standard-elements/passing-information-through-query-strings/).

The documentation about how to use Embedded Fields in Qualtrics can be found [here](https://www.qualtrics.com/support/survey-platform/survey-module/survey-flow/standard-elements/embedded-data/).

## Callback URL setup example

1. In your Qualtrics survey, create an `Embedded Data` field (Survey Flow > Add new element > Select Embedded Data) and name it the same as the url parameter that contains the `callbackUrl`. Qualtrics will automatically store the URL parameter in this embedded field.
   1. If you want to use a different name, [refer to the section 'Manually store URL parameter'](#manually-store-url-parameter).
2. On the last page of your survey, you can 
   1. create a link back to the pool using the following HTML snipped:
    ```html
    <a href="${e://Field/your-embedded-field-name}">Finish survey</a>
    ```
    2. or redirect the user using javascript
    ```js
    const redirect = "${e://Field/your-embedded-field-name}";
	window.location.href = redirect;
    ```

### Manually store URL parameter
```js
const queryString = window.location.search;
const urlParams = new URLSearchParams(queryString);
let redirectUrl = urlParams.get('url-parameter-name')
let redirect = new URL(redirectUrl);
Qualtrics.SurveyEngine.setEmbeddedData("embedded-field-name", redirect);
```
