.PHONY: test
	
start:
	@bin/rails s

test:
	@bundle exec rspec
