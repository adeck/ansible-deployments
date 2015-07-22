# ansible-deployments

This repo is where I keep (some of) my ansible deployments.

Specifically, it's where I keep the deployments for my blog and VPN servers. Previously these deployments were kept in separate repos, and followed a slightly different / more traditional convention for file location than used here. This format was chosen to encourage clean coding conventions, readability, and code modularity, and it does that by associating roles, hosts and groups with projects (i.e. collections of related playbooks) via symbolic links.

In the past I've noticed ansible repos tend to have a structure which is either too flat (e.g. all the roles are under a single 'roles' directory, and all the playbooks- regardless of which roles they use- are also in one place), or to specific (only one project in the repo and the modules aren't easily reusable / well-documented).
