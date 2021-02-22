# Secret Finder

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
  merge_conflict_job:
    runs-on: ubuntu-latest
    name: Find merge conflicts
    steps:
      # Checkout the source code so we have some files to look at.
      - uses: actions/checkout@v2
      # Run the actual merge conflict finder
      - name: Secret finder
        uses: govindarajanv/secrets-finder@v2.5
```

On each push, it will now run the scan for secrets
