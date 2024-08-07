---
layout: default
title: Custom Fields
parent: Best Practices
nav_order: 1
---

# Custom Fields

## Data types

The following data types are available:

- Boolean
- Date
- Multi Select
- Number
- Select
- Text

### Text

It is recommended to avoid using the data type `Text` to collect structured data. The text input is free of control and can, for example, be in any language. This helps you to increase the quality of the results when filtering for suitable contacts.

### Select

If you are using required `Select` or `Multi Select` fields, contacts will be forced to select one of the provided answers. If you cannot ensure that one of the provided answers will be suitable, you can add an option `None of the others`.

If the select field is not required, a `Please select` option will automatically be added.

## Prompt on signup

Fields marked with `prompt on signup` will be required to answer when signing up. It is recommended not to mark too many fields in order to keep the inhibition threshold for registration low.

If a field is marked as `required`, contacts will have to answer it after signing up and logging in, but before they can do anything else in the tool.