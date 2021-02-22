# Secrets Finder

Credit: olivernybroe (used his merge conflict tool as a reference and did this POC)

Please don't use this for your work. It is just a POC

This action finds secrets in your repository.


## How to use it?
This is a Github action, so it has to be added to a github workflow.  
A simple example of running this action on all pushes to the repository would be
add a `main.yml` file under `.github/workflows` with the following content
```yaml
on: [push]

jobs:
  secret_scan:
    runs-on: ubuntu-latest
    name: Find secrets
    steps:
    # Checkout the source code so we have some files to look at.
    - uses: actions/checkout@v2
    # Run the secrets finder
    - name: secrets finder
      uses: govindarajanv/secrets-finder@v2.6
```

On each push, it will now run the scan for secrets

## Reference
[This action on Github Marketplace](https://github.com/marketplace/actions/govind-secret-finder)
