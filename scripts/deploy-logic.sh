#!/bin/bash
echo "🚀 Executing Migration Practice Script..."
TARGET_ENV=$1

if [ "$TARGET_ENV" == "prod" ]; then
    echo "Applying PRODUCTION security patches..."
else
    echo "Running in STAGING mode..."
fi