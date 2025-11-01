Of course. This article serves as the "manifesto" or series introduction, setting the stage for the other deep dives. It's fascinating to see how the author summarizes concepts he explores in more detail elsewhere, establishing his framework and intellectual authority from the outset.

Here is the completed stylistic analysis for "Not-so-easy AI problems."

***

# Stylistic Analysis: Not-so-easy AI problems

## I. Structural & Organizational Analysis

| Element | Description/Examples (Quote an Example) |
| :--- | :--- |
| **Pacing** | **Manifesto Pacing.** The article moves with the deliberate pace of a professor outlining a course syllabus. It begins with a casual, personal introduction, then gets down to business, methodically listing out the core problems and providing a concise overview of the first one. It's structured for clarity and agenda-setting. |
| **Section Flow** | **Extremely explicit signposting.** The structure is built around a clear, numbered list which acts as a roadmap for the entire series. The author tells you what he's going to do, does it, and then tells you what he'll do next. Quote: *"I’ve put these roughly in order of difficulty, and in this **AI critique** , I’ll unpack the first one: **embodied cognition.**"* |
| **Introduction Technique** | **Rapport-Building + Thesis Statement.** He starts with an informal, personal update ("Hey! It’s summer time!") to engage his regular audience, then immediately pivots to a strong thesis for the series: to provide *"an antidote to the constant barrage of AI-generated marketing slop."* |
| **Conclusion Technique** | **Functional Teaser / Cliffhanger.** The conclusion is purely structural, designed to ensure continued readership. It explicitly states the topic of the next article in the series, acting as a direct call to return. Quote: *"In the next article in this series I’ll unpack the second hard problem: social constructs."* |

## II. Rhetorical & Voice Analysis

| Element | Description/Examples (Quote an Example) |
| :--- | :--- |
| **Tone** | **Authoritative and Didactic.** The tone is that of an expert setting the terms of the debate. It is confident, grounded, and positions itself as a source of sober realism against a backdrop of hype. |
| **Author Persona** | **The Expert Curator / Professor.** In this piece, he acts as the knowledgeable guide for the series. He's not just arguing a single point; he's curating and defining an entire field of problems, establishing his intellectual framework from the start. He reinforces this by citing his own long-term experience in the field. |
| **Use of Humor** | **Understated & Online-savvy.** The humor is light, seen in the recurring, slightly self-deprecating reference to the real world as the land of "grass-touching," and the playful heading, "Look Ma, No Hands!" |
| **Rhetorical Devices** | **Taxonomy as Argument.** His primary rhetorical device is the act of **classification** itself. By creating a structured list of "Four Hard AI Problems," he frames the entire conversation, asserting his authority and providing readers with a mental model to understand AI's true limitations. |
| **Audience Relationship** | **Professor to an Eager Class.** He treats the reader as an intelligent person who is ready to move beyond the superficial hype and engage with a more rigorous, structured analysis of the topic. |

## III. Sentence-Level & Lexical Analysis

| Element | Description/Examples (Quote an Example) |
| :--- | :--- |
| **Sentence Length** | A characteristic mix of longer, explanatory sentences (e.g., detailing the history of generative models) and short, punchy statements that deliver his main points with clarity and force. |
| **Paragraph Length** | Consistently short and digestible. Each paragraph is laser-focused on a single idea, which is crucial for an article that is laying out a complex, multi-part argument. |
| **Vocabulary** | **Accessible Expertise.** He continues his "high/low diction" style, using technical terms like "proprioceptive," "RBMs," and "GANs" in a way that signals expertise, but immediately grounding the overall argument in simple, memorable phrases like "grass-touching" and "boring miracles." |
| **Formatting** | **Highly Structured for Clarity.** The **numbered list** is the central organizing principle of the entire piece. Bolding is used not just for emphasis, but to clearly demarcate the key concepts of his framework. |
| **Citation/Grounding** | Consistent use of embedded hyperlinks to his own past projects, academic papers, and cultural touchstones. This serves his dual purpose of demonstrating long-term expertise and providing evidence for his claims. |

## IV. Key Takeaways on Style

*   **Signature Move:** The **"Intellectual Framework."** The most defining feature of this article is its function as an agenda-setter. The author isn't just making an argument; he is creating and defining the entire intellectual territory for the series. The act of creating this four-part taxonomy is a powerful move to frame the debate on his own terms.

