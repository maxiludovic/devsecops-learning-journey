# Lab 01 – Budget alert, resource groups and tags

**Date:** 2026-10-17 · **AZ-104 domain:** Identities & governance / cost management

## What I did
- Created a monthly budget (`budget-lab`) with email alerts at 50 %, 80 % and 100 %
- Created a resource group with tags `projet=az104-labs` and `owner=ludovic` in the portal
- Did the same with Azure CLI from WSL, then added a tag with `update --set`
- Filtered resource groups by tag, then deleted both groups

## Key commands
​```bash
az group create -n rg-lab-01-cli -l germanywestcentral --tags projet=az104-labs owner=ludovic
az group update -n rg-lab-01-cli --set tags.env=lab
az group list --tag owner=ludovic -o table
az group delete -n rg-lab-01-cli --yes
​```

## Problems & fixes
- **Tags inverted in the portal** (name and value mixed up) → name = the question (`owner`), value = the answer (`ludovic`)
- **Forgot the WSL sudo password** → reset it with `wsl -u root` then `passwd <user>`
- **`az group update --set tags env=lab` failed** → the group name (`-n`) was missing and the syntax is `tags.env=lab` (dot, no space)

## What I learned
A budget only alerts, it does not block spending. Tags make it possible to know who owns a resource and which project pays for it.
