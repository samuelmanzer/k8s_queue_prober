To push to a local registry, set the `IMAGE_PREFIX` environment variable. Be careful: you must ensure that your environment variable propagates through `sudo` if you require `sudo` to run docker commands. For example:

```
export IMAGE_PREFIX='localhost:5000/'
sudo -E make run
```