*   **Best Example:** This concluding paragraph is a perfect distillation of his entire worldview and style. It contrasts high-status intellectual labor with undervalued physical labor, uses a powerful analogy (Collatz Conjecture vs. a box), and coins a brilliant, memorable phrase that encapsulates his core philosophy.
    > "It might seem “harder” to prove the [Collatz Conjecture](https://en.wikipedia.org/wiki/Collatz_conjecture) that it is to put a box on a shelf, but stripped to the studs, a math proof is a matter of arranging a small number of ink molecules on a thin sheet of cellulose. Moving the box is a tremendously greater physical change. We just don’t value it because it’s a boring miracle that every kid can do."

***

# Not-so-easy AI problems - by Patrick Watson

[![](https://substackcdn.com/image/fetch/$s_!SxJH!,w_1456,c_limit,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F3c9d22bb-3dde-4bbe-b23a-77c27c0cb73f_1536x1024.png)](https://substackcdn.com/image/fetch/$s_!SxJH!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F3c9d22bb-3dde-4bbe-b23a-77c27c0cb73f_1536x1024.png)

**Hey! It’s summer time!
**
That means I’ve got a break from teaching, and I’m likely to start writing a few more posts than usual! I’ve really been enjoying working on the podcast with Katie, and that’s going to continue (we’ve got a few more great episodes already in production). But you can also look forward to much more frequent blog updates. Oh look—who dropped this subscriber button here?

Subscribe

To kick off the summer series, I’ve planned a set of articles called **Not-So-Easy AI Problems**. In this series, I’m going to describe four problems I think AI is likely to struggle with. I think it’s a useful antidote to the constant barrage of AI-generated marketing slop from companies selling machines that generate AI marketing slop. Large, generative models like [ChatGPT](https://chat.openai.com/auth/login) and [Midjourney](https://www.midjourney.com/home/) are great for churning out internet [content](https://www.youtube.com/watch?v=iE39q-IKOzA), and this has created a big stir _on the internet_ about AI. It’s sometimes easy to forget that out in the world of grass-touching there are a lot of skills that AI is still hopelessly bad at.

So without further ado:

###  Four Hard AI Problems

There are the four domains that I think are hard for current AI models:

  * 1\. Embodied cognition

    * Sensing and moving a physical body around in space.

  * 2\. Social constructs

    * Understanding the boundaries of concepts that are made real by collective agreement rather than physical reality.

  * 3\. Non-local information

    * Knowing the details of things you haven’t observed.

  * 4\. Combinatorics

    * Manipulating sets and systems.




I’ve put these roughly in order of difficulty, and in this **AI critique** , I’ll unpack the first one: **embodied cognition.**

#### Embodied cognition


The recent AI discourse is almost all a response to the commercialization of some deep-generative models that have actually been around for quite some time. [Here’s Geoff Hinton talking about them back in 2007.](https://www.youtube.com/watch?v=AyzOUbkUf3M) These models didn’t have quite the spectacular performance they do now, but OpenAI released [GPT2](https://openai.com/research/gpt-2-6-month-follow-up) in 2018, and I used a version of it to make [interactive fiction](https://prof-watson.itch.io/the-predictive-edda) back in 2019. [Attentional transformers](https://machinelearningmastery.com/the-transformer-attention-mechanism/) like ChatGPT are part of a larger technical march toward progressively better generators using clever techniques like [RBMs](https://en.wikipedia.org/wiki/Restricted_Boltzmann_machine), and [GANs](https://en.wikipedia.org/wiki/Generative_adversarial_network).

Importantly, these techniques attempt to capture the statistics of text and images. None of them attempt to model the physical states of affairs to which text and images refer. This is unintuitive: we don’t perceive media as the result of token prediction. We imagine light hitting a camera or a person telling a story. It seems so impossible that math can be used to write a poem that it’s easier to pretend what the bots are doing is analogous to human “writing.” It’s somewhat surprising to realize how closely real physical processes map onto the structure of text or photos.

But it’s even more interesting to look at where the AI disagrees with our intuitions.

#### Look Ma, No Hands!

Everyone knows that AI struggles to draw hands. But why is it so bad? There are tons of pictures of hands. But we humans don’t just understand our hands by looking at them, we understand our hands by _using_ them.

Much of human (and animal, and robot) cognition is embodied. That is, the reasoning and representations used by our brains (or animal brains, or robot brains) refer to the particular sensory-motor assemblies we operate: aka, our bodies. Each body is different, and each body-moving algorithm needs to be adapted to the context of a specific body. If you try to apply a model trained to drive my body to a different body, the model will fail in predictable ways.

You probably experienced this yourself if you ever went through a major growth spurt. Suddenly you were very clumsy, as your body tried to reach out for things with arms slightly longer than your brain was used to. This is still a statistical problem! The motor transforms your brain uses to operate your muscles have parameters that can be estimated by exactly the same kind of models that currently work for text and images.

However, there are two major stumbling blocks. First, AI researchers are data-poor: the amount of motor data that has been collected and digitized—such as joint position, muscle load, and other proprioceptive information—is minuscule compared to digitized text and images. Second, the motors and sensors required to generate and collect such data are far harder to come by than keyboards and cameras.

Current robotic systems mostly work by running specific macros for reaching and movement, which are incredibly tightly adapted to the specific system. They rarely include feedback sensors beyond the load data coming out of their own servomotors, perhaps coupled with an occasional accelerometer or gyroscope.

This is beginning to change! There are a number of new avenues in [robotics](https://www.technologyreview.com/2024/04/11/1090718/household-robots-ai-data-robotics/) research using generative techniques that seem very promising. What’s more, roboticists are rapidly developing new sensors, materials, and tools that provide a better sense of their machines’ position in space. It’s also not entirely clear that this needs to be solved the same way humans do (with lots of sensors embedded in joints and muscle tissue). Many robots use clouds of infrared light to estimate limb position. This all means we’re going to see increasingly sophisticated robot movement—but that rollout is likely to follow the timescale of a big hardware project (ten to thirty years), rather than just downloading some software (one to five years).

And that should be pretty obvious. Do you have a smartphone? Cool, you can use ChatGPT. Do you have a robot? Well, you’ll need one before you can do AI robot stuff.

#### What a Body’s for

But there’s more to embodied cognition than just “moving your body around in space.” For humans and animals, the most important sensory-motor loops are actually chemical. Olfaction and gustation are the obvious ones, but even more critically important are the internally-facing sensors that measure glucose, blood pressure, hydration, electrolytes, circulating lipids, temperature, and so on. Most critical of all are nociceptors—pain detectors.

I had a colleague at UIUC who got an [iCub](https://en.wikipedia.org/wiki/ICub) humanoid robot that he hoped to teach to speak. He spent the first three years just trying to make sure it didn’t rip off it’s own very expensive arms.

As [Rodney Books](https://en.wikipedia.org/wiki/Rodney_Brooks) at MIT famously pointed out, all of these embodied sensory-motor loops are hard to build, and they’re evolutionary older than anything cognitive. It’s not an insurmountable challenge, but it took evolution _billions_ of years to make pain sensors, and only a few hundred million to get from pain sensors to brains capable of calculus. The fact that AI has stumbled into competence at calculus and language is not actually proof of sophistication. We should be realistic about the difficulty of the embodied engineering challenge.

Again, I think we’re on our way! The technologies are actively being developed, and the important data and the tools for collecting it are being filled in. I think we are somewhere between a few and several decades from robots with sophisticated adaptable bodies. Although they unlikely to be humanoid. Why stick to one body plan? How many humanoid body plans do you see in nature? Better to be like JPL’s rad [SnakeBot](https://www.jpl.nasa.gov/news/jpls-snake-like-eels-slithers-into-new-robotics-terrain/).

And this diversity of bodies is itself part of the problem. No matter how good your model is, it only works for the body it learned to control. Each different body requires a new dataset, or at least some fine-tuning. Tiny differences in friction in joints lead to extremely clumsy fingers. And unlike generating language where the bar is pretty low, human manual dexterity is an absolute marvel in the animal world. It took me 20 years to learn and I’m still clumsy.

Building working bodies is a _harder_ problem than generating working brains. While there’s no major roadblock, this is a decades-long engineering problem that will eventually produce results that still have non-zero fine-tuning costs.

#### Boring Miracles

One of the major reasons that it’s hard to convince folks that rapid advances in software do not imply advances in hardware is that we live in a culture that tends to reward intellectual labor with more than physical labor. But markets reward rarity, not difficulty.

It might seem “harder” to prove the [Collatz Conjecture](https://en.wikipedia.org/wiki/Collatz_conjecture) that it is to put a box on a shelf, but stripped to the studs, a math proof is a matter of arranging a small number of ink molecules on a thin sheet of cellulose. Moving the box is a tremendously greater physical change. We just don’t value it because it’s a boring miracle that every kid can do.

Thanks for reading How to Get Smarter With Neuroscience! This post is public so feel free to share it.

[Share](https://howtogetsmarter.substack.com/p/not-so-easy-ai-problems?utm_source=substack&utm_medium=email&utm_content=share&action=share)

#### Next time: It’s true because I say so.

In the next article in this series I’ll unpack the second hard problem: social constructs.
