# Discord Orb

Easily integrate custom [Discord](https://discord.com/ "Discord") notifications into your [CircleCI](https://circleci.com/ "CircleCI") projects. Create custom alert messages for any job or receive status updates.

Learn more about [Orbs](https://circleci.com/docs/2.0/using-orbs/ "Using Orbs").

## Usage
Example config:

```yaml
version: 2.1

orbs:
  discord: teka23/discord@x.y.z/*

jobs:
  build:
    docker:
      - image: <docker image>
    steps:
      - discord/<command>
```

`discord@1.0.0` from the `teka23` namespace is imported into the config.yml as `discord` and can then be referenced as such in any job or workflow.

## Dependencies / Requirements

### Bash Shell
Because these scripts use bash-specific features, `Bash` is required.
`Bash` is the default shell used on CircleCI and the Orb will be compatible with most images.
If using an `Alpine` base image, you will need to call `apk add bash` before calling this Orb,
or create a derivative base image that calls `RUN apk add bash`.
If `Bash` is not available, an error message will be logged and the task will fail.

### cURL
cURL is used to post the Webhook data and must be installed in the container to function properly.

## Help

### How to get your Discord Webhook
Full instructions can be found at Discord: https://support.discord.com/hc/en-us/articles/228383668-Intro-to-Webhooks

### How To Get Your User/Role ID

You can find instructions at https://support.discord.com/hc/en-us/articles/206346498-Where-can-I-find-my-User-Server-Message-ID-

### What to do with Discord Webhook
You can implement the Webhook in one of two ways, either as an environment variable, or as a parameter.

1. In the settings page for your project on CircleCI, click `Environment Variables`. From that page you can click the `Add Variable` button. Finally, enter your webhook as the value, and `DISCORD_WEBHOOK` as the name.
2. You can enter the Webhook for the individual status or alert by entering it at the `webhook` parameter, as shown above.

## Contributing
We welcome [issues](https://github.com/teka23/discord-orb/issues) to and [pull requests](https://github.com/teka23/discord-orb/pulls) against this repository! For further questions/comments about this or other orbs, visit [CircleCI's Orbs discussion forum](https://discuss.circleci.com/c/ecosystem/orbs).

## License
This project is licensed under the MIT License - read [LICENSE](LICENSE) file for details.
