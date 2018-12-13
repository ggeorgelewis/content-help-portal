FROM ruby
RUN apt-get update
RUN gem install jekyll bundler

COPY . /build/
RUN mv /build/demo-content/ /demo-content

RUN dpkg -i /build/pandoc-2.4-1-amd64.deb
RUN rm /build/pandoc-2.4-1-amd64.deb
WORKDIR /demo-content/

#  change link url for README.md to index.md in SUMMARY.md
RUN sed -i -e 's/(README.md)/(index.md)/g' SUMMARY.md

# find/replace .md file extensions to .html on all links
RUN find . -type f -name "*.md" -print0 | xargs -0 sed -i -e 's/.md/.html/g'

# find/add {{ site.baseurl}}/assets to all images in markdown
RUN find . -type f -name "*.md" -print0 | xargs -0 sed -i -e 's/\/assets\//{{ site.baseurl }}\/assets\//g'

# rename README.md to index.md
RUN mv README.md index.md

# pre-convert SUMMARY.md to static HTML, save in _includes/ folder
RUN mkdir _includes
RUN pandoc --from gfm --to html SUMMARY.md --output _includes/SUMMARY.html

#  add {{ site.baseurl }} to all links in SUMMARY.html
RUN sed -i -e 's/href="/href="{{ site.baseurl }}\//g' _includes/SUMMARY.html

# Add empty front matter to all md pages or jekyll will not process them
RUN find . -type f -name "*.md" -print0 | xargs -0 sed -i  '1i---\n---'

RUN cp -rf /demo-content/* /build/

WORKDIR /build/
RUN bundle install
RUN bundle exec jekyll build