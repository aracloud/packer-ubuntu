"builders" = {
  "boot_command" = ["\u003center\u003e\u003center\u003e\u003cf6\u003e\u003cesc\u003e\u003cwait\u003e ", "autoinstall ds=nocloud-net;seedfrom=http://{{ .HTTPIP }}:{{ .HTTPPort }}/", "\u003center\u003e\u003cwait\u003e"]

  "boot_wait" = "5s"

  "guest_os_type" = "ubuntu-64"

  "http_directory" = "subiquity/http"

  "iso_checksum" = "{{user `iso_checksum`}}"

  "iso_urls" = ["{{user `iso_file`}}", "{{user `iso_url`}}"]

  "keep_registered" = true

  "name" = "ubuntu-20.04"

  "output_directory" = "output/live-server"

  "remote_datastore" = "{{user `esxi_datastore`}}"

  "remote_host" = "{{user `esxi_host`}}"

  "remote_password" = "{{user `esxi_password`}}"

  "remote_type" = "esx5"

  "remote_username" = "{{user `esxi_username`}}"

  "shutdown_command" = "echo {{user `ssh_pass`}} | sudo -S shutdown -P now"

  "skip_export" = "false"

  "ssh_handshake_attempts" = "100"

  "ssh_password" = "ubuntu"

  "ssh_pty" = true

  "ssh_timeout" = "30m"

  "ssh_username" = "ubuntu"

  "type" = "vmware-iso"

  "vmx_data" = {
    "ethernet0.networkName" = "VM Network"

    "memsize" = "1024"

    "numvcpus" = "1"
  }

  "vnc_disable_password" = "true"
}

"provisioners" = {
  "scripts" = ["./script.sh"]

  "type" = "shell"
}

"provisioners" = {
  "extra_arguments" = [""]

  "playbook_file" = "./playbook.yml"

  "type" = "ansible-local"
}
