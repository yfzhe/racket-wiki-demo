#lang scribble/manual

@title[#:tag "fibonacci"
       #:style '(unnumbered toc-hidden)
      ]{Fibonacci}

@(require scribble/example
          (for-label racket/base))

A naive implement of Fibonacci

@(racketblock
  (define (fib n)
    (cond
      [(= n 0) 0]
      [(= n 1) 1]
      [else (+ (fib (- n 1)) (fib (- n 2)))])))

