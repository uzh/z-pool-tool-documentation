---
layout: default
title: Qualtrics
grand_parent: Best Practices
parent: Online Studies
nav_order: 1
---

# Qualtrics

1. In your Qualtrics survey, create an `Embedded Data` field (Survey Flow > Add new element > Select Embedded Data) and name it the same as the url parameter that contains the `callbackUrl`. Qualtrics will automatically store the URL parameter in this embedded field.
   1. If you want to use a different name, [refer to this section](#manually-store-url-parameter).
2. On the last page of your survey, you can create a link back to the pool using the following HTML snipped:

```html
<a href="${e://Field/redirectUrl}">Finish survey</a>
```

### Manually store URL parameter
TODO