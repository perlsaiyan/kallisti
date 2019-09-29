#!/bin/bash

CHANNEL="#legends"
USERNAME=$1
shift
MSG=$*

case ${USERNAME} in
    Pif)
        EMOJI=":evergreen_tree:"
        ;;
    *)
        EMOJI=":ghost:"
        ;;
esac

PAYLOAD="payload={\"channel\": \"$CHANNEL\", \"username\": \"$USERNAME\", \"text\": \"$MSG\", \"icon_emoji\": \"$EMOJI\"}"
HOOK=https://hooks.slack.com/services/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

curl -X POST --data-urlencode "$PAYLOAD" "$HOOK"


