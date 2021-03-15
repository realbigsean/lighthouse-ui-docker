#! /bin/bash

DEFAULT_NETWORK=mainnet

# Set testnet name
if [ "$NETWORK" = "" ]; then
	NETWORK=$DEFAULT_NETWORK
fi

if [ "$START_VALIDATOR" != "" ]; then

	exec lighthouse \
		--debug-level $DEBUG_LEVEL \
		--network $NETWORK \
		validator \
		--metrics \
		--metrics-address 0.0.0.0 \
		--metrics-allow-origin '*' \
		--http \
	    --http-address 0.0.0.0 \
		--http-allow-origin '*' \
		--beacon-node http://beacon_node:5052
fi
