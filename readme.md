# Running and testing Webassembly code using Gitlab CI

This repo contains dockerfile for image nnaumenko/emscripten-firefox and example how to automate running of WebAssembly tests directly in Firefox browser with Gitlab CI.

## Example

### Hello world

Purpose: use Gitlab CI to automatically build C++ program into WebAssembly, run the built program directly in Firefox browser, fail the CI Job if the program terminated abnormally and display the program's output. 

This can be used to automate simple tests for WebAssembly modules:

 * Emrun's exit code is the value returned by main() in hello.cpp. Returning non-zero value will cause Gitlab CI Job to fail. Non-zero return value can be used to signal failed tests.
 * The stdout and stderr of the C++ program are captured by Emrun. The output can be reviewed to identify the exact failure point. Alternatively the output can be redirected to file which can be parsed or forwarded to other CI Jobs as an artifact.

## Docker image

The image is based on [trzeci/emscripten-ubuntu](https://hub.docker.com/r/trzeci/emscripten-ubuntu) with Firefox browser added and configured to operate in headless mode.

To build the image:

	git clone https://gitlab.com/nnaumenko/gitlab-ci-wasm
    cd gitlab-ci-wasm/docker/emscripten-firefox
    sudo docker build -t myimage .

## Further reading

[Base docker image](https://hub.docker.com/r/trzeci/emscripten-ubuntu)

[Base docker image trzeci/emscripten repo](https://github.com/trzecieu/emscripten-docker)

[Emscripten](https://emscripten.org/)

[Emrun documentation](https://emscripten.org/docs/compiling/Running-html-files-with-emrun.html)

[Gitlab CI/CD documentation](https://docs.gitlab.com/ee/ci/quick_start/)
