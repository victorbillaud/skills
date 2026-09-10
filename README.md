# skills

My agent skills, iterated against real runs. Laid out the way [mattpocock/skills](https://github.com/mattpocock/skills) is: bucket folders, one `SKILL.md` per skill with a Codex `agents/openai.yaml` beside it, a link script instead of a copy, and a changelog that records why each change was made.

## Install

```bash
git clone https://github.com/victorbillaud/skills ~/src/skills
~/src/skills/scripts/link-skills.sh
```

Each installed skill is a symlink into this repo, so editing here is editing what runs, and `git pull` updates them.

## Skills

### Productivity

- **[second-opinion](./skills/productivity/second-opinion/SKILL.md)** (user-invoked): brief a fresh conversation for a second opinion on the topic this one has narrowed.

`CLAUDE.md` holds the invariants an agent editing this repo must keep. `CHANGELOG.md` is the record of what changed and what failure prompted it.
