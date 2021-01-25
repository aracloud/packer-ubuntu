<div align="center">
    <img src="https://imagineer.in/assets/img/posts/packer-ubuntu.png" alt="logo" width="350px" style="margin-top: 1em">
    <h1>Packer for Ubuntu server for ESXi Lab Environments</h1>
    <h4>Packer config to build ESXi guest from Ubuntu 20.04 server ISO file as a source.</h4>
</div><br>

## Ubuntu 20.04 Server

Run packer build:

```bash
$ packer build -var-file variables.json -on-error=ask -force ubuntu-20.04-live-server-packer.json
```

<br>
This repo was copied from https://github.com/Praseetha-KR.
<br>
For more info: https://imagineer.in/blog/packer-build-for-ubuntu-20-04/

## ESXi connection setup

The file variables.json defines the ESXi connection setup params.
