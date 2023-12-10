#!/usr/bin/env bash
if [ -d /config ]; then
	cp /config/settings.yml /app
fi

sh -c "java -jar $1 /app/limbo.jar"
