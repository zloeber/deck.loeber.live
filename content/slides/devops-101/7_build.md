+++
outputs = ["Reveal"]
weight = 70
+++

{{< slide 
    id="build" 
    transition="concave" 
    background-image="./images/darkbackground2.jpg" 
    background-size=100%
    background-position="center"
>}}

{{% section %}}

---

## CI (Building)

The build process is generally broken into the following parts

- {{< frag c="*Build*" >}}
- {{< frag c="*Tag*" >}}
- {{< frag c="*Push*" >}}

---

## Git Branch Strategies

Build operations will be closely aligned with the chosen git strategy. 

Common models include:

- {{< frag c="Single Master" >}}
- {{< frag c="Git Flow*" >}}
- {{< frag c="GitHub Flow" >}}
- {{< frag c="Forking" >}}

{{% note %}}
- * Almost every model draws some ideas from gitflow so it is a good place to start getting confused.
{{% /note %}}

---

## Git Notes

- Your dev team will drive the git branching strategy
- GitFlow does not account for multiple environments
- Pull Request actions and branch policies are not native to git
- Submodules obfuscate a repo's depth
- Git hooks are super handy (but I don't use them)

## Learning Git

Just read the manpages, it is easy!

Git man page generator -> https://git-man-page-generator.lokaltog.net/

{{% /section %}}
