---
name: fresh-eyes
description: Brief a fresh conversation to look at the topic this one has narrowed with fresh eyes.
argument-hint: "Optional: the part of the topic the fresh eyes are for"
disable-model-invocation: true
---

This conversation has narrowed a topic: the user came in with a broad idea and now holds a sharper question and requirements they did not have at the start. Write the brief that puts **fresh eyes** on it: a new conversation, in any tool, that reasons about the narrowed question from zero.

Fresh eyes on the question, never on the answer. Treat what this conversation produced as a **requirements** document and a **design**. The requirements say what any answer must satisfy: the question as it now stands, the facts of the setup, the boundaries the user holds, the needs the answer must serve. The design is what this conversation decided the answer is, and the reasoning behind it. The brief carries the requirements and leaves the design here, where the user can compare it against the fresh view once it is in. A reader who can see the design argues with it instead of forming their own, which is what separates this from a handoff: a handoff carries everything so the next agent can continue; this carries the requirements so the next one can disagree.

1. **Sort.** Split everything the conversation produced into two lists, **travels** (requirements) and **stays** (design), and show both to the user. What counts as a requirement is the user's decision. A fact of the setup travels; what it implies for the answer stays. Where the conversation changed its mind, the final position is the one sorted. A point still open travels as a question. If the user passed an argument, it names the part of the topic the fresh eyes are for, and the rest stays. The user moves items and confirms. Done when the user has confirmed both lists.

2. **Write the brief** from the travels list alone, in the user's voice, first person, present tense, using the template below. Where a fact the question turns on is unknown, the brief says so ("I have not measured X"). Done when every item on the travels list is in the brief, each once, and nothing from the stays list is.

3. **Hand it over.** Print the brief in one fenced block so the user can paste it anywhere, and save a copy to the OS temp directory, reporting the path.

<brief-template>

# <topic>

## The question

<the narrowed question, framed so it can be answered>

## What I already know

<the requirements: facts of the setup, boundaries I hold, needs the answer must serve, facts I have not checked>

## Out of scope

<what I rule out>

## What I want back

<the shape of the answer, and the open questions. Form your own view from the above. If any of the givens looks wrong to you, say so.>

</brief-template>
