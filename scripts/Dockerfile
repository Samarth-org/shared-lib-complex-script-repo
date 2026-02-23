FROM alpine
# Install node just to run the app.js
RUN apk add --no-cache nodejs
COPY app.js /app.js
CMD ["node", "/app.js"]