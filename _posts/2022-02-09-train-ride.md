---
title: "A train ride and a card trick"
subtitle: "the intriguingnature of numbers"
layout: post
author: Rahul Bhardwaj
header-style: text
date: 2022-02-09 17:00:00 +0530
mathjax: true
tags:
  - article
  - mathematics-in-focus
  - 21-card-game
  - modulus-arithmetic
  - fixed-point-mapping
---
# A train ride and a card trick
<div>
  <img src="/blog/media/post/2022-02-09-train-ride_img.jpeg" alt="four">
  <h1 style="margin-top: -20px">21 Cards </h1>
</div>



Rajdhani Express ~2012. I was going from Hyderabad to New Delhi, returning from my hometown. I didn't have a smartphone back then (I was ten, and it was 2012, of course I didn't). No Netflix to watch, no songs to listen to, no one my age to talk to; it was as boring as a train ride could get. It wasn't a jam-packed train, off-season, so that would make sense. I expected that nothing interesting would happen, and we would get off at Delhi and head home. But one thing happened on the train that day; some might say that it wasn't interesting at all, but I'll tell the story anyway because I am supposed to write a blog and because you still haven't stopped reading.

So, my dad started talking to this uncle about politics (obviously), and I was listening, pretending I understood anything they were talking about. Manmohan Singh's international relations didn't pique my 10-year-old interests, and I don't think you can blame me for that. Five minutes go by, 10 minutes go by, an hour goes by. Seeing how disinterested I looked, this uncle pulls out a deck of cards from his pocket and says I'll show you a magic trick. I couldn't say no to a magic trick, and realizing it would be more fun than Delhi's politics, I said yes. 

He now counts 21 cards from the deck, puts away the rest, spreads them on the table, and asks me to choose one of them and not tell him which one it is. He then gives me the set of cards and asks me to shuffle it. He then takes the pack and deals them out in three columns of 7 cards. He asks me which column my card is in, left, middle or right, and then collects the cards. He does this again. Deals the cards out in three columns of 7, asks me again which column my card is in, and collects the cards. He does this one more time.

Now he started dealing the cards one by one. "One," "Two," "Three"... and when he deals the 11th card and says, "Is this the one you chose?" and it was. He seemed confident that he could tell what card I chose, so I thought he must have somehow fooled me. A card under his sleeve, maybe he fabricated the deck. 

I asked him the trick. He gladly showed how he did it. He said that the trick was that whenever I told him which column my card was in, he put that column in between the other two, and then after doing that three times, the chosen card would always end up in the middle of the deck, which, for a 21 card deck would mean the 11th card.
I randomly stumbled upon this trick again a few months ago and tried to work out how it works. My immediate hunch was modular arithmetic and fixed points in a mapping, and it would turn out to be correct.
Enough of the story. I'll explain the trick and why it works.

We have 21 distinct cards to start with. Let's say the volunteer chooses the $3^{\text{rd}}$ card. 

You now place the cards row by row, so 1 goes in the first column, 2 goes in the second, 3 in the third and so on. Every element in a column has the same value $\text{mod}\ 3$.

|  1   |  2   |  3   |
| :--: | :--: | :--: |
|  4   |  5   |  6   |
|  7   |  8   |  9   |
|  10  |  11  |  12  |
|  13  |  14  |  15  |
|  16  |  17  |  18  |
|  19  |  20  |  21  |

Now, since $3$ is in the third column we place this column between the other two. So, now our new order of cards is,
$$
2, 5, 8, 11, 14, 17, 20, 3, 6, 9, 12, 15, 18, 21, 1, 4, 7, 10, 13, 16, 19
$$

Notice that $3$ is now in the eighth position. We do this again.

|  2   |  5   |  8   |
| :--: | :--: | :--: |
|  11  |  14  |  17  |
|  20  |  3   |  6   |
|  9   |  12  |  15  |
|  18  |  21  |  1   |
|  4   |  7   |  10  |
|  13  |  16  |  19  |

