analytics.js: analytics.min.js
	node_modules/.bin/js-beautify -f $<  > $@

analytics.min.js:
	curl https://www.google-analytics.com/analytics.js > $@

analytics_debug.min.js:
	curl https://www.google-analytics.com/analytics_debug.js > $@

analytics_debug.js: analytics_debug.min.js
	node_modules/.bin/js-beautify -f $<  > $@

clean:
	rm -f analytics.js analytics.min.js analytics_debug.js analytics_debug.min.js

.PHONY: clean
