backup:
	make backup-config
	make backup-init
	make backup-keymap
	make backup-project-viewer
	make backup-snippets
	make backup-styles
	make backup-packages

update:
	make update-packages
	make update-config
	make update-init
	make update-keymap
	make update-project-viewer
	make update-snippets
	make update-styles

backup-config:
	cp ~/.atom/config.cson .

update-config:
	cp config.cson ~/.atom

backup-init:
	cp ~/.atom/init.coffee .

update-init:
	cp init.coffee ~/.atom

backup-keymap:
	cp ~/.atom/keymap.cson .

update-keymap:
	cp keymap.cson ~/.atom

backup-project-viewer:
	cp ~/.atom/project-viewer.json .

update-project-viewer:
	cp project-viewer.json ~/.atom

backup-snippets:
	cp ~/.atom/snippets.cson .

update-snippets:
	cp snippets.cson ~/.atom

backup-styles:
	cp snippets.cson ~/.atom

update-styles:
	cp styles.less ~/.atom

clear-packages:
	apm uninstall .

backup-packages:
	apm list --bare --enabled --installed > package-file.txt

update-packages:
	make clear-packages
	apm install --packages-file package-file.txt
