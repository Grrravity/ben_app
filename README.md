# Infrastructure
[![diagram](https://mermaid.ink/img/pako:eNqVU99v0zAQ_lesk6oOkZTS_Gr9UKnaQEiwgbaKB5QX1zk6q6ldbAdti_K_4yQN7dLBNj9YZ_vuu_u-85XAVYZAYTAohRSWknJob3GLQzrMmN4Mq2owSKXBXwVKjheCrTXbppK4xbhVmpznAqVNZXvXnvz5_O1HoXHFDC4Ke0vJF7UW8uzNPjC3RMjfLBcZ4RozFyFYbtrHeq00sg05nI-xfAd-qVYiR0o-3HHcWaH2yVFmeyM3SP6D_whvPvc7vAXnaAxZqg32IU-JXRc5Gko-LZffiK71MbbPYKeVRW4xO03dRNdcWuCnubTmSUhP233V32u-7IBQq1xI5lyUFg9P1dDJ2WN09fVzj8jh-BoKpy15STF-r5qumL9Ij9MfqdG8GPcn8d2N29nadfT6uDH_dnwO5mKxXLwAw--UqP3Bgy3qLROZG6-yjk6hGa0UqDPr6UohlZXzc7qom3vJgVpdoAfFzjWyGzagP93ndbeYCZfpsp3XZmw92DEJtIQ7oMFkMpqO4zgMknA2Hgce3AP1J6MoScI4ieJp-D6KJmHlwYNSDnQ8mgVJEs2SIIqDcOrMBu1H89hkrP4AkCVQpQ?type=png)](https://mermaid.live/edit#pako:eNqVU99v0zAQ_lesk6oOkZTS_Gr9UKnaQEiwgbaKB5QX1zk6q6ldbAdti_K_4yQN7dLBNj9YZ_vuu_u-85XAVYZAYTAohRSWknJob3GLQzrMmN4Mq2owSKXBXwVKjheCrTXbppK4xbhVmpznAqVNZXvXnvz5_O1HoXHFDC4Ke0vJF7UW8uzNPjC3RMjfLBcZ4RozFyFYbtrHeq00sg05nI-xfAd-qVYiR0o-3HHcWaH2yVFmeyM3SP6D_whvPvc7vAXnaAxZqg32IU-JXRc5Gko-LZffiK71MbbPYKeVRW4xO03dRNdcWuCnubTmSUhP233V32u-7IBQq1xI5lyUFg9P1dDJ2WN09fVzj8jh-BoKpy15STF-r5qumL9Ij9MfqdG8GPcn8d2N29nadfT6uDH_dnwO5mKxXLwAw--UqP3Bgy3qLROZG6-yjk6hGa0UqDPr6UohlZXzc7qom3vJgVpdoAfFzjWyGzagP93ndbeYCZfpsp3XZmw92DEJtIQ7oMFkMpqO4zgMknA2Hgce3AP1J6MoScI4ieJp-D6KJmHlwYNSDnQ8mgVJEs2SIIqDcOrMBu1H89hkrP4AkCVQpQ)
___
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
- [Building the project](#building-the-project)
- <span style="color: teal">Specific documentation</span>
  - [Frontend documentation](./ben_app/README.md)
  - [Firebase documentation](./firebase/README.md)
    - [Firebase Firestore](./firebase/README.md#firebase-firestore)
    - [Firebase Rules](./firebase/README.md#firebase-rules)
    - [Firebase Storage](./firebase/README.md#firebase-storage)

___

# Purpose
Ben-App's goal is to help road studies data gathering by providing a way to generate routes, sections and intersections based on pictures extraction from ben's software for road mapping.

Projects are structured as so :
1. **Settings** : settings to build up sections and intersections custom picture fields
2. **Routes** (parcours) : A list of road sections and intersections that caracterize a specific path
   1. **Sections** : Road. I mean, it's basically a part of a road with no other way out
   2. **Intersections** : Place where roads splits. Could be a T, X or roundabout spliting for example.
3. Name, id, picture... basic fields that caracterize a project.

## Responsive frontend
This app is built using [Responsive Frameworks](https://pub.dev/packages/responsive_framework).

It answer the need to build this app for any type of device : Tablet, Phone, Desktop...
It's also away to try this package as it's not so easy to build responsive web apps.
  

# Web
The webapp is the core part of this project. It has several purposes :
1. Generating project from a bunch of images extracted from another software and imported in Firebase Storage
2. Setting-up custom settings for on-site pictures requirement
3. Overviewing project completion
4. Completing section/intersection forms
5. Extracting project datas in .xlsx or powerpoint

# Mobile
The mobile app's main purpose is to write down data on-site :
1. Filling sections and intersections form
2. Taking pictures of the road or intersection.
3. Using Speech-to-text capability to help writing sticky-notes

# Firebase
Ben's app uses firebase as it's purpose is to be used by Ben only and should not use more than Firebase's quota.
Knowing that, Firebase performances are the most cost-effective choice performance and "eco-systeme" wise ;)

> 💡 <span style="color:orange">As ben requires file hosting and speech-to-text feature, we better use all of firebase free capabilities</span>

## Firebase Firestore
Firestore is quite usefull to make data management fast and smooth.

❗️ <span style="color:red">The drawback is that document-oriented database could be tricky to evolve. It misses SQL migrations :p</span>

> 💡 <span style="color:orange">As ben will only have up to 3 project ongoing simultaneously and will cleanup each project datas once extracted to powerpoint, I feel this drawback is acceptable.</span>

## Firebase Storage
One foot in firebase's ecosystem and you better go all in ;)

There's almost no configurations. Let's do it.

> 💡 <span style="color:orange">This project, with at most 3 projects simultaneously, should not use much GB monthly as the pictures taken does not need to be HD.</span>

## Firebase Hosting
Ben does not own any domain and does not wish to handle certifications nor redirections as he don't beat a thing on technical stuffs.

>💡 <span style="color:orange">I've choosen Firebase hosting to make it easy and leave Google handle all the boring stuff</span>

## Firebase Distribution
Ben requirements in terms of deployment is only to handle Android store.

>💡 <span style="color:orange">Firebase's app distribution is quite powerfull and strait-forward to handle testing with real devices so I did all the setup so that it handle tests builds seemlesly</span>

> 🔄 <span style="color:yellow">Codemagic is handeling CI to build and deploy mobile application. It could be used to handle web app but building it and deploying it only takes few secondes so i've been too lazy to add it to the pipeline</span>

## Firebase Speech-to-text
Last but not least, Ben wish to have a speech-to-text feature to help him not forgetting stuff he note on site and may give some usefull information when he presents his studies to municipalities.

>💡 <span style="color:orange">The one provided by Google is way good enougth for this purpose.</span>

# Building the project

After cloning the project, you should init firebase configuration.

1. Open a terminal in `/ben_app` directory
   
2. Run `flutter pub get`
   
3. Create your own project in Firebase's console. *For development purpose, i've handeled two flavors. You're free to handle only one project*

4. Modify the [.firebaserc](./ben_app/.firebaserc) to put your own firebase project name

5. Setup Firebase core in ben_app's directory. please check Firebase's documentation

6. Once you're done, you should modify these files
   1. [firebase_options_inte.dart](./ben_app/lib/core/config/firebase/firebase_options_inte.dart) to match your firebase's development environment (optional)
   2. [firebase_options_prod.dart](./ben_app/lib/core/config/firebase/firebase_options_prod.dart) to match your firebase's production environment (required)

7. Then you should create a .config.json that contains your production `--dart-define` configuration. This should contains the key-value `"flavor": "prod"` to build your app

8. Then you can run the following commands :
   1. Mobile (android) : `flutter build apk debug --target lib/main_prod.dart --dart-define-from-file ./.config.json`
   
   2. Web : `flutter build web debug --target lib/main_prod.dart --dart-define-from-file ./.config.json --no-tree-shake-icons`