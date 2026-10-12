# Markdown Cheat Sheet

A quick reference for the most common Markdown syntax.

---

## Headers

````markdown
# h1
## h2
### h3
#### h4
##### h5
###### h6
````

Alternate style (h1 and h2 only):

````markdown
Header 1
========

Header 2
--------
````

---

## Emphasis

| Style | Syntax | Alternate |
| ----- | ------ | --------- |
| Italic | `*italic*` | `_italic_` |
| Bold | `**bold**` | `__bold__` |
| Bold italic | `***bold italic***` | `___bold italic___` |
| Strikethrough | `~~strikethrough~~` | |
| Inline code | `` `code` `` | |

---

## Lists

Unordered (use `*` or `-`):

````markdown
* Item 1
  * Nested Item 1
* Item 2

- Item 1
  - Nested Item 1
- Item 2
````

Ordered:

````markdown
1. Item 1
2. Item 2
````

Task list (checkboxes):

````markdown
- [ ] Checkbox off
- [x] Checkbox on
````

---

## Links

Inline:

````markdown
[link](http://google.com)
````

Reference-style:

````markdown
[link][google]
[google]: http://google.com
````

Automatic:

````markdown
<http://google.com>
````

---

## Images

Inline (optional title in quotes):

````markdown
![Image alt text](/path/to/img.jpg)
![Image alt text](/path/to/img.jpg "title")
````

Reference-style:

````markdown
![Image alt text][img]
[img]: http://foo.com/img.jpg
````

Base64-embedded:

````markdown
![Image alt text][img_base64]
[img_base64]: <data:image/png;base64,...>
````

---

## Code

Inline: wrap in single backticks, like `inline code`.

Indented block: indent every line by 4 spaces.

````text
    4 space indent
    makes a code block
````

Fenced block (add a language for syntax highlighting):

````markdown
```
code fences
```

```js
codeFences.withLanguage()
```
````

---

## Blockquotes

````markdown
> This is
> a blockquote
>
> > Nested
> > Blockquote
````

---

## Horizontal Rules

````markdown
----

****
````

---

## Tables

````markdown
| Column 1 Heading | Column 2 Heading |
| ---------------- | ---------------- |
| Some content     | Other content    |
````

Minimal form (no outer pipes or alignment padding):

````markdown
Column 1 Heading | Column 2 Heading
--- | ---
Some content | Other content
````

Column alignment with colons:

````markdown
| Left | Center | Right |
| :--- | :----: | ----: |
| a    | b      | c     |
````

