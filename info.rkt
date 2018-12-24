#lang info

(define scribblings '(("doc/manual.scrbl" (multi-page))))

(define deps '(
  "https://github.com/thoughtstem/game-engine.git"
  "https://github.com/thoughtstem/ts-kata-util.git"
  ;"https://github.com/thoughtstem/game-engine-rpg.git"
  "https://github.com/thoughtstem/game-engine-demos.git?path=game-engine-demos-common"
  ))

(define compile-omit-paths '(
  "test" "fleet"))

(define test-omit-paths '("doc" "jam" "scoring" "fleet"))

(define test-include-paths '(
  "kata-definitions/*.rkt"))
