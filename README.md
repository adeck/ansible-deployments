# ansible-deployments

This is a repo for, as the name suggests, automated deployments using Ansible.

It is written in such a way as to be scalable and pluggable; starting a new project, mixing-and-matching roles, and getting up-to-speed on the existing codebase should be as easy as possible, and maintaining the result should also be as easy as possible. In order to maintain these constraints, a number of mandatory [guidelines][] are enforced for all code present here.

## Why does it look so terrible right now?

At the moment, this repository is relatively new, so a lot of my existing code is being ported here. The format isn't quite the same, and some items must be encrypted before they can be brought here. Additionally, while I have formal specifications in mind, and already somewhat enforced here, much of that still needs to be written in the wiki documentation, and cleaned up in the code.

While progress is being made (as monitoring of the issue tracker, wiki, and codebase will attest), this will not be production-ready in any meaningful sense until August 10th. All the buzz will be in the issue tracker; all items with the `in-progress` tag are being actively worked on, so an easy way to gauge progress is to look up action on tickets with that label.

**NOTE:** At the moment, most of the work is going into the documentation. While that may sound backwards, it's actually the most important part of the project; you can't write guidelines / best practices for something **after** you've written the code. In the same way that you can't win the world championship for most hot dogs consumed within three minutes until you have first won the Coney Island semi-finals.

[guidelines]: https://github.com/adeck/ansible-deployments/wiki/guidelines

