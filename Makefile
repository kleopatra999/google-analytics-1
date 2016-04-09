analytics.js: analytics.min.js
	node_modules/.bin/js-beautify -f $<  > $@

analytics.min.js:
	curl https://www.google-analytics.com/analytics.js > $@

clean:
	rm -f analytics.js analytics.min.js

.PHONY: clean
