#!/bin/bash

PARAMS=""
while (( "$#" )); do
  case "$1" in
    -c|--channel)
      CHANNEL=$2
      shift 2
      ;;
    -n|--name)
      USERNAME=$2
      shift 2
      ;;
    -e|--emoji)
      EMOJI=":$2:"
      shift 2
      ;;
    --) # end argument parsing
      shift
      break
      ;;
    -*|--*=) # unsupported flags
      echo "Error: Unsupported flag $1" >&2
      exit 1
      ;;
    *) # preserve positional arguments
      PARAMS="$PARAMS $1"
      shift
      ;;
  esac
done

MSG=$*
PATHDIR=`dirname $0`
HOOK=`grep legends ${PATHDIR}/hooks | cut -d: -f2-`

PAYLOAD="payload={\"channel\": \"#$CHANNEL\", \"username\": \"$USERNAME\", \"text\": \"$MSG\", \"icon_emoji\": \"$EMOJI\"}"

curl -s -X POST --data-urlencode "$PAYLOAD" "$HOOK" > /dev/null


