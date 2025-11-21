# How-Git-README

## SOP: Create & Publish a Git Project (Beginner-Friendly)

### 1. Purpose
This SOP explains how to install Git-related tools, authenticate GitHub, create a local git project, and publish it to GitHub.

### 2. Prerequisites
- macOS
- GitHub account
- Terminal access
- Optional: OpenAI internal `oai_gh`

### 3. Step-by-Step Procedure

#### Step 1 — Install Homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Verify:
```
brew --version
```

#### Step 2 — Install Git & GitHub CLI
```
brew install git gh
```

Verify:
```
git --version
gh --version
```

#### Step 3 — Authenticate GitHub

##### Using OpenAI oai_gh
```
oai_gh
```

##### Standard GitHub CLI
```
gh auth login
```

Enter the one-time code & authorize.

#### Step 4 — Create Local Project
```
mkdir my-project
cd my-project
git init
echo "# My Project" > README.md
git add README.md
git commit -m "chore: initial commit"
```

#### Step 5 — Create GitHub Repo from Terminal
```
gh repo create my-project --public --source=. --remote=origin --push
```

#### Step 6 — Verify Remote
```
git remote -v
```

### 4. Troubleshooting
- Repo name already exists → choose another
- Device code fails → incognito window
- Nothing to commit → proceed to next steps
- Push denied → refresh GitHub scopes

### 5. Command Reference
```
mkdir <name>
cd <name>
git init
echo "# <Title>" > README.md
git add .
git commit -m "chore: initial commit"
gh repo create <name> --public --source=. --remote=origin --push
git remote -v
```

### Appendix — Useful Git Commands
- `git status`
- `git add .`
- `git commit -m "msg"`
- `git log --oneline --graph`
- `git checkout -b feature/name`
- `git push -u origin feature/name`
