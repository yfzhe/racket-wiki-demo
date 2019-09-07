#lang at-exp racket/base
(require racket/format
         racket/string
         racket/runtime-path)

(define-runtime-path doc-root "src/pages/")

(define (make-page-content title tag)
  @~a{#lang scribble/manual

      @"@"title[#:tag "@|tag|"
             #:style '(unnumbered toc-hidden)
            ]{@|title|}

      ;; Please write your content here
      
 })

(define (new-page name)
  (define name* (string-replace (string-downcase name) " " "-"))
  (define title (string-titlecase name))
  
  (define file-name (string-append name* ".scrbl"))
  (define file-path (build-path doc-root file-name))

  (with-handlers ([exn:fail:filesystem?
                   (lambda (e)
                     (displayln @~a{Wiki page "@|file-name|" is existed!})
                     (exit 1))])
    (call-with-output-file file-path
      (lambda (out)
        (display (make-page-content title name) out)
        (exit 0)))))


(module+ main
  (require racket/cmdline)

  (command-line
   #:program "raco wiki"
   #:usage-help "racket-wiki-helper"
   #:args (command . args)
   (case command
     [("new")
      (command-line
       #:program "raco wiki new"
       #:argv args
       #:usage-help "new wiki page"
       #:args name
       (println name))]))) 

