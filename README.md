# Task Summary
Python application written in Flask with get user endpoints for two dummy users.

 Containerization, setting up CICD infrastructure as Code and Configuration management for the application.

## Containers + CI/CD steps:

- Created a Dockerfile to build the image locally using Docker and run a container
- Prepared CI process that builds the container image, and pushes it to a registry (GitHub Container Registry for this case).
The Ci runs on push to the main branch periodically on Saturday at 7 pm

## Configuration Management
- Preparing a machine with Linux distribution, used Terraform for this.
- Created a playbook that does the following:
  * Creates a user with script __nice-script.sh__ in their home directory. The script lists all mounted file systems
  * Create a user with username John and User ID 1234, in-home directory: /better-place/john
  * User John should run the sudo command without providing his password and installing Tmux and Vim packages. Then lastly install Terraform CLI

  ### Ansible Setup:
 Since Ansible is part of Python, I installed Ansible using the Python method.
 Defined all the requirements in the requirements.txt. Then installed them with the command

 ```
 pip install -r deploy_requirements.txt
 ```

 ## Ansible SSH:
 - Generating public key using ssh-keygen for Ansible
 - Giving the key from AWS EC2 terraform configuration with chmod 700 permission
 - Creating ansible_hosts and replacing them with the IP address of your instance
 - Creating a playbook file with your instruction

To test your ssh connection run the command:

  ```
   ansible hosts_to_add_key -m ping -i ansible_hosts
  ```
  ```
    ansible hosts_to_add_key -m ping -i ansible_hosts
    --user ubuntu --key-file ~/path to your ec2 key.pem
  ```
If you specify the right path and have the proper permission, you should see the successful output as shown below before running your playbook.

![Ansible](/screenshot/Capture.JPG)

To run your playbook use the command:
```
ansible-playbook add-key.yml -i ansible_hosts -user ubuntu --key-file ~/keys/popo.pem -e "key=~/.ssh/id_rsa.pub"
```


## References used:
[Pushing Images to Container Registry](https://dev.to/willvelida/pushing-container-images-to-github-container-registry-with-github-actions-1m6b)

[Ansible Getting Started](https://www.youtube.com/results?search_query=getting+started+with+ansible+01)

[Installing Terraform](https://developer.hashicorp.com/terraform/downloads?ajs_aid=8edebcc0-620e-4d81-9f0e-029fa8433d7b&product_intent=terraform)

[Ansible](https://www.middlewareinventory.com/blog/ansible-ec2-ssh-key/#Steps_to_Add_SSH_Key_to_EC2_Instances)

Side Note: I understand as a DevOps best practice Infrastructure as Cod/Configuration setup should be in a different Repo with the application repo, but instead included them together for other reasons
