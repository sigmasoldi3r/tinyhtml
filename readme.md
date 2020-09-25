# Tiny HTML

[![Charon Badge](https://img.shields.io/badge/made_with-Charon-3f3f74?style=for-the-badge&link=https://github.com/sigmasoldi3r/charon-lang&logoWidth=25&logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAlxJREFUWIXtlr9rk0Ecxj8n/Rekg5GGkEF0aIcsRQhOggglkM3NSRxKx1gsAUsgdFSnoHQoqIO8ol3qGITSpcP7urRTaZpmCF066XgOfe96b967vPe+BETwgUDeu+/d89zz/d4P+I+/DJEzXmbN12l3bXFiY3M9J1WaOIscQHbaXfku2JMmOu2ujIWlcMOTWODhVqfdZX5xCYD3X77r9pevXqi5UpjLINekvVEjMcHF8ZI4+vaUD28WNPk0KBEbm+uJhbgcSJDbcPNOKAFZKddkpVyzxpguuGAT4CIXl2fVRHu9tcbySgAgt3cCAMZRmEvEtBQk8OzWVwB6o4bAnk/dNo5CXQtKxDgKmbQf0g5kWq+EmIhdYHsn0GPHUZj4xfOmhJsCMskN6Lh6a83WJya/XeeAdwo8YVa5tY6YWGjWOeANlQbXjnBBCfC2vzdqqHgNSxpyC5glMu8LM6aIACdBkTTkEhDbr/Fj67X+XzQNM0+BOhl9XUhtw3hgyubWfimRO7X6rfvntPZLwJULpit5BAhA3rv7SPz+dSFvLzzQAaXF1ZioKRWRJ1w7y30OTJKbMMnVKg92m9bYPMU4Zwa6yDOgViPhuhjrrRKfnz9meSXQbwYsrmQW4Xn01lrh5uptFxTAfPmhPNhtTj0XVA1IgOGgb3Xh45MqcF0PJk5OD5UI0Rs1uDyr8vPTquu6TtWEAKiUa3pAVhqGgz4np4d5X9NOAakUDAf9AnMXIzcFJDpnKMJ8VVvhLEKbiLjN136v57zudJ2AcFUXce49uZNzewdNEwGInAL+DfwBXCfqVaSscnUAAAAASUVORK5CYII=)](https://github.com/sigmasoldi3r/charon-lang)

Tiny HTML aims to be a small & compact library for easy generation of HTML
documents through code.

This can be used in scripts that generate HTML statically, or in simple web
servers that need to serve dynamic HTML views.

## Example

The library is written in [Charon](https://github.com/sigmasoldi3r/charon-lang/blob/master/readme.md),
so it can be used from Charon itself, or from plain Lua.

```clj
(import [!DOCTYPE html head meta title body h1 div] :from "html")

(println!
  (!DOCTYPE :html)
  (html {:lang "en"}
    (head
      (meta {:charset "UTF-8"})
      (meta {:name "viewport" :content "width=device-width, initial-scale=1.0"})
      (title "Really cool example"))
    (body
      (h1 "HTML Example")
      (div {:style "color: red;"}
        "Hello World!"))))
```

As you can see, the usage resembles much like an ordinary HTML document
structure, so it makes it intuitive.

`charon example.crn -e && lua example.lua > index.html`

Currently the library only supports direct string generation, but in the future
those functions will generate a document tree that you'll be able to store and
serialize at will.
