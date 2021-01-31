<div align="center">
    <img src="https://imagineer.in/assets/img/posts/packer-ubuntu.png" alt="logo" width="350px" style="margin-top: 1em">
    <h1>Packer for Ubuntu server for ESXi Lab Environments</h1>
    <h4>Packer config to build ESXi guest from Ubuntu 20.04 server ISO file as a source.</h4>
</div>
<br>

## Ubuntu 20.04 Server

Run packer build:

```bash
$ packer build -var-file variables.json -on-error=ask -force ansible-packer.json
```
<br>

```bash
      "skip_export": "false",
      "output_directory": "output/live-server",
```
 will save the OVF package locally (in the output folder)

 <br>

The "variables.json" file contains ESXi connection params:
```bash
{
  "esxi_host": "<your esxi ip>",
  "esxi_datastore": "datastore",
  "esxi_username": "root",
  "esxi_password": "<your password>"
}
```


<br>
For more info: https://imagineer.in/blog/packer-build-for-ubuntu-20-04/

