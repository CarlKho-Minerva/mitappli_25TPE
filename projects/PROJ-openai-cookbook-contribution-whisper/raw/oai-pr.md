Skip to content
Navigation Menu
openai
openai-cookbook

Type / to search
Code
Issues
45
Pull requests
49
Actions
Security
Insights
new-contrib: Audio Whisper API with Local Device Microphones #1271
 Open
CarlKho-Minerva wants to merge 17 commits into openai:main from CarlKho-Minerva:carl-kho/Whisper_API-device_mic_transcription
+796 −11,015
 Conversation 25
 Commits 17
 Checks 0
 Files changed 9
Conversation
CarlKho-Minerva
CarlKho-Minerva commented on Jul 6, 2024 •
Summary
This PR adds a new notebook that demonstrates how to use the Whisper API to transcribe text from your device's microphone. The notebook includes steps to record audio, transcribe it using the Whisper API, and copy the transcription to the clipboard. It aims to provide a practical guide for users who want to integrate speech-to-text functionality into their applications.

*This pull request was written by Chat GPT and reviewed by a human. The article, however, is made by a human.

Motivation
This tutorial was created because the functionality to transcribe speech to text from a microphone is not well-documented. I found the mic speech-to-text option in the ChatGPT apps (not websites) extremely helpful for day-to-day operations and wanted to save others from having to learn about different audio processing modules.

For new content
When contributing new content, read through our contribution guidelines, and mark the following action items as completed:

 I have added a new entry in registry.yaml (and, optionally, in authors.yaml) so that my content renders on the cookbook website.
 I have conducted a self-review of my content based on the contribution guidelines (my previous PR message detailed on every one of these 😅):
 Relevance: This content is related to building with OpenAI technologies and is useful to others.
 Uniqueness: I have searched for related examples in the OpenAI Cookbook and verified that my content offers new insights or unique information compared to existing documentation.
 Spelling and Grammar: I have checked for spelling or grammatical mistakes.
 Clarity: I have done a final read-through and verified that my submission is well-organized and easy to understand.
 Correctness: The information I include is correct, and all of my code executes successfully.
 Completeness: I have explained everything fully, including all necessary references and citations.
CarlKho-Minerva added 2 commits last year
@CarlKho-Minerva
new-contrib: submission - Audio Whisper API with Device Microphones
9c75686
@CarlKho-Minerva
chore: Updated yaml info + and typo correcting
117523f
@CarlKho-Minerva
Author
CarlKho-Minerva commented on Jul 6, 2024
My previous PR message before I updated. It's mostly justification for each criteria.

Introduction:
This contribution introduces a practical guide on using the Whisper API to transcribe audio from a device's microphone. The notebook includes steps to record audio, transcribe it using the Whisper API, and copy the transcription to the clipboard, providing an accessible and useful resource for AI builders.

Justification:
1. Relevance:
This guide is relevant as it utilizes OpenAI's Whisper API, allowing users to transcribe audio directly from their devices. This functionality aligns with OpenAI's mission to provide practical applications of AI technologies.

2. Usefulness:
The contribution is highly useful for developers who need a reliable method to convert speech to text. It can be used in various applications, such as real-time transcription services, voice command systems, and accessibility tools for individuals with hearing impairments. I found the mic speech-to-text option in the ChatGPT apps (not websites) very helpful for day-to-day operations and wanted to extend this functionality.

3. Uniqueness:
While there are existing examples of using the Whisper API, this notebook uniquely combines multiple functionalities—recording audio, transcribing it, and copying the transcription to the clipboard—into one cohesive guide. This integration simplifies the process for users and provides a complete solution in a single resource. Given that this functionality isn't extensively documented yet, I believe this tutorial can fill an important gap.

4. Clarity:
The notebook is written in clear, easy-to-understand language, with step-by-step instructions and code snippets. It includes detailed comments and explanations, making it accessible even to beginners.

5. Correctness:
The code has been tested and verified for accuracy. It includes all necessary imports and setup instructions, ensuring that users can replicate the process without errors.

6. Conciseness:
The guide is concise yet thorough, covering all essential steps without unnecessary information. It is structured to provide maximum value in a compact format.

7. Completeness:
The contribution is complete, covering everything from setting up microphone permissions to troubleshooting common issues. It provides all necessary context and resources, ensuring users have a comprehensive understanding of the process.

