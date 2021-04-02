# Rocket.Chat.App-WebEx

Start a WebEx from inside Rocket.Chat with a slash command.

# Deprecated

This project will no longer be maintained by me, I have retired my Rocket.Chat server in favor of a Matrix Synapse server.

## Configuration

After installing from the Rocket.Chat Apps marketplace, please make sure you fill out the "Customize company" section in the App Details screen.

Type `/webex` or `/webex username` to start a webex in a group or direct message.

A permanent handle can be provided in the configuration. Full URLs should be supported as a parameter as well.

## Docker
A Dockerfile and docker-compose are provided.

Build the docker image and run it to deploy to your server:
`docker build -t rocketchatapp_webex . && docker run -it --rm -e URL=YOUR_SERVER -e USERNAME=YOUR_USERNAME -e PASSWORD=YOUR_PASSWORD rocketchatapp_webex`

Build the docker image and run docker-compose to deploy to your server:
`docker build -t rocketchatapp_webex . && docker-compose run --rm -e URL=YOUR_SERVER -e USERNAME=YOUR_USERNAME -e PASSWORD=YOUR_PASSWORD rocketchatapp_webex`
