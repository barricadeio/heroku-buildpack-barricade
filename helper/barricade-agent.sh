#!/bin/bash

# Export the environment variables
export INSTALL_DIR="/app/.apt"
export BARRICADE_CONFIG="$INSTALL_DIR/opt/barricade/agent/barricade.cfg"
export BARRICADE_LOGDIR="/app/log/barricade"
export BARRICADE_PIDFILE="/app/run/barricade.pid"
export BARRICADE_ID_PATH="/app/barricade/id"
export BARRICADE_SOCKETS_PATH="/app/run/barricade"
export LD_LIBRARY_PATH="$INSTALL_DIR/opt/barricade/embedded/lib:$LD_LIBRARY_PATH"

# Create the new directories
mkdir -p /app/run
mkdir -p /app/barricade
mkdir -p /app/log/barricade

# Start agent
exec $INSTALL_DIR/opt/barricade/embedded/bin/python $INSTALL_DIR/opt/barricade/embedded/bin/barricade-agent
