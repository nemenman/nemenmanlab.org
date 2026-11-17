---
title: "Lecture 10"
group: "physics-212-2018"
wiki_title: "Physics 212, 2018: Lecture 10"
order: 100
---

## Errors in the modeling process

Errors plague modeling process. We have mentioned earlier the Mars Climate Orbiter that crashed due to an error in the unit conversion. However, such errors are maybe not the most common (and definitely avoidable). However, the computational modeling process involves also other types of errors, some of them simply unavoidable.

### Modeling errors

Incorrectly constructed model. This can include rather sophisticated errors, such as making wrong assumptions about importance of various effects. Or the errors can be trivial, like simply writing down a wrong form of a interaction law. To find these errors, one must verify the program -- line by line, but also, more crucially, using special simple cases, at least one per independent parameter.

### Implementation (coding) errors

Some of these may be notices simply -- like syntactic errors that the interpreter will pick for you. Some may be more complicated and involve incorrect logic (e.g., not initializing variables), and such mistakes are very hard to detect. As above, the only way of doing this is by verifying your program again and again with different parameter values.

### Data errors

These are often outside of your control: instruments can have errors, parameter values you read in the literature can have errors, data may be copied with errors, etc. While outside of our control, detecting such errors is also important. Check -- does the data make sense? Is it of correct sign? Of correct magnitude? Does it change in the right fashion? etc.

### Computational errors

To understand how these emerge, we need first to understand how real numbers are stored in computer memory. In Python, you can find the functions needed to check how numbers are represented in the module sys.

- Real number is represented by a mantissa and by exponent. In general, **precision** of a floating point number is the number of significant digits in its mantissa.
- The little endian vs. the big endian representation of a number. See more here <https://en.wikipedia.org/wiki/Endianness>. Related, for those who haven't read it, I highly recommend [Gulliver's Travels](https://en.wikipedia.org/wiki/Gulliver%27s_Travels) book. See sys.byteorder.
- Single precision floating point number occupies 32 bits (4 bytes), and double precision 64 bits (8 bytes).
- Double precision number properties can can be found in sys.foat_info (check also sys.long_info).
  - What is the largest and the smallest number available on your computers? (be ready to submit this at the end of the class).
- Relative error vs absolute error.
- When numerical operations are done with floating point numbers, **arithmetic** errors generally occur. Let's consider examples:
  - Adding two numbers with 3 digit precision. Numbers have to have the same exponents first to be added. Whatever doesn't fit into the new mantissa is **rounded off** or **truncated**. **Epsilon** is the smallest number you can add to 1 and still have a result different from 1. What is epsilon on your computer?
  - Multiplying numbers with 3 digit precision. Again, rounding or truncation errors will happen. Importantly, another common error is possible: overflow or underflow (also possible for addition, but less likely). **Overflow** error -- the resulting number too large (in absolute value) to be represented. **Underflow** error -- the resulting number is too small (in absolute value) to be represented. ESA Ariane 5 rocket crushed due to an overflow error.
- Good practice for avoiding arithmetic errors:
  - Don't add small numbers to large numbers. Test this by creating an array of 1e6 in length of numbers 1e-20. Replace the 1000'th entry in the array by 1. Sum the array. You will get 1.0. Now instead sort the array and sum it. What do you get? Why?
  - How should divisions and multiplications be done? There's no one specific sequence, but there is one rule: avoid underflow or overflow. If you need to multiply and divide many numbers, make sure that your divisions and multiplications are ordered in such a way, that you don't get too large or too small numbers in the middle of the process.
  - Don't do many additions when you can do just one multiplication.
  - In general, don't assume that distributive or associative properties are satisfied on a computer.
  - Don't compare floating point numbers exactly. Compare them to a certain precision. Your work: write a function that compares if two floating point numbers are equal to a given relative precision (determined by the number with the smallest absolute value).

Please submit your work.
