The below instructions are written with the assumption that you're using a Mac, before you can jump into the IaC and Cloud you'll need to set up your enviornment

#Prerequisites

MacOS
- Install home brew
	-*Open a terminal on your Mac and run the following command to install home-brew
	`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)”`

- Install Terraform
	- run `brew install terraform`
		* run the command `terraform version` once installed to confirm your installation.
		  the expected output should be something similar to`Terraform v1.3.7`

- Install AWS CLI
	- run the command `brew install awscli`
		* run the command `aws —version` to confirm your installation
		  the expected output should be something similar to `aws-cli/2.9.19 Python/3.11.1 Darwin/21.3.0 source/arm64 prompt/off`

- Install GitHub CLI
	- run ‘brew install github`

- Generate SSH keys
	- run `ssh-keygen -t ed25519 -C “your GitHub email”`
		* Expected output Generating public/private ed25519 key pair. Enter file in which to save the key 		(location where key is saved) enter a passphrase for the key).
	- confirm you have a public key ‘cat “location of key”’ example ; ` /Users/eric/.ssh/id_ed25519.pub`

- Upload ssh key to Github
	- login to GitHub after creating your account
	- Click your profile picture in the top right > Settings >  SSH and GPG keys > New SSH key > Name your key and paste the output from the ‘cat “location of key command” above.

- Clone the needed repository to get Started 
	`git@github.com:rearc/quest.git

- You're now ready to get started in AWS using terraform!`
