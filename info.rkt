#lang info

(define collection "racket-wiki-demo")

(define deps '("base"))
(define build-deps '("scribble-lib" "racket-doc" "rackunit-lib"))

(define scribblings '(("src/wiki.scrbl" (multi-page))))

(define pkg-desc "A demo for a wiki-like doc for Racket")
(define version "0.0")
(define pkg-authors '(yfzhe))
