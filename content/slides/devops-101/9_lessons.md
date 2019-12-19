+++
outputs = ["Reveal"]
weight = 90
+++

{{< slide id="lessons" transition="slide" >}}
{{% section %}}

{{% note %}}
Intentionally left blank
{{% /note %}}

---

### Lessons Learned

There are many best practices for DevOps.

Here are a few from the field...

---

- {{< frag c="Work towards a regular release cadence" >}}
- {{< frag c="Establish a git branch strategy early" >}}
- {{< frag c="Cement a divide between CI & CD" >}}
- {{< frag c="Learn some Agile" >}}
- {{< frag c="'Latest' tag is the devil" >}}

{{% note %}}
- Release cadence == Scheduled version releases of your code (technically a old-school release model)
- Divorcing your pipelines from ADO pipeline artifacts gives greater control over your artifact longevity and forces you to design smarter pipelines.
{{% /note %}}

---

And a few more...

- {{< frag c="Model the 12-factor app approach" >}}
- {{< frag c="Build only once" >}}
- {{< frag c="All pipeline as code if possible" >}}
- {{< frag c="Immutable artifacts" >}}
- {{< frag c="Shift left all that you can" >}}

---

And yet more...

- {{< frag c="Create an umbrella repo" >}}
- {{< frag c="Everything is a container" >}}
- {{< frag c="Reduce outside dependencies" >}}
- {{< frag c="Versioning, don't leave it until last" >}}
- {{< frag c="Be able to build/deploy locally" >}}

---

Finally,

- {{< frag c="If you implement DevOps correctly you WILL lose velocity, at first." >}}

- {{< frag c="It gets better" >}}

{{% /section %}}