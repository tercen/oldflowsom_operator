## Deploy

```R
options(repos = c(getOption("repos"), BiocInstaller::biocinstallRepos()))
packrat::init(options = list(use.cache = TRUE))
```

#!/usr/bin/env bash

```
rm -r packrat && rm .Rprofile && R --vanilla -e "packrat::init(options = list(use.cache = TRUE))"
```

```
git add -A && git commit -m "updated readme and modified params" && git tag -a 0.0.8 -m "++" && git push && git push --tags

