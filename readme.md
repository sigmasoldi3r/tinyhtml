# Tiny HTML

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
