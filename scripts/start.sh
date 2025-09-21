#!/bin/bash
set -e

echo "Starting services in the background..."

# Start Streamlit app
streamlit run streamlit_app.py --server.enableCORS false --server.enableXsrfProtection false &
echo "  - Streamlit server starting."

# Start Marimo file browser without authentication
marimo edit --no-token &
echo "  - Marimo server starting."

echo "Services are running. The script will now wait indefinitely."

# Wait for all background jobs to complete
wait
