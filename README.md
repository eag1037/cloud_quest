<img width="1722" alt="Screen Shot 2023-02-03 at 5 00 18 PM" src="https://user-images.githubusercontent.com/124124655/216728864-605aa868-c32e-42e0-950c-082480d07cd4.png">


This assessment was really a breathe of fresh air.

 I was being asked to actually demonstrate some of the things I know and it was by far one of the more enjoyable assesments I've done.

If you follow the `Gettingstarted.md` you'll see a list of instructions you'll need to follow before you can actually jump into a cloud enviornment and begin writing any terraform. These are the bare minimum requirements outside understanding networking concepts, docker, IaC.

Given more time, I would improve... 

Well there's a number of short comings - I wanted to at minimum demonstrate compedency in a few areas.

- Documentaion - I often find that alot of tech debt is incurred due to lack of proper documentation. I used to hate writing docs, but after seeing how much my team appreciated good docs and how quickly they were able to work based off of great documentation. It became a stable that my team helped push to the rest of the organization. With more time I would have done the following.

        1. Used something like Scribe or Notion to document a complete step by step start to finish with screenshots.
        2. Documented the use of Terraform and the building of the Docker Application.
The docs would have been a complete how to - start to finish

- Terraform - For agility I ended up hardcoding a few things just to build my ec2 instance and VPC's quickly. I also brought the loadbalancer up and configured via the AWS console. As an improvement to the project i'd do the following;

        1. Terraform everything from IAM, VPC, Loadbalancers, EC2 and probably ECS (more on that).
        2. In the state my Terraform is in, it's not maintainable I would have used Terragrunt to keep all my backend configs dry. Removing all the hardcoding and being able to experiment without disturbing my main enviorment.
        3. Used Terragrunt to work with multiple moudles.

- Cloud Agnostic - This has the ability to be cloud agnostic with the use of modules and multiple providers. With more time I woulda stood this up in GCP and done things a bit differently with GCP.

        1. In GCP I would have brought up a GCP project. 
        2. Built modules for both GCP and AWS.

- Fully automated - This is the end goal have this deployment be fully automated start to finish. To achieve this I would have;

        1. Define all my variables in a `variables.tf` for each component.
        2. Used CloudDeploy to launch the application using ECS.

- Security - The SecOps part of me cried a bit during this project. I took alot of liberties just to achieve the goal. In a production enviornment I'd create an IAM user with specifically defined permissions and not just give it full admin permissions. I would have secured my routes as well I left my EC2 instance open to the internet as well as the web application. 

I find myself in a weird place where I'm doing multiple jobs since we had a 2/3 reduction in force at my current employer, while also completing several take home assessments. I wish I had more time to flesh everything out a bit more, but this exercise did help aleviate alot of the imposter syndrome I was carrying into the intial interview. I did a bit of everything just to demonstrate that I have the core competency needed for the role. 

There's always room for improvement, that's the exciting part.


