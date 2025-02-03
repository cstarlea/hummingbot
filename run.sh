#!/usr/bin/with-contenv bashio

# Read the ui_mode configuration option.
UI_MODE=$(bashio::config 'ui_mode')

if [ "$UI_MODE" = "dashboard" ]; then
  echo "Starting Hummingbot Dashboard (with Back-End API and Quants Lab)..."
  # This command is assumed to launch the full UI suite.
  # (Check Hummingbot’s documentation in case additional flags are needed.)
  hummingbot start --dashboard
else
  echo "Starting Hummingbot in CLI mode..."
  hummingbot start --strategy "$(bashio::config 'strategy')" \
                   --exchange "$(bashio::config 'exchange')" \
                   --trading_pair "$(bashio::config 'trading_pair')"
fi
