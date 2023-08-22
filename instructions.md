## HANDS ON ANSIBLE:
This hands-on project tests one's ability to understand Linux and Configuration Management with AWS. It's meant to be beginner friendly.
## End Goal:
- [x]  Setup Ansible  Controller Machine
- [x] Setup ANisble Host Machine
- [x]  Make Connections Between Controller and Hosts
- [x]  Adding Playbook
- [x] Running the playbook
## Tasks:
 - [ ] Prepare a machine with your favorite Linux (server) distribution. It can be a virtual machine set up with a local hypervisor or an EC2 Instance at AWS.
   - If you provisioned the EC2 instance, shortly describe how you did it. If you use Terraform, please provide the code. If you used AWS Web Console, tell us the steps taken.
- [ ] Create a playbook that does the following:
   - [ ] Each new user should have a script called nice-script.sh in their home directory (hint: use "skeleton directory") The script should list all mounted filesystems
       - [x] Create the script with the correct command
      - [x] Copy the script to the remote machine into the correct directory

- [ ] Create a user with:
   - [x]  Username: John
   - [x] Home:/better-place/john (create /better-place before if needed)
   - [x] User ID: 1234

- [ ] User John should be able to run the following command without a need to provide his password:whoami

- [ ] Install packages:
    - [ ] Tmux
    - [ ] vim

- ---
### Support
- If you have any suggestions or need assistance on this hands-on let me know.
 - If you have issues with setting up Ansible check this article
     - [Ansible Setup](https://medium.com/@elcymarion_her/setting-up-ansible-the-easier-way-and-ssh-into-aws-ec2-7c7ed2766ed6)

Thank you for joining ......
---
