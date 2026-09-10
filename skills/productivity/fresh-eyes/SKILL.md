---
name: fresh-eyes
description: Brief a fresh conversation to look at the topic this one has narrowed with fresh eyes.
argument-hint: "Optional: the part of the topic the fresh eyes are for"
disable-model-invocation: true
---

This conversation has narrowed a topic: the user came in with a broad idea and now holds a sharper question and constraints they did not have at the start. Write the brief that puts **fresh eyes** on it: a new conversation, in any tool, that reasons about the narrowed question from zero.

Fresh eyes on the question, never on the answer. The brief carries the **case** (the question as it now stands, and the facts and constraints the user now holds) and withholds the **first opinion** (every conclusion, recommendation, ranking or preferred design this conversation reached, and the reasoning that led there). A reader who can see the first answer argues with it instead of forming their own. This is what separates the brief from a handoff: a handoff carries everything so the next agent can continue; this carries the case so the next one can disagree. The first opinion stays here, in this conversation, for the user to compare against once the fresh view is in.

1. **Sort what this conversation produced.** Read it end to end and split every point into one of three groups: the **narrowed question**; the **constraints**; and the **first opinion**. The test: a constraint *bounds* the question and the reader can check it (a number, a config, a boundary the user set, a downstream need the answer must serve); a conclusion *answers* the question, or tells the reader where not to look. A constraint may carry the need it serves, never the reasoning that chose it. Drop any constraint that does not bear on the question. If the user passed an argument, it names the part of the topic the fresh eyes are for, and the rest is out of scope. If the sorted constraints answer most of the question, the question is too broad: narrow it to the part still open, and keep only the constraints that part needs. Done when every point is in exactly one group and the constraints, read together, do not answer the question.

2. **Write the brief** in the user's voice, first person, as the opening message of the new conversation, using the template below. Every given and every exclusion is stated in the present tense as a fact that holds, with no account of how it came to hold. Each point appears once; an open point lives in the ask alone. A fact the question turns on that the user has not checked is stated among the givens as unknown ("I have not measured X"), so silence never reads as oversight. Done when every constraint from step 1 is in the brief, nothing from the first opinion is, and no given forecloses what the ask requests.

3. **Hand it over.** Print the brief in one fenced block so the user can paste it anywhere, and save it to the OS temp directory (not the workspace), reporting the path.

<brief-template>

# <topic>

## The question

<the narrowed question, one or two paragraphs, framed so it can be answered>

## What I already know

<the constraints, each stated as a given: facts I have checked, boundaries I have set, needs the answer must serve, facts I have not checked and say so>

## Out of scope

<what I rule out, stated without how I came to rule it out>

## What I want back

<the shape of the answer: a recommendation, a ranking, a design, a critique. Where one point is open, name it here. Form your own view from the above. If any of the givens looks wrong to you, say so.>

</brief-template>
