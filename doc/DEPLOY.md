## Deploy

```R
packrat::init(options = list(use.cache = TRUE))
```

#!/usr/bin/env bash

```
rm -r packrat && rm .Rprofile && R --vanilla -e "packrat::init(options = list(use.cache = TRUE))"
```

```
git add -A && git commit -m "init" && git tag -a 0.0.3 -m "++" && git push && git push --tags
https://github.com/tercen/flowsom_operator