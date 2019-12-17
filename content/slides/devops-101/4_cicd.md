+++
outputs = ["Reveal"]
weight = 40
+++

{{< slide 
    id="cicd" 
    transition="convex" 
    background-image="./images/background6.jpg" 
    background-size=100%
    background-position="center"
>}}

{{% section %}}

## CI/CD

This model is deceptively simple. It's component parts are:

- {{< frag c="*Continuous Integration*" >}}
- {{< frag c="*Continuous Delivery*" >}}
{{< frag c="/*Continuous Deployment*" >}}
{{< frag c=" (Automatic deployment to an environment)" >}}

{{% note %}}
Don't forget the most important one! :)
{{% /note %}}

---

## The hidden **CI**

**Continuous Improvement**

If this is not happening then you are on a different model.

{{% note %}}
One might say that without the goal of improvement you are on a sunsetting model.
{{% /note %}}

---

## CICD - Crawl

- Version Control - Maybe
- Build Artifact 
- Deploy Artifact - One Environment

---

## CICD - Walk

- Version Control - Absolutely
- Build Artifact
- Tag Artifact
- Push - Docker/Artifactory/Helm
- Deploy Artifact {{< frag c="- Multiple Environments" >}}

{{% note %}}
Deployment into multiple environments infers parameterization and possibly infrastructure as code.
{{% /note %}}

---

## CICD - Run
- Version Control - Git Branch Model Established
- Unit Tests
- Build Artifact
- Tag Artifact
- Push - Docker/Artifactory/Helm
- Deploy Infrastructure - Terraform/Ansible/Pulumi/Other
- Deploy Artifact - Multiple Environments

---

## CICD - Sprint
- Version Control - Git Branch Model Established
- Code Coverage/Quality
- Unit Testing
- Build Artifact
- Tag Artifact
- Push - Docker/Artifactory/Helm
- Deploy Infrastructure - Terraform/Ansible/Pulumi/Other
- Deploy Artifact - Multiple Scalable Environments

{{% note %}}
It should be noted that some of these stages can get their own lesser versions of a CI/CD pipeline as well!
{{% /note %}}

---
A great conceptual model (Jenkins-x).

![A Good Diagram](./images/jxconceptualmodel.png "JX Conceptual Model")

{{% note %}}
Even though this model was put together purely for cloud native deployments it helps understand how teams, the business, and CICD are interelated. I've personally used similar types of logical models when fielding multiple team's devops needs.
{{% /note %}}

{{% /section %}}
