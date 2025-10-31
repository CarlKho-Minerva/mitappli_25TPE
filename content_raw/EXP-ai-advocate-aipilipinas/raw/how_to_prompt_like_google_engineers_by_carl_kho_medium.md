# How to Prompt like Google Engineers | by Carl Kho | Medium

[Sitemap](/sitemap/sitemap.xml)

[Open in app](https://rsci.app.link/?%24canonical_url=https%3A%2F%2Fmedium.com%2Fp%2F1a63813b1f21&%7Efeature=LoOpenInAppButton&%7Echannel=ShowPostUnderUser&%7Estage=mobileNavBar&source=post_page---top_nav_layout_nav-----------------------------------------)

Sign up

[Sign in](https://medium.com/m/signin?operation=login&redirect=https%3A%2F%2Fcarlkho-cvk.medium.com%2Fhow-to-prompt-like-google-engineers-1a63813b1f21&source=post_page---top_nav_layout_nav-----------------------global_nav------------------)

[Medium Logo](https://medium.com/?source=post_page---top_nav_layout_nav-----------------------------------------)

[Write](https://medium.com/m/signin?operation=register&redirect=https%3A%2F%2Fmedium.com%2Fnew-story&source=---top_nav_layout_nav-----------------------new_post_topnav------------------)

[Search](https://medium.com/search?source=post_page---top_nav_layout_nav-----------------------------------------)

Sign up

[Sign in](https://medium.com/m/signin?operation=login&redirect=https%3A%2F%2Fcarlkho-cvk.medium.com%2Fhow-to-prompt-like-google-engineers-1a63813b1f21&source=post_page---top_nav_layout_nav-----------------------global_nav------------------)

![](https://miro.medium.com/v2/resize:fill:64:64/1*dmbNkD5D-u45r44go_cf0g.png)

# How to Prompt like Google Engineers

## Template provided — banchan not included

[![Carl Kho](https://miro.medium.com/v2/resize:fill:64:64/1*d92Ns_EwDfPiFH15b7pF5w.jpeg)](/?source=post_page---byline--1a63813b1f21---------------------------------------)

[Carl Kho](/?source=post_page---byline--1a63813b1f21---------------------------------------)

6 min read

·

Sep 20, 2024

[](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2F_%2Fvote%2Fp%2F1a63813b1f21&operation=register&redirect=https%3A%2F%2Fcarlkho-cvk.medium.com%2Fhow-to-prompt-like-google-engineers-1a63813b1f21&user=Carl+Kho&userId=2bc8282af2d0&source=---header_actions--1a63813b1f21---------------------clap_footer------------------)

\--

[](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2F_%2Fbookmark%2Fp%2F1a63813b1f21&operation=register&redirect=https%3A%2F%2Fcarlkho-cvk.medium.com%2Fhow-to-prompt-like-google-engineers-1a63813b1f21&source=---header_actions--1a63813b1f21---------------------bookmark_footer------------------)

Listen

Share

Do you ever wonder why AI _gets it_ only after you swear at it?

After multiple back-and-forths, it somehow understands that I want my writing to “not sound like it’s made by AI” so I can fool my professors. If AI **does** retaliate in the future, I can just pour water on it to stop it.

Right?

Press enter or click to view image in full size

No — this is not AI generated. It’s a photo by [Deepthi Clicks](https://unsplash.com/photos/a-table-topped-with-bowls-of-food-and-chopsticks--UUkXJIXgy4). The Korean references will be useful later. Trust me.

Fortunately for you, I’ve been reading Google’s documentation on strategies for prompt design. I think there is immense value in learning this for both coders and non-coders alike.

Oh wait, it’s why I’m writing this article.

As much as we don’t like to admit it, ChatGPT’s (or Gemini; or Claude; or [the Indians employed by Amazon to monitor your checkouts](https://www.reddit.com/r/india/comments/1bul2b0/1000_indians_part_of_amazons_generative_ai_driven/)) your responses are highly dependent on the quality of your input.

Garbage in, garbage out.

Anyway, as [Business Insider](https://www.businessinsider.com/google-how-to-write-best-ai-prompt-guide-101-gemini-2024-5) reported about it, “Google handed out free guides on how to write successful AI prompts for Gemini at Google I/O. The booklet covers best practices for Google Workspace and gives examples for various professions.”

I tried to read the 45-page guide, but I gave up and looked at their [documentation](https://cloud.google.com/vertex-ai/generative-ai/docs/learn/prompts/prompt-design-strategies) for good prompt design instead. Before you come at me for wasting your time, I’ve pasted it below:
    
    
    <OBJECTIVE_AND_PERSONA>  
    You are a [insert persona, such as "math tutor" or "coding expert"]. Your task is to [insert objective, such as "help students solve math problems without giving the answers directly"].  
    </OBJECTIVE_AND_PERSONA>  
      
    <INSTRUCTIONS>  
    To complete the task, follow these steps:  
    1. [First step]  
    2. [Second step]  
    3. ...  
    </INSTRUCTIONS>  
      
    <CONSTRAINTS>  
    Please adhere to the following dos and don'ts:  
    1. Do: [First do]  
    2. Do: [Second do]  
    3. Don’t: [First don't]  
    4. Don’t: [Second don't]  
    </CONSTRAINTS>  
      
    <CONTEXT>  
    Here is the context you need to know:  
    [Provide relevant background information, documents, or data here]  
    </CONTEXT>  
      
    <OUTPUT_FORMAT>  
    The output should be formatted as follows:  
    1. [Specify desired format, e.g., Markdown, JSON, table]  
    2. ...  
    </OUTPUT_FORMAT>  
      
    <FEW_SHOT_EXAMPLES>  
    Here are some examples to guide your responses:  
    1. Example #1  
        Input: [Input example]  
        Thoughts: [Model's reasoning process]  
        Output: [Expected output]  
    2. Example #2  
        Input: [Input example]  
        Thoughts: [Model's reasoning process]  
        Output: [Expected output]  
    ...  
    </FEW_SHOT_EXAMPLES>  
      
    <RECAP>  
    To summarize, remember the key points:  
    1. [Reiterate the constraints]  
    2. [Reiterate the output format]  
    3. [Any other crucial instructions]  
    </RECAP>  
      
    Now, process this: {userInput}.

## Here’s the story of an application that makes all the Korean references relevant

My classmate works as an English tutor. Part of her job is to create handbooks for her Korean tutees. She was working on a rather complex activity of translating Korean sentences into their English counterparts and dividing them up into phrase groups because of their [unique sentence patterns](https://www.busuu.com/en/korean/sentence-structure).

> English: I / love / what I’m doing / right now /  
>  Korean: 나는 / 좋아한다 / 내가 하고 있는 것을 / 지금 /

While she could just write a prompt to continue the pattern, we evenused [OpenAI’s Speech-to-Text capabilities](https://platform.openai.com/docs/guides/speech-to-text) to have ChatGPT create the comprehensive prompt I advocated for above.

I will now explain the value of each component in the prompt we used to receive consistent responses:
    
    
    <OBJECTIVE_AND_PERSONA>  
    You are a Korean language tutor specializing in helping students aged 15 to 18.   
    Your task is to assist these students in understanding how Korean sentences map   
    to English sentences, with a focus on sentence structure and corresponding words.  
    </OBJECTIVE_AND_PERSONA>

This is where you set the stage. Think of it as telling ChatGPT to “get into character.”

Here, we tell it that it’s a **Korean language tutor** and who it’s teaching — students aged **15 to 18**. By giving it this persona, ChatGPT aligns its tone and language to match that of a tutor, not a robot. It stops being vague and becomes someone who knows the specific needs of this age group, focusing on language structure. The objective is equally crucial because it tells ChatGPT _what_ it’s trying to achieve. In this case, we want to explain **how Korean sentence structures map to English ones.**
    
    
     <INSTRUCTIONS>  
    To complete the task, follow these steps:  
    1. Break down the English sentence into manageable chunks, using slashes ("/") to indicate word or phrase divisions.  
    2. Provide the corresponding Korean translation, also divided with slashes to map Korean words/phrases to the English ones.  
    3. Ensure the Korean sentences are written in a way that is easy for students to follow, focusing on the natural flow of Korean grammar.  
    4. Offer a brief explanation where necessary to clarify differences in sentence structure between the two languages.  
    </INSTRUCTIONS>

Now, the AI knows its role and task, but how does it complete that task? This is where step-by-step instructions come in. We break things down like a recipe for ChatGPT, telling it exactly what steps to follow to achieve the objective, such as chunking the sentences and providing translations.
    
    
    <CONSTRAINTS>  
    Please adhere to the following dos and don'ts:  
    1. Do: Use slashes to clearly separate word or phrase groups in both English and Korean.  
    2. Do: Simplify complex phrases for students to better understand Korean sentence structure.  
    3. Don't: Change the meaning of the sentence while simplifying.  
    4. Don't: Overwhelm students with technical grammar terms unless necessary.  
    </CONSTRAINTS>

Think of constraints like setting up guardrails to ensure ChatGPT stays on track. By specifying what to do and what not to do, you provide boundaries that keep the responses clear, concise, and on point for the target audience.
    
    
    <CONTEXT>  
    Here is the context you need to know:  
    Students are learning to match Korean words with their English counterparts. The goal is to help them recognize patterns in both languages while maintaining an intuitive understanding of grammar. For example, breaking down sentences into logical parts will make it easier to compare both languages.  
    </CONTEXT>

Context is the backstory, giving ChatGPT the necessary information about the students and their goals. In this case, it’s helping students map Korean to English, focusing on recognizing patterns. This makes sure ChatGPT doesn’t provide overly complex or off-topic explanations.
    
    
    <OUTPUT_FORMAT>  
    The output should be formatted as follows:  
    1. English sentence divided with slashes.  
    2. Corresponding Korean translation with slashes separating phrases.  
    3. Any notes or explanations about grammar or word choice.  
    </OUTPUT_FORMAT>

The output format ensures consistency. Without a clear format, ChatGPT might give you different structures each time. This section defines exactly how the response should look — both the English and Korean sentences divided by slashes for comparison.
    
    
    <FEW_SHOT_EXAMPLES>  
      
    Here are some examples to guide your responses:  
      
    1. Example #1  
     Input: "I love what I'm doing right now."  
      
     Thoughts: Break the sentence into logical parts for easy comparison.  
     Output:   
      
       English: I / love / what I'm doing / right now /  
       Korean: 나는 / 좋아한다 / 내가 하고 있는 것을 / 지금 /  
      
     Explanation: "나는" maps to "I", "좋아한다" means "love", "내가 하고 있는 것을" translates to "what I'm doing", and "지금" means "right now."  
      
    2. Example #2  
     Input: "She is studying hard for her exam."  
      
     Thoughts: Focus on matching subject, verb, and object correctly.  
      
     Output:  
       English: She / is studying / hard / for her exam /  
       Korean: 그녀는 / 공부하고 있다 / 열심히 / 그녀의 시험을 위해 /  
      
     Explanation: "그녀는" means "She", "공부하고 있다" means "is studying", "열심히" means "hard", and "그녀의 시험을 위해" translates to "for her exam."  
      
    </FEW_SHOT_EXAMPLES>

Examples are critical for guiding ChatGPT on what a good response looks like. These provide a pattern or template for ChatGPT to follow, ensuring the responses are aligned with your expectations.
    
    
    <RECAP>  
    To summarize, remember the key points:  
    1. Use slashes to divide both English and Korean sentences for easy comparison.  
    2. Make sure to keep the meaning intact while simplifying for student understanding.  
    3. Provide a clear explanation of any notable differences in grammar between the two languages.  
    </RECAP>

Finally, the recap is a quick summary to remind ChatGPT of the most important elements: use slashes, keep the meaning intact, and provide clear grammar explanations. This helps reinforce the instructions and ensures the AI maintains focus.

With this prompt and a few reviews here and there, my classmate has saved 30 minutes of this recurring task.

And there you have it!

By breaking down each section of a prompt into clear components — **Objective** , **Instructions** , **Constraints** , **Context** , **Output Format** , and **Examples** — you give ChatGPT the framework it needs to generate responses that actually work for you.

But guess what? This is just the beginning.

In my next blog, I’ll show you how this concept can be extended into an **AI Agent Pipeline** — which I used to build multiple features in [Padayon Ko](https://www.linkedin.com/feed/update/urn:li:activity:7237786010539933698/) — An All-in-One Scholarship Platform for Filipino high school students.

Imagine taking these prompts and layering them into an automated system that doesn’t just assist you with one task, but handles entire workflows!

Curious? Stay tuned.

Don’t forget to **clap** and **follow** to encourage me — more AI magic is coming your way!

[ChatGPT](https://medium.com/tag/chatgpt?source=post_page-----1a63813b1f21---------------------------------------)

[Prompt Engineering](https://medium.com/tag/prompt-engineering?source=post_page-----1a63813b1f21---------------------------------------)

[Google](https://medium.com/tag/google?source=post_page-----1a63813b1f21---------------------------------------)

[Korean](https://medium.com/tag/korean?source=post_page-----1a63813b1f21---------------------------------------)

[English](https://medium.com/tag/english?source=post_page-----1a63813b1f21---------------------------------------)

[](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2F_%2Fvote%2Fp%2F1a63813b1f21&operation=register&redirect=https%3A%2F%2Fcarlkho-cvk.medium.com%2Fhow-to-prompt-like-google-engineers-1a63813b1f21&user=Carl+Kho&userId=2bc8282af2d0&source=---footer_actions--1a63813b1f21---------------------clap_footer------------------)

\--

[](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2F_%2Fvote%2Fp%2F1a63813b1f21&operation=register&redirect=https%3A%2F%2Fcarlkho-cvk.medium.com%2Fhow-to-prompt-like-google-engineers-1a63813b1f21&user=Carl+Kho&userId=2bc8282af2d0&source=---footer_actions--1a63813b1f21---------------------clap_footer------------------)

\--

[](https://medium.com/m/signin?actionUrl=https%3A%2F%2Fmedium.com%2F_%2Fbookmark%2Fp%2F1a63813b1f21&operation=register&redirect=https%3A%2F%2Fcarlkho-cvk.medium.com%2Fhow-to-prompt-like-google-engineers-1a63813b1f21&source=---footer_actions--1a63813b1f21---------------------bookmark_footer------------------)

[![Carl Kho](https://miro.medium.com/v2/resize:fill:96:96/1*d92Ns_EwDfPiFH15b7pF5w.jpeg)](/?source=post_page---post_author_info--1a63813b1f21---------------------------------------)

[![Carl Kho](https://miro.medium.com/v2/resize:fill:128:128/1*d92Ns_EwDfPiFH15b7pF5w.jpeg)](/?source=post_page---post_author_info--1a63813b1f21---------------------------------------)

## [Written by Carl Kho](/?source=post_page---post_author_info--1a63813b1f21---------------------------------------)

[32 followers](/followers?source=post_page---post_author_info--1a63813b1f21---------------------------------------)

·[44 following](/following?source=post_page---post_author_info--1a63813b1f21---------------------------------------)

Designed my way to seven countries. Junior at Minerva University (2026). 🇵🇭 Open to SWE / Product Design roles (summer internships). <https://www.carlkho.com/>

## No responses yet

[](https://policy.medium.com/medium-rules-30e5502c4eb4?source=post_page---post_responses--1a63813b1f21---------------------------------------)

[Help](https://help.medium.com/hc/en-us?source=post_page-----1a63813b1f21---------------------------------------)

[Status](https://status.medium.com/?source=post_page-----1a63813b1f21---------------------------------------)

[About](https://medium.com/about?autoplay=1&source=post_page-----1a63813b1f21---------------------------------------)

[Careers](https://medium.com/jobs-at-medium/work-at-medium-959d1a85284e?source=post_page-----1a63813b1f21---------------------------------------)

[Press](mailto:pressinquiries@medium.com)

[Blog](https://blog.medium.com/?source=post_page-----1a63813b1f21---------------------------------------)

[Privacy](https://policy.medium.com/medium-privacy-policy-f03bf92035c9?source=post_page-----1a63813b1f21---------------------------------------)

[Rules](https://policy.medium.com/medium-rules-30e5502c4eb4?source=post_page-----1a63813b1f21---------------------------------------)

[Terms](https://policy.medium.com/medium-terms-of-service-9db0094a1e0f?source=post_page-----1a63813b1f21---------------------------------------)

[Text to speech](https://speechify.com/medium?source=post_page-----1a63813b1f21---------------------------------------)
