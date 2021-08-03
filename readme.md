# Container Tool Shed

This simple file server is intended to work as a local binary server for building container images that require various dependencies.
This allows local containers to use build artifacts without having to copy them into the build context.

This is can be used as a simple alternative to something like Artifactory for local development.

To use it, start the nginx server by running `start_server.sh`, and then use wget to grab the desired file or artifact.
For example: `wget localhost:1010/<filename>` or wget `localhost:1010/<subdirectory>/<filename>`
To add new artifacts, simply place them into the directory where the `start_server.sh` script is being run.
The `stop_server.sh` script can be used to stop the server.

## Additional Info

By default, the nginx server doesn't like to serve up files over 1 or 2 GBs.
To overcome this, the default.conf file in the repo adjusts some settings to allow for larger files.

To build the image, run the following:

```bash
docker build . --tag fileserver:latest
```
