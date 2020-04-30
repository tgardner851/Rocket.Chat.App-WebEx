# Rocket.Chat.App-WebEx

Start a WebEx from inside Rocket.Chat with a slash command.

![Webex Preview](https://apps.rocketbooster.net/images/webex_02.png)

![Webex Slash Command](https://apps.rocketbooster.net/images/webex_01.png)

## 🚀 Getting Started

After installing from the Rocket.Chat Apps marketplace, please make sure you fill out the "Customize company" section in the App Details screen.

Type `/webex` or `/webex username` to start a webex in a group or direct message.

A permanent handle can be provided in the configuration. Full URLs should be supported as a parameter as well.

## Known Issues

There is an issue with the mobile Rocket.Chat clients where the WebEx join url will be invalid. The mobile clients display "Full Name" instead of "fname" for the join links. To get around this, make sure you type the full username after the /webex command to ensure mobile users can connect.
