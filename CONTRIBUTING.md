# Contributing Guidelines

With pleasure happy to invite you to collaborate on developing this repository! :two_hearts:

> 👉 **Note**: before participating in our community, please read our
> [Code Of Conduct](https://github.com/wiefunkdai/.github/blob/master/CODE_OF_CONDUCT.md).
> By interacting with this repository, organization, or community you agree to
> abide by its terms.

## :crown: Community Guidelines

Hi there! We're thrilled that you'd like to contribute to this project. Your help is essential for keeping it great.

Please review our [Code Of Conduct](https://github.com/wiefunkdai/.github/blob/master/CODE_OF_CONDUCT.md). It is in effect at all times. We expect it to be honored by everyone who contributes to this project. Acting like an asshole will not be tolerated.

In this guide you will get an overview of the contribution workflow from opening an issue, creating a PR, reviewing, and merging the PR.

There’s several ways to contribute, not just by writing code.
If you have questions, see [Support](https://github.com/wiefunkdai/.github/blob/master/SUPPORT.md) file.

## :eyes: Finding Good, Filing Bugs and Change Requests

> *Before spending lots of time on something, ask for feedback on your idea first!*

Please search issues and pull requests before adding something new to avoid duplicating
efforts and conversations.

This project welcomes non-code contributions, too! The following types of contributions
are welcome:

- **Ideas**: participate in an issue thread or start your own to have your voice heard.
- **Writing**: contribute your expertise in an area by helping expand the included docs.
- **Copy editing**: fix typos, clarify language, and improve the quality of the docs.
- **Formatting**: help keep docs easy to read with consistent formatting.

## :bulb: Asking Any Questions Support

See our [Support Guide](https://github.com/wiefunkdai/.github/blob/master/SUPPORT.md). In short, GitHub issues are not the appropriate place to debug your specific project, but should be reserved for filing bugs and feature requests.

## :inbox_tray: Bug Reports and Other Issues

If you find any problems in the coding provided by **StephanusDai**. You can submit a new [**`Trouble Tickets`**](https://github.com/wiefunkdai/ShellLinuxAutoBackupFile/discussion) reposity.

## :bulb: Forum Discussions

Communicate well to find what you are looking for through this [**`Discussions`**](https://github.com/wiefunkdai/ShellLinuxAutoBackupFile/discussion) reposity.

> :warning: **WARNING!**\
> *The [Issue Forms](https://github.com/wiefunkdai/ShellLinuxAutoBackupFile/issues/) and [Discussion Forums](https://github.com/wiefunkdai/ShellLinuxAutoBackupFile/discussions/) in each repository are different from Global Discussions and Global Issues,
> therefore it is highly recommended if you want to provide suggestions and send bug report that are very valuable to me.*

## :wine_glass: Request for Changes / Pull Requests
You first need to create a fork of the [ShellLinuxAutoBackupFile](https://github.com/wiefunkdai/ShellLinuxAutoBackupFile) repository to commit your changes to it.
Methods to fork a repository can be found in the [GitHub Documentation](https://docs.github.com/en/get-started/quickstart/fork-a-repo).

Then add your fork as a local project:

```sh
# Using HTTPS
git clone https://github.com/wiefunkdai/ShellLinuxAutoBackupFile.git

# Using SSH
git clone git@github.com:wiefunkdai/ShellLinuxAutoBackupFile.git
```

> [Which remote URL should be used ?](https://docs.github.com/en/get-started/getting-started-with-git/about-remote-repositories)

Then, go to your local folder

```sh
cd ShellLinuxAutoBackupFile
```

Add git remote controls :

```sh
# Using HTTPS
git remote add fork https://github.com/YOUR-USERNAME/ShellLinuxAutoBackupFile.git
git remote add upstream https://github.com/wiefunkdai/ShellLinuxAutoBackupFile.git


# Using SSH
git remote add fork git@github.com:YOUR-USERNAME/ShellLinuxAutoBackupFile.git
git remote add upstream git@github.com/wiefunkdai/ShellLinuxAutoBackupFile.git
```

You can now verify that you have your two git remotes:

```sh
git remote -v
```

### Receive remote updates
In view of staying up to date with the central repository :

```sh
git pull upstream master
```

### Choose a base branch
Before starting development, you need to know which branch to base your modifications/additions on. When in doubt, use master.

| Type of change                |           | Branches              |
| :------------------           |:---------:| ---------------------:|
| Documentation                 |           | `master`              |
| Bug fixes                     |           | `master`              |
| New features                  |           | `master`              |
| New issues models             |           | `YOUR-USERNAME:patch` |

```sh
# Switch to the desired branch
git switch master

# Pull down any upstream changes
git pull

# Create a new branch to work on
git switch --create patch/1234-name-issue
```

Commit your changes, then push the branch to your fork with `git push -u fork` and open a pull request on the [ShellLinuxAutoBackupFile](https://github.com/wiefunkdai/ShellLinuxAutoBackupFile/) repository following the template provided.


## :memo: Contrib with Under License

> **Any contributions you make will be under the BSD Software License**
>
> In short, when you submit changes, your submissions are understood to be under the same [**`BSD-3 Clause License`**](https://github.com/wiefunkdai/.github/blob/master/LICENSE.md) that covers the project. Feel free to contact the maintainers if that's a concern.
>

### License of All Free Open Sources

By contributing, you agree that your contributions will be licensed under its [**`BSD-3 Clause License`**](https://github.com/wiefunkdai/.github/blob/master/LICENSE.md).

### License of Official and User-contributed Documentation

The text contained in the official and user-contributed project documentation as stated as other content on project, except the license projects or documents themselves and as otherwise noted, is licensed under the [**`Creative Commons Attribution 4.0 International (CC-BY-4.0)`**](https://github.com/wiefunkdai/.github/blob/master/LICENSE.md).

See [Support][support] for details.

## :rose: Funds or Financial support

I open-source almost everything I can and try to reply to everyone needing help using these projects. Obviously, this takes time. You can use this service for free.

If you are using this project and are happy with it or just want to encourage me to continue creating stuff, there are a few ways you can do it:

- Giving proper credit on the GitHub Sponsors page. [![Static Badge](https://img.shields.io/badge/%20Sponsor%20-gray.svg?colorA=EAEAEA&colorB=EAEAEA&style=fat&logo=githubsponsors&logoColor=EA4AAA)](https://github.com/sponsors/wiefunkdai)
- Starring and sharing the project :star:
- You can make one-time donations via PayPal. I'll probably buy a coffee :coffee: or tea :tea: or cake :cake: <br>
  [![paypal.me/wiefunkdai](https://img.shields.io/badge/%20Donate%20Now%20-gray.svg?colorA=2C5364&colorB=0F2027&style=for-the-badge&logo=paypal&logoColor=white)](https://www.paypal.me/wiefunkdai)
- It’s also possible to support mine financially by becoming a backer or sponsor through<br>
  [![opencollective.com/wiefunkdai](https://img.shields.io/badge/%20Donate%20Now%20-gray.svg?colorA=355C7D&colorB=2980B9&style=for-the-badge&logo=opencollective&logoColor=white)](https://www.opencollective.com/wiefunkdai)

However, I am available for hire. You can also give me career opportunities to help your business in developing the software you need. Please contact me at:<br>
[![wiefunk@stephanusdai.web.id](https://img.shields.io/badge/%20Send%20Mail%20-gray.svg?colorA=EA4335&colorB=93291E&style=for-the-badge&logo=gmail&logoColor=white)](mailto:wiefunk@stephanusdai.web.id)
[![t.me/wiefunkdai](https://img.shields.io/badge/%20Telegram%20-gray.svg?colorA=2C5364&colorB=0083B0&style=for-the-badge&logo=telegram&logoColor=white)](https://t.me/wiefunkdai)
[![linkedin.com/in/wiefunkdai](https://img.shields.io/badge/%20LinkedIn%20-gray.svg?colorA=005AA7&colorB=004e92&style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/wiefunkdai)

## :pray: Thanks for your contribute and support! :heart_eyes: :heart:

> Any Questions & Other Supports? see [Support](https://github.com/wiefunkdai/.github/blob/master/SUPPORT.md) please.


***

<p align="center">
    <a href="https://www.stephanusdai.web.id">Visit Website</a>
    ·
    <a href="https://github.com/wiefunkdai/.github/issues/new/choose">Global Issues</a>
    ·
    <a href="https://github.com/wiefunkdai/.github/discussions">Global Discussions</a>
    ·
    <a href="https://github.com/wiefunkdai/.github/wiki">Global Wiki</a>
</p>
<p align="center">
  Copyright &copy; ID 2023 Stephanus Bagus Saputra &#40;<a href="https://www.stephanusdai.web.id">www.stephanusdai.web.id</a>&#41;<br>
  All rights reserved.
</p>