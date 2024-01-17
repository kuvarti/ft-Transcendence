#!/bin/bash

# Pull the latest updates from the repository
git pull

# Launch the npm project
npm run start

# Keep the container running
tail -f /dev/null