8. Grammar:
The notebook is free from grammatical and spelling errors, ensuring professional quality and readability.

@CarlKho-Minerva
Merge branch 'main' into carl-kho/Whisper_API-device_mic_transcription
687d905
ibigio
ibigio requested changes on Aug 22, 2024
Collaborator
ibigio left a comment
Criteria	Description	Score
Relevance	Is the content related to building with OpenAI technologies? Is it useful to others?	4
Uniqueness	Does the content offer new insights or unique information compared to existing documentation?	4
Clarity	Is the language easy to understand? Are things well-explained? Is the title clear?	4
Correctness	Are the facts, code snippets, and examples correct and reliable? Does everything execute correctly?	2
Conciseness	Is the content concise? Are all details necessary? Can it be made shorter?	4
Completeness	Is the content thorough and detailed? Are there things that weren’t explained fully?	4
Grammar	Are there grammatical or spelling errors present?	4
Really solid contribution, thank you! Motivation is clear, steps are broken down well, and the sections make sense. Caught a few mistakes here and there (mostly to do with using the SDK the old way), but once you correct them you're all set to merge!

examples/Whisper_transcribe_device_microphone.ipynb
Outdated
examples/Whisper_transcribe_device_microphone.ipynb
Outdated
examples/Whisper_transcribe_device_microphone.ipynb
Outdated
examples/Whisper_transcribe_device_microphone.ipynb
Outdated
examples/Whisper_transcribe_device_microphone.ipynb
Outdated
examples/Whisper_transcribe_device_microphone.ipynb
Outdated
examples/Whisper_transcribe_device_microphone.ipynb
Outdated
examples/Whisper_transcribe_device_microphone.ipynb
Outdated
CarlKho-Minerva added 2 commits last year
@CarlKho-Minerva
feat: Heavily revise article for device microphone transcription in W…
aced6cd
@CarlKho-Minerva
chore: update authors and registry yaml files
c2eaf92
@CarlKho-Minerva
Author
CarlKho-Minerva commented on Aug 24, 2024 •
Changelog
Hi @ibigio. Heavily revised my article now that I'm a month wiser. :)

Updated Image:

Added whisper_onChatGPTApp_cvk.gif to the images/ directory.
Content Structure:

Removed duplicate table of contents.
Replaced bolded numbered lists with H3 headers for cleaner formatting.
Code Improvements:

Added translation functionality alongside transcription.
Wrapped helper functions into separate functions for better modularity.
Implemented .env for secure API key management.
Specified data types for function parameters.
Updated main function to include is_english parameter for language selection.
Added timed recording option with timed_recording and record_seconds parameters.
OpenAI API Updates:

Updated OpenAI library usage.
Implemented client.audio.translations.create for non-English audio.
Documentation:

Updated docstrings to reflect new functionality.
Added additional demos for transcription and translation.
Updated troubleshooting section and FAQ to cover new features.
Terminology:

Updated text to reflect both "transcribe" and "translate" where appropriate.
Aesthetic Improvements:

Enhanced overall formatting for better readability in VS Code.
Created a more engaging recording when showcasing ChatGPT's Whisper Button interface.
CarlKho-Minerva added 2 commits last year
@CarlKho-Minerva
chore: *correctly* update yaml files
7b53a86
@CarlKho-Minerva
Merge branch 'main' into carl-kho/Whisper_API-device_mic_transcription
3ab74f5
@CarlKho-Minerva CarlKho-Minerva requested a review from ibigio last year
@QWolfp3 QWolfp3 mentioned this pull request on Aug 25, 2024
[FEATURE] #1392
Closed
CarlKho-Minerva added 5 commits last year
@CarlKho-Minerva
Merge branch 'main' into carl-kho/Whisper_API-device_mic_transcription
5318114
@CarlKho-Minerva
Merge branch 'main' into carl-kho/Whisper_API-device_mic_transcription
64a9070
@CarlKho-Minerva
indent fix
7786f07
@CarlKho-Minerva
Merge branch 'main' into carl-kho/Whisper_API-device_mic_transcription
75e8e52
@CarlKho-Minerva
Merge branch 'main' into carl-kho/Whisper_API-device_mic_transcription
587df2b
ibigio
ibigio requested changes on Nov 27, 2024
Collaborator
ibigio left a comment
Code seems to run now mostly free of errors, left a couple comments around code clarity and correctness.

