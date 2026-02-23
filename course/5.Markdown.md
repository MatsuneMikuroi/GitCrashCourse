# Markdown

Markdown is a lightweight markup language that allows you to format text using simple syntax. It is widely used in readme files, documentation, and blogs. Here are some basic Markdown syntax to get you started:

- Headers:

```markdown
# Header 1
## Header 2
### Header 3
#...
```

- Emphasis:

```markdown
*Italic* or _Italic_
**Bold** or __Bold__
~~Strikethrough~~     # Does not work in every viewer
```

- Lists:

```markdown
- Unordered list:
  - Item 1
  - Item 2
    - Subitem 1
    - Subitem 2

- Ordered list:
   1. Item 1
   2. Item 2
      1. Subitem 1
      2. Subitem 2

- Task list  # Does not work with every viewer
    - [x] Completed task
    - [ ] Incomplete task
```

- Links and Images:

```markdown
[Link text](https://example.com)
[Link with title](https://example.com "Title text")
![Alt text](https://example.com/image.png)
[Reference to headers]( #header-1 )
[![Clickable Image](https://example.com/image.png)](https://example.com)
```

- Blockquotes:

````markdown
> This is a blockquote.
- Code blocks:

```python
def hello_world():
    print("Hello, world!")
```

````

- Footnotes:

```markdown
Here is a sentence with a footnote.[^1]

[^1]: This is the footnote text.

Or another one[^note]:

[^note]: Another footnote example.
```

- Tables:

```markdown
|  Left  | left alt | Center | Right  |
|--------|:---------|:------:|-------:|
| Cell 1 |  Cell 2  | Cell 3 | Cell 4 |
| Cell 5 |  Cell 6  | Cell 7 | Cell 8 |
```

- Horizontal Rule:

```markdown
---
```

- Math (using LaTeX syntax)[^LaTeX]:

```markdown
Inline math: $E = mc^2$
Block math:
$$ \int_a^b f(x) \,\mathrm{d}x $$
```

[^LaTeX]: Note that not all Markdown renderers support LaTeX math. In addition, be aware to use the old delimiters `$...$` for inline math and `$$...$$` for block math, as some renderers do not support the newer `\(...\)` and `\[...\]` delimiters.

Markdown also support HTML in it. A practical way can be to <span style="color:RED">change</span> <span style="color:GREEN">text</span> <span style="color:BLUE">color</span>.

```markdown
<span style="color:RED">...</span>
```

or use it to set precise size for image:

```markdown
<img src="https://example.com/image.png" width="200" height="100">
```

One last tip to enhance your readme is to use badges. You can go to [shields.io](https://shields.io) to generate a badge for your project. You can use them statically in your markdown to create a nice readme or documentation, or you can use them dynamically to show the status of your build, the coverage of your tests, etc.