This time $3$ is in the middle column, we place this column between the other two. After doing this process twice our new order of cards is,
$$
2, 11, 20, 9, 18, 4, 13, 5, 14, 3, 12, 21, 7, 16, 8, 17, 6, 15, 1, 10, 19
$$
We do this one final time,

|  2   |  11  |  20  |
| :--: | :--: | :--: |
|  9   |  18  |  4   |
|  13  |  5   |  14  |
|  3   |  12  |  21  |
|  7   |  16  |  8   |
|  17  |  6   |  15  |
|  1   |  10  |  19  |

This time $3$ is in the first column, we place this column between the other two. Now the order is, 
$$
11, 18, 5, 12, 16, 6, 10, 2, 9, 13, 3, 7, 17, 1, 20, 4, 14, 21, 8, 15, 19
$$
$3$ is now in the $11\text{th}$ position as the 'magic trick' said it would be.

Why? Why does this work?

Consider the first iteration. In whichever column or row the selected card is in, after we place that column in the middle of the other two the only possible positions that the card can occupy are $8 - 14$.    

When we do this again, the cards in the $8-14$ position occupy the positions from 3rd row, 2nd column to 5th row, 2nd column. Now, if the card is in the first column, it will go to the $7+4 = 11$ or $7+5 = 12$ th positions in the deck. If the card is in the second column, it will go to $7+3 =10$ or $7+4=11$ or $7+5 = 12$ th positions in the deck. Similarly for the third column the card will go to either the $10$ th or the $11$ th position.

After doing the process twice me have managed to restrict the card to 10th-11th-12th positions. 

Spreading the cards again, we'll now realise the the 10th, 11th and 12th cards all lie in the 4th row. So when you collect the cards this time the selected card is bound to be in the $7+4$ that is the $11$ th position.

That's a lot of words. Let's write some mathematical expressions. Let $f(k)$ be the position where the $k$ th card goes after doing this process once.

Then it is easy to see that,
$$
f(k) = 7 + \left\lceil\dfrac{k}{3}\right\rceil \quad k \in \{1,2,3, \ldots, 21\}
$$
Let $n$ be the number of iterations of the process required to attain a fixed point $k_0$. Then observe that,
$$
\begin{align*}
f(k) &= \left\lceil\dfrac{k+21}{3}\right\rceil \\
f(f(k)) & = 7 + \left\lceil\dfrac{\left\lceil\dfrac{k+21}{3}\right\rceil }{3}\right\rceil 
 = 7 + \left\lceil\dfrac{k+21}{9}\right\rceil \\ 
& = 7 + \left\lceil 2 + \dfrac{k+3}{9}\right\rceil
= 9 + \left\lceil\dfrac{k+3}{9}\right\rceil \\
f(f(f(k))) &= 9 + \left\lceil\dfrac{\left\lceil\dfrac{k+21}{3}\right\rceil+3}{9}\right\rceil
= 9 + \left\lceil\dfrac{\left\lceil\dfrac{k+30}{3}\right\rceil}{9}\right\rceil \\
&= 9 + \left\lceil\dfrac{k+30}{27}\right\rceil = 10 + \left\lceil\dfrac{k+3}{27}\right\rceil \\ 
& = 10 + 1 = 11 \quad \quad \left\{\frac{4}{27} \leq \dfrac{k+3}{27} \leq \frac{24}{27} \implies \left\lceil\dfrac{k+3}{27} \right\rceil = 1\right\}
\end{align*}
$$
We get a fixed point. Any further application of the mapping will have no effect since $11$ maps to itself. 

A problem for the reader, can you find the fixed point and the number of iterations required for the case of $n_0\times3$ distinct cards? Additionally, can you prove  $\left\lceil\dfrac{\lceil m \rceil}{n}\right\rceil = \left\lceil\dfrac{m}{n}\right\rceil$?