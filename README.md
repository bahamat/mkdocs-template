<!-- This Source Code Form is subject to the terms of the Mozilla Public
   - License, v. 2.0. If a copy of the MPL was not distributed with this
   - file, You can obtain one at https://mozilla.org/MPL/2.0/. -->

# mkdocs-template

This is a template repo you can use for documentation. It uses [mkdocs][1]
with the [material][2] theme.

[1]: https://www.mkdocs.org/
[2]: https://squidfunk.github.io/mkdocs-material/

## Getting Started

1. Create a [new private repo on GitHub](https://github.com/new) for your
   documentation.
2. Clone this repo to your workstation.

        git clone https://github.com/joyent/mkdocs-template my-team-docs

3. Set the remote to the new repo you created in step 1.

        git remote remove origin
        git remote add origin git@github.com:joyent/my-team-docs.git

4. Edit `mkdocs.yml` and `package.json` to reflect your new documentation
   project.
5. Run `make deps` to install the required dependencies.
6. Replace the contents of this `README.md`, and publish your first commit.

        echo "# my-team-docs" > README.md
        git add .
        git commit -m'First commit of My Team Docs'
        git push -u origin master

## Adding Content

Adding content is simple.

* Add markdown files to the `docs` directory.
* Edit `mkdocs.yml` to define your site navigation. (Optionally, you can
  remove the `nav` section and a single flat navigation will be rendered.)

There are some handy `make` targets.

* `make` by itself will generate your site.
* `make check` will check the contents of `docs` with `markdownlint`
* `make serve` will start up a web server on <http://127.0.0.1:8000> so you
  can preview your site.

## Publishing Content

There's no specific recomendation for publishing content. There are a number
of easy options.

1. `rsync` the `site` directory to a web server (make sure it has approrpriate
   authentication as needed).
2. Clone your repo onto a web server.
3. Use this as the gh-pages branch of your a project
4. Just browse the markdown directly on github without pre-rendering it (though
   you won't get any features of `mkdocs` that way).

## Requirements

The only requirements are node.js (for markdownlint) and python 3.7 virtualenv
(i.e., `virtualenv-3.7`, for `mkdocs`). Having node and virtualenv-3.7
installed, simply run `make deps` to install the additional components.

## Other Information

This repo is pre-configured to create a github workflow that will check all
pull requests with `markdownlint`. This helps keep content clean for maximum
portability between markdown rendering engines.
