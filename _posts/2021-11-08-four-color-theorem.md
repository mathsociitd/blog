---
title: "Four Color Theorem"
subtitle: "A summary of FOUR COLOR THEOREM ."
layout: post
author: Vinita Meena
header-style: text
date: 2021-11-08 17:00:00 +0530
mathjax: true
tags:
  - article
  - mathematics-in-focus
  - four-color-theorem
  - graphs
  - computing
---

<div>
  <img src="/blog/media/post/2021-11-08-four-color-theorem_img2.PNG" alt="four">
  <h1 style="margin-top: -20px"> COLOR THEOREM </h1>
</div>

## **INTRODUCTION**

Hello everyone, here we are going to talk about the famous mathematical theorem, FOUR COLOR THEOREM.  

The four-color theorem is an outstanding example of how old ideas combine with new discoveries and techniques in different fields of mathematics to provide new approaches to a problem. It is also an example of how an apparently simple problem was through to be solved but then become more complex and it is the first spectacular example where a computer was involved in proving a mathematical theorem.   


<div style="line-height:10px">
<img align = "center" src = "/blog/media/post/2021-11-08-four-color-theorem_img1.PNG" alt = "nothing">
</div>

The four-color theorem which is also called the FOUR-COLOR MAP THEOREM AND GUTHRIE’S PROBLEM after F. GUTHRIE, who first conjectured the theorem in 1852  So, the theorem originally posed in 1852 and not solved until 1976.  

## **MOTIVATION**

The four-color theorem is easy to understand by its statement but the proof of this theorem is so complicated. The theorem states, “any map in a plane can be colored using four colors in such a way that region sharing a common boundary other than a single part do not share the same color.”  

The theorem was conjectured in 1852 when the mathematician Guthrie was coloring the maps of countries of England and then he noticed that he only needed to use four colors so that no two touching countries with the same color, he also wondered whether this was the case with all maps. And if so then what was the reason? After it he told his brother Frederick (also a mathematician) about this four-color problem and if so, WHY? But he didn’t think that his question would go unanswered for a hundred years and proved in 1976 by WOLFGANG HAKEN and KENNETH APPEL at the university of Illinois but the only problem was no one could understand it. This is why because they proved it with the aid of a computer program, they reduced the problems to a number of specific cases and wrote a computer program to each case.   

But first, to understand the proof of this theorem, we have to look out the proof of an easier problem, THE FIVE COLOR THEOREM. And the interesting thing is, it’s pretty much exactly the same as four color theorems just with five colors.   

Basically, it states, “any map in a plane can be colored using no more than five colors in such a way that no two adjacent regions receive the same color”.  

Now, in mathematics, we have three techniques to prove a theorem are induction, invariance and contradiction. But this proof involves all three, it’s exciting so let’s see.   

By induction: so first, the graph with one vertex can be colored using no more than five colors and it is easy to see. Now we will prove that whatever rung we are on, we can always get to the next one. Here that would be assuming that a graph with $n$ vertices is five colorable, prove that a graph with $n + 1$ vertices is still five colorable. So, let’s assume a graph of $n + 1$ vertices, if we remove a vertex, it becomes a graph with $n$ vertices. And we assumed that graphs with $n$ vertices can be colored with just five colors. So, now let’s see if we can call this graph in such a way that when we add the vertex back, it’s still five colorable. Then we’ll have proven that if a graph with $n$ vertices is five colorable, we can always make the jump to $n + 1$. But how can we make sure that we can add a fifth color? It would be good if we could find a vertex with four neighbors then we would be guaranteed to have a fifth color free. Unfortunately, some graphs have a vertex with just four neighbors but we are going to show in a bit that all graphs have a vertex with five neighbors and that’s will be enough.   

*By invariant*: here, let’s take the Euler characteristic. It is a rule for every connected planer graph,  

i.e.                            <center> $ v – e + f = 2 $ </center>        { where: e = edges, v = vertices and f= faces}  

*By contradiction*: Let’s assume that, in fact every vertex needs to have a minimum of six neighbors and there can’t be any with five or less. There needs to be at least three times the numbers of edges as vertices because every edge is shared between two vertices.  

​                                 <center> $ 3v \leq e $ </center>                        

Now, we need to prove that this assumption results in a contradiction.  

Since, we know by the Euler’s theorem:  

​                        <center> $ v – e + f = 2  $ </center>                     

And the all faces must have at least three edges then:  

​                         <center> $      f \leq  2/3e    $ </center>

now, we get:  

​                        <center> $ v – e + 2/3e \geq 2 $ </center>

​                        <center> $    v – 1/3e \geq 2 $ </center>

​                        <center> $      e \leq 3v – 6 $ </center>

i.e.                 <center> $ -6 \geq e – 3v $ </center> 

 

Thus, we get this contradiction that:  

​                      <center> $  -6 \geq e – 3v \geq  0 $ </center>

So, our assumption that the minimum no. of neighbors is $6$, is wrong and thus, we get that the vertex with the minimum no. of neighbors is five or less.  

After this, we will use here the above proof by induction which is if a graph with $n$ no. of vertices is five colorable, a graph of $n + 1$ vertices is also five colorable. However, this is only possible if there is always at least one vertex with five neighbors or less. And we have proved here by assuming that the opposite was true and showing that it contradicts with the Euler’s characteristics. Hence, the five-color theorem is proved.   

Now, come back into the proof of four-color theorem, the proof of this theorem was $60$ pages long but basically, we imagine that graphs are separated into two categories, first, that can be covered with four colors on less and second, that need five colors.  

We already showed that all maps need a minimum of five colors. And maybe there are some maps which can be colored with just four colors.  

So, what Appel and Haken needed to do was show that all graphs exist in the above first category and they did this by proof of contradiction.  

Here, they used a property that all graphs have a certain property guaranteeing that we can reduce them in size. Basically, it means, if they start with five colors, we can always make the number of vertices smaller while still needing five colors. But of course, if we keep making the graph smaller, we’ll eventually end up with a graph with four or less vertices and therefore four colorable.  

So, that means that if all these graphs did in fact have this special property of reducibility, they would all have to started with first category of graphs. The hard part was proving that old graphs on the five-color side, do indeed have this special property. The strategy that they used was to share that every graph of second category would have to contain one of $2000$ configurations, guaranteeing the property. Checking them by hand would have been very time consuming. They needed a computer to do it and after over a thousand hours of computation, finally they had their answer that is YES.., no more than four colors are required to color the regions of any map so that no two adjacent regions have the same color.  

Hence, the four-color theorem is proved.  

### Remarks  

1. The proof of the four-color theorem is much difficult than five color theorem, and six color theorems as we can see above.  

2. The mathematics community had a lot of trouble accepting this as a proof. Because it is not easy to proof without computer. But since than many more mathematical proofs have been provided by computers, for example the proof of Boolean Pythagorean triples problem.  

### References 

1. [EVERY PLANER MAP IS FOUR COLORABLE; PART II: REDUCIBILITY, By K. Appel, W. Haken, and J. Koch](https://drive.google.com/file/d/16sPURpm-9QwEro8VmL27MOYzvzPsSMlu/view)
2. [THE FIVE-COLOR THEOREM written by Moti Ben-Ari.](https://drive.google.com/file/d/16q6Q25OS_nb-Q1L8W2i4vJnz4a9ZvAZ2/view) 