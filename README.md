# Infrastructure
[![diagram](https://mermaid.ink/img/pako:eNqVU99v0zAQ_lesk6oOkZTS_Gr9UKnaQEiwgbaKB5QX1zk6q6ldbAdti_K_4yQN7dLBNj9YZ_vuu_u-85XAVYZAYTAohRSWknJob3GLQzrMmN4Mq2owSKXBXwVKjheCrTXbppK4xbhVmpznAqVNZXvXnvz5_O1HoXHFDC4Ke0vJF7UW8uzNPjC3RMjfLBcZ4RozFyFYbtrHeq00sg05nI-xfAd-qVYiR0o-3HHcWaH2yVFmeyM3SP6D_whvPvc7vAXnaAxZqg32IU-JXRc5Gko-LZffiK71MbbPYKeVRW4xO03dRNdcWuCnubTmSUhP233V32u-7IBQq1xI5lyUFg9P1dDJ2WN09fVzj8jh-BoKpy15STF-r5qumL9Ij9MfqdG8GPcn8d2N29nadfT6uDH_dnwO5mKxXLwAw--UqP3Bgy3qLROZG6-yjk6hGa0UqDPr6UohlZXzc7qom3vJgVpdoAfFzjWyGzagP93ndbeYCZfpsp3XZmw92DEJtIQ7oMFkMpqO4zgMknA2Hgce3AP1J6MoScI4ieJp-D6KJmHlwYNSDnQ8mgVJEs2SIIqDcOrMBu1H89hkrP4AkCVQpQ?type=png)](https://mermaid.live/edit#pako:eNqVU99v0zAQ_lesk6oOkZTS_Gr9UKnaQEiwgbaKB5QX1zk6q6ldbAdti_K_4yQN7dLBNj9YZ_vuu_u-85XAVYZAYTAohRSWknJob3GLQzrMmN4Mq2owSKXBXwVKjheCrTXbppK4xbhVmpznAqVNZXvXnvz5_O1HoXHFDC4Ke0vJF7UW8uzNPjC3RMjfLBcZ4RozFyFYbtrHeq00sg05nI-xfAd-qVYiR0o-3HHcWaH2yVFmeyM3SP6D_whvPvc7vAXnaAxZqg32IU-JXRc5Gko-LZffiK71MbbPYKeVRW4xO03dRNdcWuCnubTmSUhP233V32u-7IBQq1xI5lyUFg9P1dDJ2WN09fVzj8jh-BoKpy15STF-r5qumL9Ij9MfqdG8GPcn8d2N29nadfT6uDH_dnwO5mKxXLwAw--UqP3Bgy3qLROZG6-yjk6hGa0UqDPr6UohlZXzc7qom3vJgVpdoAfFzjWyGzagP93ndbeYCZfpsp3XZmw92DEJtIQ7oMFkMpqO4zgMknA2Hgce3AP1J6MoScI4ieJp-D6KJmHlwYNSDnQ8mgVJEs2SIIqDcOrMBu1H89hkrP4AkCVQpQ)
---
**Table of content**
- [Infrastructure](#infrastructure)
- [Purpose](#purpose)
    - [Responsive frontend](#responsive-frontend)
- [Web](#web)
- [Mobile](#mobile)
- [Firebase](#firebase)
  - [Firebase Firestore](#firebase-firestore)
  - [Firebase Storage](#firebase-storage)
  - [Firebase Hosting](#firebase-hosting)
  - [Firebase Distribution](#firebase-distribution)
  - [Firebase Speech-to-text](#firebase-speech-to-text)
- [Running the project](#running-the-project)
- [Front-end documentation](./firebase/README.md)
- [Firebase documentation](./ben_app//README.md)

---

# Purpose
Ben-App's goal is to help road studies data gathering by providing a way to generate routes, sections and intersections based on pictures extraction from ben's software for road mapping.

Projects are structured as so :
1. Settings : settings to build up sections and intersections custom picture fields
2. Routes (parcours) : A list of road sections and intersections that caracterize a specific path
   1. Sections : Road. I mean, it's basically a part of a road with no other way out
   2. Intersections : Place where roads splits. Could be a T, X or roundabout spliting for example.
3. Name, id, picture... basic fields that caracterize a project.

### Responsive frontend
This app is built using [Responsive Frameworks](https://pub.dev/packages/responsive_framework).
It answer the need to build this app for any type of device : Tablet, Phone, Desktop...
It's also away to try this package as it's not so easy to build responsive web apps.
  

## Web
The webapp is the core part of this project. It has several purposes :
1. Generating project from a bunch of images extracted from another software and imported in Firebase Storage
2. Setting-up custom settings for on-site pictures requirement
3. Overviewing project completion
4. Completing section/intersection forms
5. Extracting project datas in .xlsx or powerpoint

## Mobile
The mobile app's main purpose is to write down data on-site :
1. Filling sections and intersections form
2. Taking pictures of the road or intersection.
3. Using Speech-to-text capability to help writing sticky-notes

## Firebase
Ben's app uses firebase as it's purpose is to be used by Ben only and should not use more than Firebase's quota.
Knowing that, Firebase performances are the most cost-effective choice performance and "eco-systeme" wise ;)

>Thus, as ben requires file hosting and speech-to-text feature, we better use all of firebase free capabilities

### Firebase Firestore
Firestore is quite usefull to make data management fast and smooth.

>The drawback is that document-oriented database could be tricky to evolve. It misses SQL migrations :p
>
>As ben will only have up to 3 project ongoing simultaneously and will cleanup each project datas once extracted to powerpoint, I feel this drawback is acceptable.

### Firebase Storage
One foot in firebase's ecosystem and you better go all in ;)

There's almost no configurations. Let's do it.

>This project, with at most 3 projects simultaneously, should not use much GB monthly as the pictures taken does not need to be HD.

### Firebase Hosting
Ben does not own any domain and does not wish to handle certifications nor redirections as he don't beat a thing on technical stuffs.

>I've choosen Firebase hosting to make it easy and leave Google handle all the boring stuff

### Firebase Distribution
Ben requirements in terms of deployment is only to handle Android store.

>Firebase's app distribution is quite powerfull and strait-forward to handle testing with real devices so I did all the setup so that it handle tests builds seemlesly

*However, it misses CI to build and deploy this this automatically. Should do it soon*

### Firebase Speech-to-text
Last but not least, Ben wish to have a speech-to-text feature to help him not forgetting stuff he note on site and may give some usefull information when he presents his studies to municipalities.

>The one provided by Google is way good enougth for this purpose.
