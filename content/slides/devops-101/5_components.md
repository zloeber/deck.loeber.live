+++
outputs = ["Reveal"]
weight = 50
+++

{{< slide 
    id="components" 
    transition="fade" 
    background-image="./images/darkbackground1.jpg" 
    background-size=100%
    background-position="center"
>}}

{{% section %}}
## DevOps Components

DevOps takes many forms but ultimately boils down to a handful of components working together;

1. Version Control
1. Pipelines
1. Artifacts

The components above work for simple software releases.

{{% note %}}
- Technically generating the 'Artifact' is the CD portion.
- Artifact's could be a software release, docker image, or more...
- Often this small workflow wraps up the entire CI part of a larger CICD engine.
{{% /note %}}

---

But there is always 'More'...

---

## Deployment Environments

Anything more advanced usually include

1. {{< frag c="Service Endpoints (Secrets)" >}}
1. {{< frag c="Metadata Management (Parameters)" >}}
1. {{< frag c="Workload Sizing ()" >}}
1. {{< frag c="Gates/Approvals/Processes" >}}
1. {{< frag c="Governance/Security" >}}

---

The DevOps engineer will wrap these together with CI/CD into **Pipelines**

{{% /section %}}
