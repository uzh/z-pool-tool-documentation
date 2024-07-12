---
layout: default
title: Online Studies
parent: Best Practices
nav_order: 3
---

# Online Studies

## Set up

1. To create an online study, check the checkbox `Assignment without session` and provide the URL of your survey. This is where the contacts will be forwarded, when they start the survey.
   The url parameter `callbackUrl` will be replaced by an URL on your pool to close the assignment, when the contact has finished the survey. A possible survey url could be: `https://uzhwwf.qualtrics.com/jfe/form/SV_123123?callback={callbackUrl}`
2. Online studies are not tied to sessions. Therefore, you create a time window during which the contacts can participate in the study. If no time window is open at the moment, the matcher will not send any invitations.
3. Create your filter and start sending invitations. Invited contacts will now be able to open the experiment detail page.
4. When clicking on "start survey", an assignment will be created and the contact will be redirected to the rendered survey URL (in our example, this could be: `https://uzhwwf.qualtrics.com/jfe/form/SV_123123?callback=https://www.uast.uzh.ch/staging/experiments/559cca08-bc71-4665-834c-4c7dfd357707/submit/059fa14a-ff6b-4c40-b6d2-d9cbceb8a6c6`, where `{callbackUrl}` was replaced by the working callback URL belonging to the created assignment.)
5. When the contact finished the survey, he/she should be redirected back to the callback url (more details)
6. The `participated` flag of the assignment will be set and the `participation count` will be updated

![online study workflow](../images/online-studies.svg)
