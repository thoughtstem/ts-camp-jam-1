# ts-camp-jam-1

# Adding more Katas?

Put them in `kata-definitions`.  Wrap in:

```
(define-kata-code some-lang kata-name ...)
```

This generates a unit test for your kata,
and also compiles out some meta-data for easy
integration with Scribble docs.

To document a kata in your Scribble file:

```
@(show-kata-code 'kata-name)
```

To build the docs and run the tests:

```
./scripts/build
```

To skip the tests (which do take a while):

```
raco setup ts-camp-jam-1
```
