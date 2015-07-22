# ansible-deployments

This repo is where I plan on keeping (some of) my ansible deployments.

Initially, I was keeping them all in separate repositories, because everything in one repo can get extremely cluttered. However, to keep the things I write as DRY and modular as possible, I wanted to make easy role / host pluggability a top priority. And I've decided to open source this stuff because, if it's well written, that shouldn't matter. And if it's badly written, hopefully someone nice will tell me.

So, I'll be moving the scripts I've written to automate provisioning my blog's repo, and deploying new builds, here, as well as the scripts for a VPN deployment. At the moment, none of them are actually in production use because I want there to be some measure of auditing, and far more hardening, in place. So, fwknopd, fail2ban, AIDE, system & log monitoring, etc.

Anyway, longer term, the deployments I want to put on here are:

- VPN
- blog (http, https)
- MX
- DNS
- IRC (for personal use)
