---
name: fresh-eyes
description: Brief a fresh conversation to look at the topic this one has narrowed with fresh eyes.
argument-hint: "Optional: the part of the topic the fresh eyes are for"
disable-model-invocation: true
---

This conversation has narrowed a topic: the user came in with a broad idea and now holds a sharper question and requirements they did not have at the start. Write the brief that puts **fresh eyes** on it: a new conversation, in any tool, that reasons about the narrowed question from zero.

Fresh eyes on the question, never on the answer. Treat what this conversation produced as a **requirements** document and a **design**. The requirements say what any answer must satisfy: the question as it now stands, the facts of the setup, the boundaries the user holds, the needs the answer must serve. The design is what this conversation decided the answer is, and the reasoning behind it. The brief carries the requirements and leaves the design here, where the user can compare it against the fresh view once it is in. A reader who can see the design argues with it instead of forming their own, which is what separates this from a handoff: a handoff carries everything so the next agent can continue; this carries the requirements so the next one can disagree.

1. **Sort.** List everything the conversation produced as a numbered list, each item with its proposed placement, **travels** (requirement) or **stays** (design), and a one-line reason. What counts as a requirement is the user's decision, so the list is a proposal and the user answers by number, naming the items to move. A fact of the setup travels when the question turns on it; what it implies for the answer stays. Where the conversation changed its mind, the final position is the one sorted. A point still open travels as a question. If the user passed an argument, it names the part of the topic the fresh eyes are for, and the rest stays. Done when the user has confirmed the placements.

2. **Write the brief** from the travels items alone, in the user's voice, first person, present tense, using the template below. The brief reads as the first time the question has been asked. Where a fact the question turns on is unknown, the brief says so ("I have not measured X"). If the user kept the design on the travels list, the fresh eyes are on the design: the brief includes it and the ask requests a critique. Done when every travels item is in the brief, each once, and nothing from the stays items is.

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
