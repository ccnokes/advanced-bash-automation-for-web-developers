# Add executable files to your $PATH with bash

You can append to your system's PATH like so in your bash_profile:
```bash
export PATH="$PATH:~/my-scripts"
```

You can also symlink an executable into a prexisting folder in your PATH. For example:
```bash
ln -s my-script /usr/local/bin
```

