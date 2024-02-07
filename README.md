# UCI Retool Best Practices

**Working Best Practices**

Work in progress by [Harry Zhou](mailto:harryzhou.swe@gmail.com)

\*\*Please feel free to add / suggest new best practices\*\*

---

[Associated Resources](#associated-resources)

[Data Model Visualization](#data-model-visualization)

[Retool Design Documentation / Resources](#retool-design-documentation--resources)

[Retool Application Architecture](#retool-application-architecture)

[Main Architecture](#main-architecture)

[Modules](#modules)

[Micro-Apps](#micro-apps)

[In-App Queries / Code Conventions](#in-app-queries--code-conventions)

[Saving to the Query Library](#saving-to-the-query-library)

[Sidebar App Routing](#sidebar-app-routing)

[Naming Conventions](#naming-conventions)

[Retool DB Data Model](#retool-db-data-model)

[Retool Workflows](#retool-workflows)

---


# Associated Resources

## Data Model Visualization

\*\* Out of date \*\*

<https://dbdiagram.io/d/63a3850399cb1f3b55a2dcc3>


## Retool Design Documentation / Resources

[Designing in Retool](https://docs.google.com/presentation/d/1xtYBM-ALuJrnELXgoYJgbzCW8WDyzs6eRNk3ogOwudY/edit?_hsmi=237342937#slide=id.g12d842307d8_0_0)

[Retool Docs Best Practices](https://docs.retool.com/docs/app-performance-best-practices)


# Retool Application Architecture

## Main Architecture

Our main UI architecture will look something like this:

![](https://lh7-us.googleusercontent.com/MCJ--v36KtExeOYFxDXMQIP1cEvomlrjHN2oD6I6DD1hPBL6i7fSDhgUBr0x6fTn6HXHkNrDHVZqXWGLH4QhFReRcOT1sREp4c9LxWsrFKXOvQoBle8kT5ivIIZbhKfu8lUiEiYwSCD5OG-p2Via_fs)

This is a basic wireframe that will probably be changed and should be updated later, but the underlying idea will persist. Since we are developing a fairly complex Retool app with multiple pages, we must break up our larger app into smaller, more maintainable apps.

There’s some reasoning behind this:

1. Better Performance - Since Retool is a cloud-hosted app that is fully web-integrated, we are limited by the processes detailed by our browser and our computer. In other words, the larger a single app is, the laggier and unwieldy it is to edit the app.

2. Long-term Maintenance - We don’t have a git-based solution to figure out breaking changes if there are any. Separating apps should allow us to isolate issues and develop without unknowingly breaking parts of the app.

3. Scalability - If more developers come into the picture, isolating parts of the app allow for cross-development in parallel.


## Modules

Modules are an efficient way to reuse components that will be shared between different apps.

In the diagram above, the _top navigation_ and _sidebar_ are good examples of modules. The sidebar controls the navigation to different micro-apps, therefore it’s needed on _every single micro-app_ if we want user navigation to be seamless.

You can create a module by clicking your existing component, and then clicking the three dots to the left of ‘share’:

![](https://lh7-us.googleusercontent.com/CFOV3dMMKOMhTvCjrP8HAOouqxIDwH6LmHHKOnIPWlwvLXVYQTqpPB8rJnh-Jk_2MriBNKrItbM7HJuRCBq43NMeAo8ZimzhmiyyYhMXEUOhYWFBD5iaf0QXS0Zxm0rbHjLANy4xWiePuuaTnIXbPG8)

You can also create modules in the main app page.

You can access your modules next to components.

![](https://lh7-us.googleusercontent.com/W02x2onoPCt_vREO_E7YA-CJJmtnYyVr5LbT7fy9zwFI3tl7dkwM7SeDeYviDDkhHqeDFakZWZRpb8mU44p9px8XNgUXjrlRX4KwitrvHn4S_MkHdavkT1q0j7a_9_qyYFrrmMfeFnMKx2t6xfZm1ms)


## Micro-Apps

As explained above, the benefits of compartmentalizing different pages of the main app into separate smaller apps are necessary.

I personally think that a micro-app should focus on a single page, and if _need be_, for very complex features we can separate that feature into a module.



# In-App Queries / Code Conventions

Please name your resource queries, js queries, transformers, etc something that describes what it’s doing.

Follow this repo for advice: <https://github.com/kettanaito/naming-cheatsheet> regarding naming variables if writing JavaScript code within transformers.

For resource queries, if you think you’ll need the same query across multiple apps, please add the query to the resource library. \*\*\*note: Saving the query to the query library does **_not_** persist any event handlers or confirmation modals! You will have to reattach the event handlers when reusing.

Also, you can easily organize your code using the provided folders:

![](https://lh7-us.googleusercontent.com/l2Hf9PJkbLM2GICMWEFDD4nK2jz0YF1eQ3h0yNkDcdAt9eZ9S1qC-lWp-LXn7pqf7Tkvdtz3lwzwL-xLtaLA3fX1lOK2Dn5FqZq7ycXQ_jyd7HGBJ-Lw5E3LtwN7tMZWoiWl8LOa0lwLBB3gEYaCrls)


# Saving to the Query Library

Saving to the query library allows for reuse of queries in different apps.

However, there are some quirks that could break some queries once saved.

The GET and DELETE oriented SQL queries should be fine, but it’s the UPDATE and WRITE SQL queries that will need extra work.

Let’s say you have some update query that takes values written in form1 that will update according to a collaborator\_id. You have tested the form1.data and verified that it’s working!

![](https://lh7-us.googleusercontent.com/hEcDIfmc5uBP6UPcYAXfvfGPoze9byWD5UZfm-qlUH44xFpzQMwF6HkEjo0gr7plE90vYMYEdxjaZpvRU54EMO58OuxVpuGAHRVCCOFlUNZSN37lAjPfN_soX3BAWerIujT1RME7rjWF9Wya91NgLqY)

Saving this query directly into the query library will break your query. Let’s extract it to our query library:

![](https://lh7-us.googleusercontent.com/t_CDTpX9nyP8p1Ymx9_tSnVEPsCk-ec_Y8gvIQO3HKNQTgGIY6PxgBcNvV3qTlKTdGNAWPUH29QjK7jEYJkGVE3kTii7PefcRuFK720yNuOXhcAI2Xk1vlhOgm2CHN_V3BSAhy-g-lzqevdV8nUTrgk)

Retool has given you a ‘variable0’ we’ll talk about this below.

Inside our query library we now see _what_ variable0 is:

![](https://lh7-us.googleusercontent.com/kA_AhqmsOZ9ag5AdkuVGc90Kju5tGaQjJfWXNhSSWVbC2ELkFAqJ_cVj9E-E2AwWw0JTJLLCsNjapNSBGBz3J9FSmdtbdDypZoJFMvm4Wu26WisMNMpyIyFvYKv8jCTP272JxMxfmjMoSnnqlNCRM28)

Retool has defined variable0 as the collaborator\_id you can enter in the app. But where’s the variable for form1.data? It doesn’t exist:

![](https://lh7-us.googleusercontent.com/py5OMgpCL2E6cottyOtAv6723FU8gZyJgJGDuU2x2k4ULUnLe7vnbJ9f1n66nNkswzN-kIUIrS54r7sEEsj-4LhfAuzeg_L-EZ75xB0CGXegeKBljuKFP0RbmTGvPyXKr_LZRYuMMEWUbMA1uwS9T3c)

Unfortunately, unless someone else finds another solution (I couldn’t via a search), we have to specify all the key value pairs manually and assign them variables like so:

![](https://lh7-us.googleusercontent.com/Pkb5UBy0WP0BdZfvpYyvSLVzwlZM5g38XGboI6hJhW0ByKQgcQXIvxxcIcLf4Dr35Ath4Y7yxh-GBJCxRQrcrUdY405_HoDvenDnH9dX8qbIB8wWM4k7uQJ0tAJY9VaGiy_VQvJz4eR7h-CeO6omb1Q)

**_Notice variable0 and first\_name. These variables can then be accessed and assigned in your app with some value, such as form1.data.first\_name. You can also specify default values in the right column under variables._**



# Sidebar App Routing

We want to integrate different views that will be used by different groups of people. Currently, we cannot filter by groups but shown below is an example of how to route to different apps using the ‘current\_user’ state (When we upgrade, we’ll filter using groups).

In our main\_sidebar\_navigation module, create a custom handler:

![](https://lh7-us.googleusercontent.com/W9sDPKlJnWG5rGoP7faSc9jhkVahziLl5lyIeUo94fMkxZralgFjqie7spVjuoO3nFfmN-a9lTc6G44s_s1t0kVWMJeRm8zqOe9H6KcgM5vUeImJizq4EEzjc3vZcTgWkJV65N2E_ymPNzia3fK4Dn8)

Create a route towards the micro-app with the view you want. Use a Javascript query to access who gets to enter the view or not:

![](https://lh7-us.googleusercontent.com/leFHg4SKV6i2WNvKzfHckQFJkZy263tOD3PKXF1T4uJTivr9wdlBc7vanwqzVVCZNlxuV6zhFPgKhklrtByIOOpIEXAlAz9EhrHJrUiFfP_iVpfa8OW9J2_rHhVnsU2BnRcbIHOVthekdUlsLK9WJkg)

In the example above, everyone except for current\_user.id 471218 gets to navigate to the internal app view.



# Naming Conventions

All queries, transformers, and component id should be in camelCase.

Apps and modules should be in snake\_case.



# Retool DB Data Model

The current data model in `Retooldb` follows the json schema quite closely: [GREGoR Data Models](https://github.com/UW-GAC/gregor_data_models/blob/main/GREGoR_data_model.json)

However, there could be minor deviations where we have attached custom columns to a table for internal use only – these should be stripped if downloading participants through the `validation workflow`.

As a general rule of thumb, tables prefixed with `new_` are in active use. This is because the old tables have been archived.

The current list of tables in active use should be:

\*All lowercase:

1. Analysis\_results

2. Aligned\_rna\_short\_read

3. Called\_variants\_dna\_short\_read

4. Aligned\_dna\_short\_read

5. New\_families

6. Experiment\_rna\_short\_read

7. new\_genetic\_findings

8. New\_samples

9. New\_participants

10. Saliva

11. Participant\_sample\_status

12. Phenotypes

13. Short\_read\_wgs\_linker

14. short\_read\_rnaseq\_linker

15. Sk\_dna\_isolation

16. Sk\_pax\_rna

17. Sk\_preserved\_blood

18. Aligned\_dna\_short\_read\_set

19. Experiment\_dna\_short\_read


# Retool Workflows

Retool workflows allow a straightforward method to interact with APIs and design systems.

Check out the documentation here: <https://docs.retool.com/workflows>

For example, a validation workflow is created here: <https://ucigregor.retool.com/workflows/0b074310-bf36-4130-b057-0e8e7e9ef898>

This workflow is a webhook that acts as an API endpoint; it extracts the JSON data model from the GREGoR github repo, uses a script to parse existing participants in Retool DB, and returns a list of ‘incomplete’ or ‘complete’ participants.
