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

{{% note %}}
Intentionally left blank
{{% /note %}}

---

## Strong Pipelines

The stronger your pipeline is, the less you have to support it.

---

What makes a **strong** pipeline?

- {{< frag c="Few outside dependencies" >}}
- {{< frag c="Simplicity" >}}
- {{< frag c="Immutability" >}}

---

## Outside Dependencies

What is an **outside dependency**? (see if you can find the pattern);

- {{< frag c="Public Docker Images" >}}
- {{< frag c="Public Upstream Libraries" >}}
- {{< frag c="Public Pipeline Tasks" >}}
- {{< frag c="Public Helm Charts" >}}

---

## Simpler Pipelines

What makes **simpler** pipelines?

- {{< frag c="Pipeline as code" >}}
- {{< frag c="Less delivery code" >}}
- {{< frag c="Fewer Moving Parts" >}}

---

### Immutability

What is **Immutability** in a pipeline?

- {{< frag c="Clear division between CI and CD" >}}
- {{< frag c="Less delivery code" >}}
- {{< frag c="Eliminate 'ClickOps'" >}}

{{% /section %}}
