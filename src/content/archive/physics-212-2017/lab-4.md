---
title: "Lab 4"
group: "physics-212-2017"
wiki_title: "Physics 212, 2017: Lab 4"
order: 190
---

We are playing even more with Python now!

1.  Python Student Guide, Ch 2.4, 2.5, 2.6, 2.7, and 3.all
2.  Python Student Guide, Ch 5.1 and 5.8
3.  Python Student Guide, Ch 4 -- first lab

If you have completed this, convince yourself that memory pre-allocation and vector math make things faster. For this:

1.  Try to calculate sine of a very long array element by element in a for loop, or on a whole array at once. Which one is faster and why?
2.  Create a 1000x1000 matrix of numbers from 1 to 1,000,000 three different ways: (i) a single range, sliced as a matrix, (ii) a pre-allocated matrix, filled up by a double for loop, and (iii) 1000 bumpy arrays created as ranges (1...1000), (1001...2000), etc. and stacked on top of each other as a vstack in a for loop. Which one is faster and why?

Finally also check what is faster: using np.arange vs. range when defining a for loop. For this, make a very long for loop that does nothing, and see how long it takes. What is faster and why?
