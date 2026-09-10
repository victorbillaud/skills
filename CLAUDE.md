Skills live in bucket folders under `skills/`. Today there is one, `productivity/` (daily non-code workflow tools). A new bucket is added the day a skill does not fit the existing ones, with a `README.md` of its own.

Every skill is one folder holding a `SKILL.md` and an `agents/openai.yaml`, and is either user-invoked (`disable-model-invocation: true` plus `policy.allow_implicit_invocation: false`, description written for the human scanning the slash-command list) or model-invoked (neither flag, description written for the model, one trigger per branch). A skill is user-invoked in both harnesses or neither. When creating or editing a skill, call the Skill tool with "writing-for-agents" first: it is the method this repo follows, and this file does not restate it.

Each bucket has a `README.md` listing every skill in it with a one-line description, the name linked to its `SKILL.md`, grouped into **User-invoked** and **Model-invoked**. Adding, renaming or removing a skill updates that list and the top-level `README.md`.

`scripts/link-skills.sh` symlinks every skill into `~/.claude/skills`. Run it after adding, renaming or removing a skill; a `git pull` then keeps the installed skills current without re-running it.

Every behaviour change to a skill gets a `CHANGELOG.md` entry that says what changed and the observed failure that prompted it. A change with no observed failure behind it is a guess, and the entry should say so. That record is why this repo exists: the skills are iterated against what went wrong on real runs, not designed up front.

Matt Pocock's skill set is installed as the `mattpocock-skills` plugin and is not copied here. This repo holds only skills written here.
