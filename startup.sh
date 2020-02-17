#!/usr/bin/env bash
# Start the cron service in the background. Unfortunately upstart doesn't work yet.
cron -f &

# Run the apache process in the foreground, tying up this so docker doesn't return.
apache2-foreground && tail -f ${APACHE_LOG_DIR}/access.log