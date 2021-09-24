include config.mk

format:
	js-beautify -r index.html --indent-size 2 --wrap-line-length 120

push:
	git push origin master
	scp index.html $(USER)@$(SERVER):$(HTMLDIR)/resume
	scp resume.css $(USER)@$(SERVER):$(HTMLDIR)/resume
	scp *.png $(USER)@$(SERVER):$(HTMLDIR)/resume
	scp *.pdf $(USER)@$(SERVER):$(HTMLDIR)/resume
