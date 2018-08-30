.PHONY: all

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

up:
	# ## nginx起動
	# brew services start nginx
	## unicorn起動
	bundle install
	bundle exec unicorn -c ./config/unicorn.rb -D

stop:
 	## unicorn停止
	kill -QUIT `cat ./tmp/pids/unicorn.pid`
	# ## nginx停止
	# brew services stop nginx

clean: ## unicorn.pidとlogファイルが消えます
	rm -rf ./log/*
	rm -rf ./tmp/pids/unicorn.pid

ps: ## プロセスの確認
	ps -ef | grep unicorn
	# ps -ef | grep nginx