examples/Whisper_transcribe_device_microphone.ipynb
examples/Whisper_transcribe_device_microphone.ipynb
examples/Whisper_transcribe_device_microphone.ipynb
@CarlKho-Minerva
Author
CarlKho-Minerva commented on Nov 27, 2024
Thanks @ibigio! Will get these fixed within an hour.

CarlKho-Minerva added 3 commits 11 months ago
@CarlKho-Minerva
fix: clean up merged sections and remove conflict markers in registry…
e81cc13
@CarlKho-Minerva
Merge branch 'carl-kho/Whisper_API-device_mic_transcription' of https…
e5d4800
@CarlKho-Minerva
feat: improve Whisper API prompts and refactor audio processing
8a4ac3d
@CarlKho-Minerva
Author
CarlKho-Minerva commented on Jan 20
Hi @ibigio,

Thanks again for your insightful feedback! I've addressed your comments in the latest commit:

Prompts: I've improved the prompts in both demos to be more example-based, providing context about the audio content, as suggested by the Whisper API documentation.
Function Refactoring: I've separated the process_audio function into transcribe_audio_file and translate_audio_file for better clarity and to ensure the prompt is used correctly in both cases.
Time Limit: I've added a 5-second time limit to the Spanish translation demo to prevent potential issues with indefinite recording.
Documentation: I've improved the formatting of the "Recording Audio Details" section, added a note about prompt usage with links to relevant documentation, and also restructured some of the installation steps to make them easier to follow.
Please take another look and let me know if you have any further suggestions!

P.S.: Sorry it took a while; there was a whirlwind of challenges following the USCIS's policy change that threatened my ability to study in the US. It is resolved now,t though.

@CarlKho-Minerva
Merge branch 'main' into carl-kho/Whisper_API-device_mic_transcription
776d55f
@CarlKho-Minerva CarlKho-Minerva requested a review from ibigio 9 months ago
@CarlKho-Minerva
Merge branch 'main' into carl-kho/Whisper_API-device_mic_transcription
e81a4f7
@CarlKho-Minerva
Author
CarlKho-Minerva commented on Mar 7
My academic focus has shifted to general computer (Omniparser v2) use with Inner Speech.

Is there anyone on the team I can get on a 15-min call for starting-out resources? Would appreciate links as well.

Also, gently bumping up @ibigio. Hope everything's well over there.

@github-actionsGitHub Actions
github-actions bot commented on May 13
This PR is stale because it has been open 60 days with no activity. Remove stale label or comment or this will be closed in 10 days.

@github-actions github-actions bot added the Stale label on May 13
@CarlKho-Minerva
Author
CarlKho-Minerva commented on May 13 •
Bumping to remove stale cc @ibigio. :)

@github-actions github-actions bot removed the Stale label on May 14
Djubz
Djubz reviewed on Jun 19
Djubz left a comment
Updated registry.yaml ;)

@github-actionsGitHub Actions
github-actions bot commented on Aug 19
This PR is stale because it has been open 60 days with no activity. Remove stale label or comment or this will be closed in 10 days.

@github-actions github-actions bot added the Stale label on Aug 19
@CarlKho-Minerva
Author
CarlKho-Minerva commented on Aug 19
Bumping to remove stale. I finished my internship at Dell Tech now. Distributed systems is fun.

@github-actions github-actions bot removed the Stale label on Aug 20
Merge info
This branch has conflicts that must be resolved
Changes can be cleanly merged.

registry.yaml
@CarlKho-Minerva


Add a comment
Comment

Add your comment here...

Remember, contributions to this repository should follow its contributing guidelines.
 ProTip! Add .patch or .diff to the end of URLs for Git’s plaintext views.
Reviewers
@ibigio
ibigio
1 more reviewer
@Djubz
Djubz

Requested changes must be addressed to merge this pull request.

Still in progress?
Assignees
No one assigned
Labels
None yet
Projects
None yet
Milestone
No milestone
Development
Successfully merging this pull request may close these issues.

None yet


Notifications
Customize
You’re receiving notifications because you authored the thread.
3 participants
@CarlKho-Minerva
@ibigio
@Djubz
Allow edits by maintainers
Footer
© 2025 GitHub, Inc.
Footer navigation
Terms
Privacy
Security
Status
Community
Docs
Contact
Manage cookies
Do not share my personal information
