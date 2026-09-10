---
name: second-opinion
description: Brief a fresh conversation for a second opinion on the topic this one has narrowed.
argument-hint: "Optional: the part of the topic the second opinion is for"
disable-model-invocation: true
---

This conversation has narrowed a topic: the user came in with a broad idea and now holds a sharper question and constraints they did not have at the start. Write the brief that opens a **second opinion**: a fresh conversation, in any tool, that reasons about the narrowed question from zero.

A second opinion is worth having only if it is independent. The brief carries the **case** (the question as it now stands, and the facts and constraints the user now holds) and withholds the **first opinion** (every conclusion, recommendation, ranking or preferred design this conversation reached, and the reasoning that led there). A reader who can see the first answer argues with it instead of forming their own. This is what separates the brief from a handoff: a handoff carries everything so the next agent can continue; this carries the case so the next one can disagree. The first opinion stays here, in this conversation, for the user to compare against once the second is in.

1. **Sort what this conversation produced.** Read it end to end and split every point into one of three groups: the **narrowed question**; the **constraints** (facts checked, boundaries set, things the user learned that reshaped the question, and what they ruled out of scope); and the **first opinion**. If the user passed an argument, it names the part of the topic the second opinion is for, and the rest of the conversation is out of scope. Where a point could be either a constraint the user holds or a conclusion this conversation reached, ask. Done when every point is in exactly one group.

2. **Write the brief** in the user's voice, first person, as the opening message of the new conversation, using the template below. State constraints as givens, without the argument that produced them; the argument is the first opinion. Done when every constraint from step 1 is in the brief and nothing from the first opinion is.

3. **Hand it over.** Print the brief in one fenced block so the user can paste it anywhere, and save it to the OS temp directory (not the workspace), reporting the path.

<brief-template>

# Second opinion: <topic>

## The question

<the narrowed question, one or two paragraphs, framed so it can be answered>

## What I already know

<the constraints, each stated as a given: facts I have checked, boundaries I have set, what I learned that reshaped the question>

## Out of scope

<what I have ruled out and do not want revisited>

## What I want back

<the shape of the answer: a recommendation, a ranking, a design, a critique. Form your own view from the above. If any of the givens looks wrong to you, say so.>

</brief-template>
