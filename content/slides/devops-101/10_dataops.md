+++
outputs = ["Reveal"]
weight = 100
+++

{{< slide 
    id="dataops" 
    transition="convex" 
    background-image="./images/background6.jpg" 
    background-size=100%
    background-position="center"
>}}

{{% section %}}

## DataOps

Data schema is just as important as the code itself. 

- Do not forget to include a baseline and strategy for persistent data schema deployment in your pipeline.
- A database change should be subject to the same build/release cadence as the rest of the project.

---

## Database Schemas

- Persistent data always has a schema
- This schema is closely bound to the application release cadence
- The versioned schema should be in version control
- The schema should be released with the engine level release pipeline

---

## DataOps Terms

A few quick terms to know.

- Migration - Schema update
- Baseline - The 'first' schema

---

## DataOps Tools

Some tools exist to facilitate CICD in pipelines. A few are;

- Liquibase (liquibase.org)
- Flyway (flywaydb.org)
- Sqitch (sqitch.org)

---

## Model Breakers

Some IT not easily fit into the traditional DevOps CICD model:

- {{< frag c="Data Science" >}}
- {{< frag c="Data Engineering" >}}

{{% note %}}
- Data scientists create models more like artists than programmers. They work with already cleaned data to extract value from it with things like machine learning and witchcraft.
- Their output is primarily the models they construct.
{{% /note %}}

{{% /section %}}
