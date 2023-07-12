# Task Summary
Python application written in flask with endpoints for two dummy users.

 Containerization, setting up CICD infastructure as Code and Configuration management for the application.

## Containers + CI/CD steps:

- Created a Dockerfile to build the image locally using Docker and run container
- Prepared CI process that builds the container image,pushes it to a registy (GitHub Container Registry for this case).
The Ci runs on push to main branch peridically on Saturday at 7pm

## Configuration Management
- Preparing a machine with Linux distribution, used terraform for this.
- Created a playbook which does the following:
  * Creates a user with script __nice-script.sh__ in their home directory. The script lists all munted file systems
  * Create a user with username John and User ID 1234, in homedirectory : /better-place/john
  * User John should run sudo command without need to provide his pasword and install Tmux and Vim packages. Then lastly install terraform CLI

  ### Ansible Setup:
 Since ansible is part of python, I installed ansible using the python method.
 Defined all the requirements in the requirements.txt. Then installed them with command

 ```
 pip install -r requirements.txt
 ```

 ## Ansible SSH:
 - Generating public key using ssh-keygen for ansible
 - Giving the key from AWS EC2 terraform configuration with chmod 700 permission
 - Creating ansible_hosts and replacing with the ip address to your instance
 - Creating a playbook file with your instruction

To test your ssh connection run the command:

  ```
   ansible hosts_to_add_key -m ping -i ansible_hosts
  ```
  ```
    ansible hosts_to_add_key -m ping -i ansible_hosts
    --user ubuntu --key-file ~/path to your ec2 key.pem
  ```
If you specify the right path and have the right permission expect to see success output as shown below before running your playbook.
![Ansible](/screenshot/Capture.JPG)

To run your playbook use the command:
```
ansible-playbook add-key.yml -i ansible_hosts -user ubuntu --key-file ~/keys/popo.pem -e "key=~/.ssh/id_rsa.pub"
```


## References used:
[Pushing Images to Container Registry](https://dev.to/willvelida/pushing-container-images-to-github-container-registry-with-github-actions-1m6b)

[Ansible Getting Started](https://www.youtube.com/results?search_query=getting+started+with+ansible+01)

[Installing Terraform](https://developer.hashicorp.com/terraform/downloads?ajs_aid=8edebcc0-620e-4d81-9f0e-029fa8433d7b&product_intent=terraform)