# Michael Treanor

>This is my about me page, available on [GitHub](https://skeptycal.github.io/clojure_site/). It was made using a Clojure Framework. [Why Clojure?](https://clojure.org/about/rationale)

### Prerequisites

Make sure you have. Any version will likely work fine ...

| Tool                                                  | Version I used   |
| ----------------------------------------------------- | ---------------- |
| [Clojure](https://clojure.org/guides/getting_started) | 1.10.1.469       |
| [Lein Build Tools](https://leiningen.org/)            | 2.9.1 on Java 13 |
| [node.js / npm](https://nodejs.org/en/download/)      | 12.9.1 / 6.13    |
| [Git](https://git-scm.com/downloads)                  | 2.23.0           |
| [hub](https://hub.github.com/)                        | 2.12.8           |

run this terminal command to make sure npm global repo permissions are sufficient:
    `chown -R $(whoami):staff $(npm root -g)`

### Quickstart

 Run the `setup_macos.sh` if you use macOS ...

or take the long way around ...

Clone repo (or use as a template):

```bash
# choose a repo name for your 'about me' page
site_name='Like_Mike'
# set your GitHub username from Git ... or just type it in...
user_name=$(git config user.name)

repo_name='https://github.com/'${user_name}${site_name}

git clone https://github.com/skeptycal/clojure_site $site_name
cd $site_name
rm -rf .git
git init
hub create

```

Dependencies:

```bash
make install
```

Development:

```bash
make watch
make serve
```

Build:

```bash
make build
```

Deploy:

```bash
make deploy
```

### Contributions

[Bug Reports](.github/ISSUE_TEMPLATE/bug_report.md)
[Feature Requests](.github/ISSUE_TEMPLATE/feature_request.md)

