# Michael Treanor

> This is my about me page, available on [GitHub](https://skeptycal.github.io/clojure_site/). It was made using a [Webpack](https://webpack.js.org/) and Clojure. [Why Clojure?](https://clojure.org/about/rationale)

<img src="resources/images/webpack.png" alt="webpack logo" height=50>

<img src="resources/images/clojure-logo-120b.png" alt="clojure logo" height=50 align='right'>

---

## Prerequisites

Make sure you have. Any version will likely work fine ...

| Tool                                                  | Version I used   |
| ----------------------------------------------------- | ---------------- |
| [Clojure](https://clojure.org/guides/getting_started) | 1.10.1.469       |
| [Lein Build Tools](https://leiningen.org/)            | 2.9.1 on Java 13 |
| [node.js / npm](https://nodejs.org/en/download/)      | 12.9.1 / 6.13    |
| [Git](https://git-scm.com/downloads)                  | 2.23.0           |
| [hub](https://hub.github.com/)                        | 2.12.8           |

If you run into permission problems with npm (not just with this project ... this is a problem with many non-rvm installs), run this terminal command to make sure npm global repo permissions are sufficient:
`sudo chown -R $(id -un):$(id -gn) $(npm root -g)`

## Quickstart

 Run the `setup_macos.sh` if you use macOS ...

```bash
chmod 755 setup_macos.sh
./setup_macos.sh
```

or take the long way around ...

## Setup

### Setup local project and git repo

```bash
# choose a repo name for your 'about me' page
site_name='clojure_site'
# set your GitHub username from Git ... or just type it in...
user_name=$(git config user.name)

repo_name="https://github.com/${user_name}/${site_name}"

git clone https://github.com/skeptycal/clojure_site $site_name
cd $site_name
```

### Setup Github remote repository:

```bash
# Rename remote repo. if you wish to remove the remote, use this:
#   git rm -rf .git && git init
git remote rename origin upstream

# create remote repo
hub create

# initial git commit and github push
git add all
git commit -m 'initial commit'
git push --set-upstream origin $(git_current_branch)
echo 'Github remote repositories:'
git remote -v
```

### Install dependencies:

```bash
make install
```

### Development:

```bash
make watch
make serve
```

### Build:

```bash
make build
```

### Deploy to GitHub Pages:

```bash
make build
make github

```

Deploy to Google Cloud (account required):

```bash
make deploy
```

### Contributions

[Code of Conduct](CODE_OF_CONDUCT.md)

[Bug Reports](.github/ISSUE_TEMPLATE/bug_report.md)

[Feature Requests](.github/ISSUE_TEMPLATE/feature_request.md)
