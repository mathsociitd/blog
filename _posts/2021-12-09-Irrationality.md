---
title: "How to prove irrationality of n<sup>th</sup> root of any number"
subtitle: "<b>BONUS:</b> From over-killing with Fermat’s Last Theorem to ending up in bogus proof"
layout: post
author: "Aripra Kar and Shammi Malhotra"
header-style: text
date: 2021-3-09 23:17:34 +0530
plchart: true
mathjax: true
tags:
  - post
  - irrationality
---



## Introduction

An integer is either a perfect square or its square root is irrational. In a more general tone, when you compute the square root of an integer, there are either no figures to the right of the decimal or there are an infinite number of figures to right of the decimal and they don’t repeat. 

Similarly, we can talk about the n<sup>th</sup>root of an integer and the same argument follows.  

For the sake of convenience, let us evaluate our statement taking ‘2’ as our integer, which can then be generalized to any other positive number.  

### *&quot;Prove that $\sqrt[n]2$ is irrational for all $n\ge 2$, n $\in$ N&quot;* 

To answer the above problem, let us take the simple case of n=2 first. It can be proved that √2 is irrational, either by contradiction or by unique factorization. 

#### The proof by contradiction goes as follows:

<div style="background-color:#f1f1f1;margin: 0 3px;padding:6px;">
Assume that $\sqrt 2$ is a rational number. So, it can be expressed in the form $p/q$ where $p, q$ are co-prime integers and $q \ne 0$. <br />

So, $\sqrt 2 = p/q$  &nbsp; &nbsp;[Here $p$ and $q$ are coprime numbers and $q \ne 0$] <br />

Solving, we get, <br />

<center>
$\sqrt 2 = p/q$<br />
</center>

On squaring both the sides we get, <br />

<center>
$\Rightarrow 2 = (p/q)^2$<br />

$\Rightarrow 2q^2 = p^2$ <div style="float:right;margin-right:4px;">&nbsp; (<a name="1.1">1</a>) </div><br />

$p^2/2 = q^2$ <br />
</center>
So, $2$ divides $p$ and $p$ is a multiple of $2$. <br />

<center>
$\Rightarrow p = 2m $ <br />

$\Rightarrow p^2 = 4m^2$ <div style="float:right;margin-right:4px;">&nbsp; (<a name="1.2">2</a>) </div><br />
</center>

From equations (<a href="#1.1">1</a>) and (<a href="#1.2">2</a>), we get, <br />
<center>
$\Rightarrow 2q^2 = 4m^2$ <br />

$\Rightarrow q^2 = 2m^2$ <br />

$\Rightarrow q^2$ is a multiple of $2$ <br />

$\Rightarrow q$ is a multiple of $2$ <br />
</center>
Hence, $p,q$ have a common factor $2$.  <br />


This contradicts our assumption that they are co-primes. Therefore, $p/q$ is not a rational number, <br />

<b>$\sqrt 2$ is an irrational number.</b>

</div>

#### Proof by unique factorization:
As with the proof by infinite descent, we obtain $a^2=2b^2$. Being the same quantity, each side has the same prime factorization by the [_fundamental theorem of arithmetic_](https://en.wikipedia.org/wiki/Fundamental_theorem_of_arithmetic), and in particular, would have to have the factor $2$ occur the same number of times. However, the factor $2$ appears an odd number of times on the right, but an even number of times on the left *—a contradiction*. 

Next, *for all $n>2$*, the proof is not so familiar for us.  

We could either use  *Euclid*’s  arguments or invoke the  rational root theorem to prove the statement. 

One way to prove it is to use exactly the same idea as for proving the square root of $2$ is irrational: Suppose $\sqrt[n]2 = \frac{p}{q}$, with $p$ and $q$ integers, relatively prime. Then $p^n=2q^n$. Now think about the prime factorizations: every prime that divides $q$ must divide $p$, but $p$ and $q$ are relatively prime, so $q=1$. That means that we must have $p^n=2$ with $p$ an integer. That is, the only way for the $n^{th}$ root of $2$ to be a rational is if $2$ is a $n^{th}$ power of an integer, which is not true. So, <b>$\sqrt[n]2$ is irrational</b>.


Alternatively, we can use the **Rational Root Test**: An $n^{th}$ root of $2$ is a root of the polynomial $x^n-2$. But a rational root of a polynomial with integer coefficients that is written in lowest term $\frac{p}{q}$ must have denominator $q$ that divides the leading coefficient and numerator $p$ that divides the constant coefficient. So, any rational root of  
$x^n-2$ must be an integer.

 

The above arguments can be extended to any integer $k$. In fact, for every integer $k$ and every $n>1$, the $n^{th}$ root of $k$ is either an integer or irrational. The only way for the $n^{th}$ root of $k$ to be a rational is if $k$ is an $n^{th}$ power of an integer. 

 

## Bonus Section: 

So as promised in this section we will see how **Fermat’s Last Theorem (FLT)** was used to paradoxically prove the irrationality of $\sqrt[n]2$ for $n\ge3$. 

First of all, let us recall Fermat’s Last Theorem: 

> In [_number theory_](https://en.wikipedia.org/wiki/Number_theory),  **_Fermat's Last Theorem_** (sometimes called  _**Fermat's conjecture**_, especially in older texts) states that no three  [_positive integers_](https://en.wikipedia.org/wiki/Integer)  $a$, $b$, and $c$ satisfy the equation  $a^n + b^n = c^n$  for any integer value of $n>2$. The cases $n = 1$ and $n = 2$ have been known since antiquity to have infinitely many solutions.

Suppose for sake of contradiction, assume that $\sqrt[n]2$ is not irrational. Then $\sqrt[n]2$ is a rational number. Since $\sqrt[n]2$ is positive by definition, there exists positive integers p and q (if both were negative, we could multiply both the numerator and denominator by −1) such that $\sqrt[n]2$=p/q. 

Then we have $\big(\frac{p}{q}\big)^n=2$. Since $q\ne0$, this would imply $p^n=2q^n$. Therefore, we have  $p^n=q^n + q^n$. 

But, by Fermat's last theorem, the equation $p^n=q^n + q^n$ cannot hold for any positive integers as $n>2$. 

This is a contradiction. Thus, we cannot have $\sqrt[n]2$ as a rational number if $n \in \mathbb{N} (>2)$. 

Therefore, **$\sqrt[n]2$ is an irrational number.**

 

Unfortunately, it turns out that this argument is circular as some step of the proof of FLT in turn requires the Euclid’s Style proof that  $\sqrt[n]2$ is irrational.  

