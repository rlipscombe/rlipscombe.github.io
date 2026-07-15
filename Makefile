build:
	bundle exec jekyll build

publish: build
	rsync -e ssh -auvz --delete _site/ $(SSH_USER)@$(SSH_HOST):$(SSH_REMOTE_PATH)
