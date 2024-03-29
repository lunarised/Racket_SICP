# SICP Learning

## Goals
- [ ] Get as far as I can through SICP before Christmas 2021
- [ ] Make sure I can understand every chapter before  I move onto the next one
- [ ] Aim to find ways to transfer knowledge obtained from SICP into LCL and other projects I'm working on
- [ ] Aim to better understand the fundimentals of compilation, functional programming and data structures at a low level
- [ ] Write a summary of each chapter that can be understood by someone else who hasn't read the book

## Why SICP

SICP is a programming book that has come recommended 
by many people over the years, and is still in 2021 
regarded as one of the most important books to read 
as a developer. With functional programming making a
comeback, through avenues like Javascript, and Go, and
with languages such as Haskell and Erlang growing in 
popularity, It seems important to understand FP at a 
fundimental level now to prepare for the inevitable 
flood of folds

## Why not do the exercises in another language, say... Rust?

While Rust has some nice functional elements,
specifically the type system, I figured that the
course is going to be hard enough as it is! I haven't
done much purely functional stuff before and I think 
sticking with the language they write with is best

### Then why Racket?
Racket is a more modern, more feature rich varient of
Scheme, (which is the dialect that the book is written for)
so it should be easier for me to run the code (MIT
Scheme is getting harder to install reliably!!!)
Racket also has the sicp library which will recreate
scheme as it was intended to be used in the book, 
meaning it is likely all the books code shoudl run
happily

## Why Functional Programming?
While Functional Programming is taking the world by
storm at the moment, It is also nice to understand
why understanding functional programming can help
with development in non-functional contexts too.
(Note, Non-functional refers to not using mathematical
functions. It will still work). Creating functions and
algorithms that minimise global state can help by
reducing the area that bugs have to hide in. By removing
as much state as we can, we minimise the likelyhood for
a function to turn the program into a bad state. This also
makes testing easier, since the source of a bug is more 
easily found if it is trapped in a function

## Thanks to
- tA for the endless help with programming in general
