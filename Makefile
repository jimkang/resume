include config.mk

prettier:
	prettier index.html --write

push:
	git push origin master
	scp index.html $(USER)@$(SERVER):$(HTMLDIR)/resume
	scp resume.css $(USER)@$(SERVER):$(HTMLDIR)/resume
	scp *.png $(USER)@$(SERVER):$(HTMLDIR)/resume

