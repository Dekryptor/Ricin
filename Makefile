style:
	astyle \
		--style=attach \
		--indent=spaces=2 \
		--indent-namespaces \
		--indent-switches \
		--add-brackets \
		$(wildcard src/*.vala) \
		$(wildcard src/*/*.vala) \
		$(wildcard src/*/*/*.vala) \
		$(wildcard src/vapis/*.vapi)

clean-style:
	rm -f \
		$(wildcard src/*.vala.orig) \
		$(wildcard src/*/*.vala.orig) \
		$(wildcard src/*/*/*.vala.orig) \
		$(wildcard src/vapis/*.vapi.orig)

.PHONY: style clean-style
