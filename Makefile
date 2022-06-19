DEBUG=JEKYLL_GITHUB_TOKEN=blank PAGES_API_URL=https://github.com/Antares-Wendi-Yu/NeuralSignalProcessing.github.io

default:
	@gem install jekyll bundler && bundle install

update:
	@bundle update

clean:
	@bundle exec jekyll clean

build: clean
	@${DEBUG} bundle exec jekyll build --profile --config _config.yml,.debug.yml

server: clean
	@${DEBUG} bundle exec jekyll server --livereload --config _config.yml,.debug.yml
