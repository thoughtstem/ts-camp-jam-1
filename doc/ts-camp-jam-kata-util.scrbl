#lang scribble/manual

@(require racket
          ts-kata-util)

@(provide DOLLAR
          camp-jam-kata)

@(define DOLLAR (image "kata-definitions/img/ts-dollar.png"
                       #:scale .15))

@(define (dollars (n 1))
   (map (thunk* DOLLAR) (range n)))

@(define (camp-jam-kata #:document-level (level subsubsection)
                        #:difficulty (difficulty 'bronze)
                        #:title (title "Avatar")
                        #:time-limit (time-limit 10)
                        #:dollars    (num-dollars 1)
                        #:review/introduce (review-introduce "concepts to review...")
                        #:extra-dollars-for (extra-dollars-for "helping teammates...")
                        . body)

   @kata[#:document-level level
         #:difficulty    difficulty
         #:title title
         #:time-limit time-limit]{

 @(dollars num-dollars)
  
 @side-note["Review/Introduce" review-introduce]

 @side-note["Extra Dollars for" extra-dollars-for]
                               
 @body
 })