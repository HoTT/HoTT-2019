### How to edit the web page content

1. `git pull`
2. Make changes to `.md` files (see below)
3. `git status` to see what files you changed
4. `git add XYZ.md` for every file you changed and you wish to commit
5. `git push`
6. Go to the conference web page, make sure to reload the page.

The `.md` files are Markdown files, here is a [quick Markdown reference](https://guides.github.com/features/mastering-markdown/).

Page source files:

* [`index.md`](./index.md) -- main conference page
* [`summer-school.md`](./summer-school.md) -- summer school page
* [`call-for-papers.md`](./call-for-papers.md) -- call for papers
* [`registration.md`](./registration.md) -- registration information
* [`registration.md`](./registration.md) -- registration information
* [`local.md`](./local.md) -- local information


### Organization and web pages for the HoTT 2019 conference

These are the web pages for the HoTT 2019 conference. The website is at [https://hott.github.io/HoTT-2019/](https://hott.github.io/HoTT-2019/).

#### How do I make changes?

The pages are written in the Markdown format and automatically translated to HTML by
GitHub. Simply edit the Markdown files and use Git to push the changes back to the server.
The website always shows the contents of the `master` branch of the GitHub repository.

#### How to generate the web page locally

You need not generate the pages before you publish them, but it might be a good idea to do
so and verify that the pages are OK, especially if you make significant changes.

To generate web pages locally for preview, you need [Jekyll](https://jekyllrb.com), which
needs a million subsidiary Ruby packages. Rather than trying to install them with your
bare hands, you should just try

    bundle install

With a bit of luck you've got Ruby installed so this command will do the right thing. The
`bundle` command is part of the Ruby [Bundler](https://bundler.io) package manager. On a
Mac it is available through [Homebrew](https://brew.sh).  On Linux it is available through
your package manager, e.g. on Debian/Ubuntu `sudo apt install ruby-bundler ruby-dev'.

Then to generate and serve the pages locally, run

    bundle exec jekyll serve

The pages will appear at [http://127.0.0.1:4000/](http://127.0.0.1:4000/).

#### Troubleshooting on MacOS

On MacOS one of the libraries is causing problems. If `bundle install` fails and complains that it cannot install `nokogiri`, run these:

    sudo gem install pkg-config
    sudo gem install nokogiri -v '1.8.5' --source 'https://rubygems.org/' -- --use-system-libraries

Then run `bundle install` again.

