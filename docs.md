# Theoritical SetUp:
## Infrastructure design for the deployment of 3 different applications
If tasked with deploying an environment in the cloud that is made of 3 (stateless) applications that should be deployed separately, 
consider the following points as a guide for the description of how you would approach this:

### Environmental SetUp:

####  **Would you use a support tool like linter? If so why?**
  
   I would use modern-day linters since right now it's not only about achieving clean code but also
   implementing  and detecting security vulnerabilities, memory leaks, and code compliance in the dev environment.
   They are also useful in catching bugs before they are pushed to production and giving instant feedback, so the same mistake can't be 
   made in the future.
   
#### How would you proceed with changes if suddenly you want to add another application (which has to be configured in a similar way to 
  the previous one) and potentially other resources?
  
  Since l used Terraform to set up my infrastructure, this approach is easier when adding other applications.
    Terraform has a tfvars which makes it simple to manage the variables and one can easily change resources to what they need.

#### **Is the environment immutable?**

   Since my stateless application, use microservices. They are immutable by nature, changes can't be made after deployment.
   This prevents inconsistent environments and simplified debugging. Since we used Ansible for configuration management, it means there are 
   increased security ad SSH can be disabled to reduce the attack vector, improving the organization's security posture.

####  How would you organize the artifacts that you generate with the deployment and configuration? 

- Container images - place them in a private container registry, AWS ECR
       
- CI Process - environment keys used in GitHub action workflow stored in the secrets
      configuring Git Guardian to get notified if any credential gets exposed to Github

- Infrastructure as Code tfstate files being placed in.git ignore file
       
- Monitoring - Using an APM like Kibana for the log analytics, which can then alert if there is a problem.

#### **Describe your approach for deployment**
  
  Understanding what the application is about and what it is supposed to achieve.
  
  Using GitHub for version control, setting up a new repo fo the applications and CI on the develop branch
  
  Setting up a different repo for Infrastructure, for this case using Terraform in AWS. To set up the AWS resources
  (blablabla)
  
  Configuring monitoring and security using .....
 

