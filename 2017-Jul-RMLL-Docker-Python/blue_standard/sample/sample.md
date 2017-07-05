class: title

# Blue Standard Theme

Presented by: Atsuki Demizu

[Available on GitHub](https://github.com/demmys/remark-theme)

---

## Headings

### Special headings

In this theme, the heading has a special meaning. Level 2 heading at the top of the page creates a page title, and Level 3 heading creates subhead.  
In contrast to these heading, Level 4 heading creates more emphatic text.

### Level 3 Heading Sample

.center[
#### Level 4 Heading Sample
]

.center.inverted[
#### Inverted Level 4 Heading Sample
]

---

## Standard text

### Text size

Size of texts is redesigned. All these are a bit bigger than the original.

### Sample

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc accumsan ex quis finibus egestas. Vestibulum varius purus vitae metus pellentesque, mollis iaculis tortor tempus. Sed commodo ex molestie ipsum viverra, eu egestas lectus rhoncus. Ut id lorem sit amet lectus dignissim imperdiet. Vivamus eget augue augue. Etiam purus nibh, aliquam ac vestibulum at, finibus et elit.

---

## Text decoration

### Bold text

Lorem ipsum dolor sit amet, .bold[consectetur] adipiscing elit.

### Link text

Lorem ipsum dolor sit amet, [consectetur](#3) adipiscing elit.

### Quotation

.quote[Lorem ipsum dolor sit amet, consectetur adipiscing elit.]

### Footnote

Lorem ipsum dolor sit amet, consectetur .footnote[*1] adipiscing elit.

.footnote[*1 Nunc accumsan ex quis finibus egestas.]

---

## Vertical centered text

.vertical-center.center[
### You can also use vertical centered text easily.
]

---

## Listings

### Listing style

You can use designed listing style.

### Sample

* Item 1
    * Item 1-1
    * Item 1-2
        * Item 1-2-1

1. Item 1
    1. Item 1-1
    2. Item 1-2

---

## Images

### Image size

You can add images easily.

### Sample

.center[
.image-tiny[![Sample Image](http://placekitten.com/200/240)]
.image-small[![Sample Image](http://placekitten.com/200/240)]
]

---

## Code block

### Designed code block

With this theme, the long sentence doesn't protrude from a code block.

### Sample

```html
<!DOCTYPE html>
<html>
  <head>
    <title>Blue Standard Theme Sample</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <script src="https://demmys.github.io/remark/downloads/remark-latest.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://demmys.github.io/remark-theme/blue_standard/remark_theme_blue_standard.css"/>
  </head>
  <body>
    <script>var slideshow = remark.create({ sourceUrl: 'sample.md' });</script>
  </body>
</html>
```

---

## Table

### Designed table

You can use designed table.

### Sample

| Column 1 | Column 2 | Column 3 | Column 4 |
| -------- | -------- | -------- | -------- |
| content 1-1 | content 1-2 | content 1-3 | content 1-4 |

.inverted[
| Column 1 | Column 2 | Column 3 | Column 4 |
| -------- | -------- | -------- | -------- |
| content 1-1 | content 1-2 | content 1-3 | content 1-4 |
]

---

class: blank

## Blank page

You can create blank page.

---

class: blank inverted
background-image: url(http://placekitten.com/900/680)

## Background Image

You can use the background image property of remark.js.
Style of background image is set to the covered and centered in this theme.
