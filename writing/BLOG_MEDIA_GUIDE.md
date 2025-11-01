
# Media and Style Guide

Your blog now supports rich media embeds and a refined writing style. Here's how to use them to create valuable, clean, and engaging content.

---

## ✍️ Writing Style: Elegant Link Embedding

The best links add value without disrupting the reader. They should feel like a natural part of the narrative, not an interruption. By weaving links directly into your prose, you provide deeper context while maintaining a seamless reading experience.

### 1. Use Descriptive, Contextual Anchor Text

The words you choose to link are crucial. They should describe what the reader will find, making the link an integral part of the sentence.

**Instead of this:**
> "Neuralink made an announcement about their first human implant. To read about it, **click here**."

**Do this:**
> "Neuralink recently **announced** that they'd implanted an intracortical brain-computer interface (BCI) in a human patient."

In the second example, the link is placed on the action word ("announced"), which tells the reader exactly what the source is: the announcement itself.

### 2. Weave Links Directly into Your Narrative

Incorporate links to support claims, introduce subjects, or provide sources directly where they are mentioned. This makes the text feel authoritative and well-researched.

**To Introduce a Subject:** Link the proper noun itself. This provides immediate context for the curious reader.
> **Example:** "This video from Pitt's **Motorlab** isn't a lab focused on BCI."
>
> **Markdown:** `This video from Pitt's [Motorlab](https://motorlab.pitt.edu) isn't a lab focused on BCI.`

**To Support a Claim:** Link the noun that represents your evidence, like "paper," "study," or "report."
> **Example:** "I wrote a **paper** on epilepsy forecasting that used data from implants..."
>
> **Markdown:** `I wrote a [paper](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4671081/) on epilepsy forecasting...`

---

## 🖼️ Images with Captions

**A picture is worth a thousand words.** Images transform technical explanations from abstract to concrete, making complex concepts immediately graspable.

### When to Add Images

Always consider adding images for:
- **Architecture diagrams**: System flows, component interactions, data pipelines
- **Hardware components**: Pinout diagrams, circuit schematics, module photos
- **Visual comparisons**: Before/after, expected vs. actual, fiction vs. reality
- **Mathematical concepts**: Graph visualizations, neural network layers, signal processing
- **User interfaces**: Screenshots of tools, applications, or development environments
- **Physical demonstrations**: Sensor placement, gesture recognition, body mechanics

### Image Syntax

```markdown
![Descriptive Alt Text](../src/assets/images/your-image.png "Caption that explains what the reader should notice")
```

**Example:**
```markdown
![DQN Architecture](../src/assets/images/dqn-architecture.png "Agent-Environment feedback loop")
```
### Best Practices

1.  **Alt text** should describe what's IN the image (for accessibility and SEO).
2.  **Caption** should explain WHY it matters or what insight it provides.
3.  **File naming**: Use kebab-case, descriptive names (`dqn-architecture.png`, not `image1.png`).
4.  **File location**: Store in `frontend/src/assets/images/`.
5.  **File format**: Use PNG for diagrams/screenshots, JPG for photos, GIF for animations.

### Image Suggestion Callouts

When you know an image would help but don't have it yet, leave yourself a reminder:

```markdown
> [!INFO]
> **📸 Image Suggestion: [Descriptive Title]**
> [Explain what image to find/create and where to get it. Include the filename to use.]
```

**Example:**
```markdown
> [!INFO]
> **📸 Image Suggestion: DQN Architecture Diagram**
> Download the architecture flowchart from [Dilith's blog](https://dilithjay.com/blog/dqn) showing Agent → State → DNN → Q-values → Action → Reward cycle.
> Save as `dqn-architecture.png` in `frontend/src/assets/images/`.
```
This creates a placeholder that reminds you to add the image after the AI finishes writing.

---

## 🎬 Loom Video Embeds

Creates a responsive video embed with a clean header showing the video title.

```markdown
:::loom url="https://www.loom.com/embed/your-video-id" title="Your Video Title"
:::
```

---

## 🐙 GitHub Code References

Creates a GitHub reference box with a link to view the code, perfect for referencing related repositories.

```markdown
:::github url="https://github.com/username/repo" title="Description of the code"
:::
```

---

## 📝 Code Blocks

Code blocks have syntax highlighting and language labels:

```python
def your_function():
    """Your code here"""
    return "works great"
```

---

## 💡 Existing Features

All your existing features still work:
-   Callouts: `> [!NOTE]`, `> [!WARNING]`, `> [!INFO]`, `> [!TIP]`, `> [!SUCCESS]`, `> [!DANGER]`
-   Collapsible sections: `:::details Title` ... `:::`
-   Tables, lists, and all standard markdown

---

## Style Consistency

All media embeds maintain your design language:
-   Dark theme with orange accents
-   Consistent spacing and typography
-   Mobile responsive design
-   Clean, readable layout

The embeds integrate seamlessly with your content flow.
