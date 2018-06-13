### Organization and web pages for the HoTT 2018 conference

#### How do generate the web page locally

To generate web pages locally for preview, you need [Jekyll](https://jekyllrb.com), which
needs a million subsidiary Ruby packages. Rather than trying to install them with your
bare hands, you should just try

    bundle install

With a bit of luck you've got Ruby installed so this command will do the right thing.

Then to generate and serve the pages locally:

    bundle exec jekyll serve

Whatever you push to GitHub will show up on the web site.


