**Table of content**

- [Architecture](#architecture)
- [Env \& Flavors](#env--flavors)
- [State management](#state-management)
- [Localization](#localization)
- [Responsive](#responsive)
- [Codemagic](#codemagic)


# Architecture
Ben_app is using Clean Architecture pattern.

I think it's a great pattern for its simplicity yet SOLID compliant. It's great for isolating responsibilities, allowing testing quite easily and gives a good readability of the overall project

# Env & Flavors
To handle prod, inte and development mode and allowing a smooth navigation between any environment, Ben_app uses two concepts :
1. Env : Env represents the target database environment you will use. It's mainly to handle backend or APIs configurations.

2. Flavors : Flavors represents what type of usage you wish to build : development, integration or production. It may be used to handle specific front-end features that may or may not be possible in another flavor.

>Why these two types of builds ?
>
>As a consultant, I've been used to deploy inte env type to my own infrastructure as my clients usually takes too much time to provide their own infrastructure (I mean applying to app store and google play developper programs). So, I can test myself or provide QA team a way to test my work on time, on inte environment with every flavors I wish to support.
>
>Then, when clients are ready, I'm building the exact same app but with production environment. 

To summarize :

inte env = builds that are linked to my temporary (or testing) infrastructure (flavors are usualy dev and inte)

prod env = builds that are linked with my client's final infrastructure (flavors could be dev, inte, uat, prod...)


# State management
This app uses BLOC library to handle state. It's using CUBIT to be precise as it reduce boilerplate and is enougth in terms of capabilities.

Blocs would be overkill as we don't really need to handle events & states changes this precisely.

# Localization
Ben_app french-only so you may question yourself like "Why is it using arb files then ?"

1. And what happens if one day I wish to localize it ? 😈 <span style="color: red">**refactor-hell incoming**</span>
2. And what happens if there's a typo or Ben wish to change a wording ? 😈 <span style="color: red">**CTRL+MAJ+F hell incoming**</span>

🙏🏼 <span style="color: orange">**Please, localize every app you build ! It takes not much times and allow to change texts in a single place !**</span>

# Responsive
Responsive framework is under testing in this project. 

I don't know what to think about it right now, but i'll give it a try !

Anyway, I needed a way to handle responsiveness as the app will probably be used with a tablet using web browser 😅

# Codemagic
Codemagic is a great tool to build and deploy cross-plateforme apps for free. It has a 500 min per month free plan and that's way anougth for this project.

There's a [pipeline setup](./codemagic.yaml) that has several roles
1. Run static code analysis
   1. When creating a merge request, whatever branch it's comming from
   2. Tests outputs and artifacts are sent over Slack

2. Build inte app and deploy it to Firebase Distribution
   1. When pushing onto staging branch (AKA when merge request is accepted onto it)
   2. Artifacts are sent over Slack

3. Build prod app and deploy it to Firebase Distribution and PlayStore
   1. When pushing code onto main branch. (AKA when merge request is accepted onto it)
   2. Artifacts are sent over Slack