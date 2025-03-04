DAILY_CHECKLIST := ~/Documents/dailychecklist/daily-checklist.md
DATE := $(shell date +%Y%m%d)
BACKUP_FILE := $(DATE).md

$(BACKUP_FILE): $(DAILY_CHECKLIST)
	cp $(DAILY_CHECKLIST) $(BACKUP_FILE)
	echo "Created copy of $(DAILY_CHECKLIST) as $(BACKUP_FILE)"

.PHONY: backup

backup: $(BACKUP_FILE)
