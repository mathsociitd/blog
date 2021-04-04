---
title: "I‘d tell you a Fibonacci joke, but it‘s probably as bad as the last two you‘ve heard combined"
subtitle: ""
layout: post
author: "Shammi Malhotra"
header-style: text
date: 2021-04-04 21:03:16 +0530
mathjax: true
tags:
  - article
  - mathematics-in-focus
  - fibonacci numbers
  - fibonacci sequences
---
## Introduction

  In this article we are going to talk about an interesting cyclic phenomena of the Fibonacci Numbers.

First of all for dummies let us recall Fibonacci Numbers :
<br/>  The Fibonacci numbers are the numbers in the integer sequence: 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, ... defined by the recurrence relation

*F<sub>1</sub>* = 1 <br/>
*F<sub>2</sub>* = 1 <br/>
*F<sub>i</sub>* = *F<sub>i-1</sub>* + *F<sub>i-2</sub>*

## Motivation
  Now if we try to observe the parity of the numbers in the Fibonacci sequence
we get <em>odd(1), odd(1), even(2), odd(3), odd(5), even(8), · · ·</em>
<br/>
We observe that the cyclic pattern of odd-odd-even is popping up in the sequence and with simple reasoning it can be shown that this cyclic pattern will always continue.

Now let us try to change the perspective and denote the terms having odd parity by 1 and even parity by 0. So our modified sequences becomes 1, 1, 0, 1, 1, 0, 1, 1, 0, · · ·

And we try to ask ourselves a question ”Can we apply some operation on the Fibonacci Sequence and get this modified version?”. After a bit of thought we realize that we can get it by noting down the remainder we get by dividing
the original terms by 2. More technically we call it modulo 2 of the number.

Now we have seen we get this periodic sequence out of Fibonacci Sequence by dividing by 2 and noting the remainders. We now can be a bit curious and try to divide by 3 and note the remainders. So after doing that we will again 1 get the cyclic pattern and it is 1−1−2−0−2−2−1−0 (check it by yourself!).

But we can divide by any natural number ’n’ and note down the remainders. So finally we can ask ourselves ”Does this happen in general with any such ’n’?
It turns out we always get a repeating sequence and ”PIGEONHOLE PRINCIPLE” can actually help us to figure out why.

## Proof :
So what we are going to do is to look at the consecutive pair of numbers and
record their remainders like for instance consider the case of n = 2 <br/>
(1, 1),(1, 2),(2, 3),(3, 5), · · · ⇒ (1, 1),(1, 0),(0, 1),(1, 1), · · · So our pigeons
are going to be the pairs of consecutive Fibonacci Numbers, <em>i.e.,</em> *(Fn, Fn+1)*.<br />
Note that we have infinite pigeons! <br/>
Our holes are going to be all possible pairs of remainders we can get after dividing by <em>'n'</em>
. We denote the pairs of remainders corresponding to (<em>F<sub>n</sub> , F<sub>n+1</sub> </em>)
by (<em>R<sub>n</sub> , R<sub>n+1</sub> </em>). <br/>
Holes − > {(*h*, *k*) | 0 ≤ *h* ≤ *n* − 1, 0 ≤ *k* ≤ *n* − 1}. <br/>
As there are n possibilities for each of the coordinates, we have total of n<sup>2</sup> possibilities. So we have n<sup>2</sup> holes.

  As there are more pigeons than the holes present by Pigeonhole Principle
we must have 2 different pairs having the same set of remainders.<br/>
So ∃m, n ∈ N such that (*F<sub>n</sub>*, *F<sub>n+1</sub>*) = (*F<sub>m</sub>*, *F<sub>m+1</sub>*) and *m < n* ⇒ *R<sub>m</sub> = R<sub>n</sub>*
and *R<sub>m+1</sub> = R<sub>n+1</sub><br/>*
Because any number is the sum of the previous 2 numbers in the sequence. Once
we know what remainders are for a pair we can actually find the remainder for
the subsequent number. But as first 2 remainders are same the next one also
be same.<br/>

⇒ *R<sub>m+2</sub> = R<sub>n+2</sub> <br/>*
But then this implies the very next pairs also repeat, i.e.,
(*F<sub>n+1</sub>, F<sub>n+2</sub>*) = (*F<sub>m+1</sub>, F<sub>m+2</sub>*). Recursively applying this argument our sequence of remainder will become eventually periodic. But note that given Fn
and *F<sub>n+1</sub>* we can also get *F<sub>n-1</sub>*. So by knowing the remainders for a pair we
can also find the remainder for the previous number.<br/>
Hence sequences of remainders become periodic.

## Remarks:
1) *n − m* actually is how far we need to go for repetition. We might go even
shorter to get repetition.
2) The period with which the sequence of Fibonacci numbers taken modulo n
repeats is known as the *n<sup>th</sup>* **Pisano Period**. Pisano periods are named after
Leonardo Pisano, better known as Fibonacci.
2