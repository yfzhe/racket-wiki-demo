# racket-wiki-demo

A very simple demo about using Scribble to build a wiki.

## How to Install

``` 
> raco pkg install https://github.com/yfzhe/racket-wiki-demo
```

Then the Racket package system will build the doc (wiki) for you. You can see that in your local doc after installation finished.

## How to Write New Wiki Page

All wiki pages are placed in `src/pages/`. You can use `raco wiki new <page-name>` command to create new pages. However, as now, it needs manually add `@include-section["<page>.scrbl"]` to `src/index.scrbl` to gather all the pages together. 

## TODO

- Better `raco` command.
- Generate (some) pages like "Recent".

