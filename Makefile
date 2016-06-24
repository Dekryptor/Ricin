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
