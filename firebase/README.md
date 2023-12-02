___
**Table of content**

- [Firebase Firestore](#firebase-firestore)
- [Firebase Rules](#firebase-rules)
- [Firebase Storage](#firebase-storage)

___

# Firebase Firestore
Ben app uses Firestore as database. It only has two collections as there's no need to query a lot of things.

Here is the data structure :

1. Projects collection :
```dart
Project
├─id <String>
├─name <String>
├─totalSections <int>
├─doneSections <int>
├─totalIntersections <int>
├─doneIntersections <int>
├─Settings
│ ├─SectionsPictureSettings <List>
│ │ ├─name <String>
│ │ └─pictureCount <String>
│ └─IntersectionsPictureSettings <List>
│   ├─name <String>
│   └─pictureCount <String>
└─ParcoursReferences <List<DocumentReference>>
```

2. Parcours Collection 
```dart
Parcours
├─name <String>
├─ways <List<String>>
├─municipalities <List<String>>
├─Sections <List>
│ ├─index <int>
│ ├─name <String>
│ ├─ways <List<String>>
│ ├─municipalities <List>
│ ├─illustration <String>
│ ├─comment <String>
│ ├─GlobalSectionCaracteristics
│ │ ├─minWayWidth <double>
│ │ ├─maxWayWidth <double>
│ │ ├─maxBuildingToBuildingWidth <double>
│ │ ├─unidirectional <bool>
│ │ ├─hasParkingSlot <bool>
│ │ ├─ParkingCaracteristics
│ │ │ ├─PakingSide <enum>
│ │ │ ├─ParkingType <enum>
│ │ │ └─number <int>
│ │ └─SpeedCaracteristcs
│ │   ├─walkArea <bool>
│ │   ├─weetArea <bool>
│ │   ├─kmh30Area <bool>
│ │   ├─kmh30 <bool>
│ │   ├─kmh50 <bool>
│ │   ├─kmh60 <bool>
│ │   ├─kmh70 <bool>
│ │   ├─kmh80 <bool>
│ │   └─kmh90AndMore <bool>
│ ├─BikableCaracteristics
│ │ ├─CycleManagementCaracteristic
│ │ │ ├─walkArea <bool>
│ │ │ ├─meetArea <bool>
│ │ │ ├─kmh30Area <bool>
│ │ │ ├─bikeAndBusWay <bool>
│ │ │ ├─bikePath <bool>
│ │ │ ├─chaucidou <bool>
│ │ │ ├─writtenBikePath <bool>
│ │ │ ├─bikePathway <bool>
│ │ │ ├─bikeRoad <bool>
│ │ │ ├─bothwayBikepathSeparated <bool>
│ │ │ ├─bothwayBikepathNotSeparated <bool>
│ │ │ ├─oneWayPath <bool>
│ │ │ ├─bothWayPath <bool>
│ │ │ ├─greenWayPath <bool>
│ │ │ ├─bridge <bool>
│ │ │ └─underground <bool>
│ │ ├─RoadcareCaracteristic
│ │ │ ├─pavedRoad <bool>
│ │ │ ├─concrete <bool>
│ │ │ └─stabilized <bool>
│ │ └─Road Quality Caracteristic
│ │   ├─newOrAlmost <bool>
│ │   ├─good <bool>
│ │   ├─slightlyDamaged <bool>
│ │   └─heavilyDamaged <bool>
│ └─Content <List>
│    ├─sectionName <String>
│    ├─pictureQuantity <int>
│    └─Pictures <List>
│      ├─path <String>
│      └─description <String>
└─Intersections <List>
  ├─index <int>
  ├─name <String>
  ├─ways <List<String>>
  ├─municipalities <List>
  ├─illustration <String>
  ├─comment <String>
  ├─GlobalIntersectionCaracteristics
  │ ├─IntersectionType <enum>
  │ ├─IntersectionManagement
  │ │ ├─giveway <enum>
  │ │ ├─stop <enum>
  │ │ ├─trafficLights <enum>
  │ │ └─rightPriority <int>
  │ └─BikeManagement
  │   ├─bikeSpace <bool>
  │   ├─bikeGiveway <bool>
  │   ├─other <bool>
  │   └─comment <String>
  ├─IntersectionWaythrough
  │ ├─specificWaythrough <bool>
  │ ├─walkwayWaythrough <bool>
  │ ├─none <bool>
  │ ├─other <bool>
  │ └─comment <String>
  └─Content <List>
     ├─sectionName <String>
     ├─pictureQuantity <int>
     └─Pictures <List>
       ├─path <String>
       └─description <String>
```


# Firebase Rules

> ❗️<span style="color:red">At the moment, there's no rules. It's open bar 🫣</span>

Firebase's rules will handle post login ressource access. With custom claims on Firebase Auth, I'll handle authorizations.

Basically, only Ben account will have access to the app content. All other potentially authenticated users will just be displayed an Unauthorized page.

# Firebase Storage
Ben app uses Storage to handle pictures uploaded for project creation and for any pictures taken on site.
Here is the path organisation :

```lua //lua for code style :)
projects/
└─<projectId>/
  ├─<parcoursName>_<i/s><index>_<sectionName>.<extension>
  ├─<parcoursName>_<i/s><index>_<intersectionName>.<extension>
  └─...
```