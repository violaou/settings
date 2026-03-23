# Claude Code Integration
Quick Install (Standalone)
Install just Claude Code without the full dotfiles:
from : https://github.com/freekmurze/dotfiles

```
curl -fsSL https://raw.githubusercontent.com/freekmurze/dotfiles/main/bin/install-claude-code
```

## [What's Included](https://github.com/freekmurze/dotfiles?tab=readme-ov-file#whats-included-1)
Claude Code CLI - Installed via Homebrew
Custom configuration - CLAUDE.md with coding guidelines, laravel-php-guidelines.md
Version-controlled skills - Entire ~/.claude/skills directory symlinked to dotfiles
Version-controlled agents - Entire ~/.claude/agents directory symlinked to dotfiles

Skills (Version Controlled)
All skills are stored in config/claude/skills/ and version-controlled with your dotfiles. When you run the installer on a new Mac, all skills are immediately available.

### Custom Skills:

ray-skill - Ray debugging integration
fix-github-issue - GitHub issue automation
convert-issue-to-discussion - GitHub workflow helpers
Community Skills:

vercel-labs/agent-skills - Web design guidelines and React best practices
anthropics/skills - Frontend design and skill creation tools
vercel-labs/agent-browser - Browser automation
expo/skills - React Native with Expo
callstackincubator/agent-skills - React Native performance
coreyhaines31/marketingskills - Copywriting and programmatic SEO
copy-editing - Marketing copy editing
copywriting - Marketing copywriting
frontend-design - Frontend design patterns
pdf - PDF manipulation
seo-audit - SEO auditing
web-design-guidelines - Web design best practices
