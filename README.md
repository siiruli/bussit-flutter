# Bussit

A routing app for the HSL area

### Features

- Search for and save bus stops to see next departures in real time
- Find itineraries using public transport, city bikes or your own bicycle
  - Find itineraries that start on board a vehicle
  - Take your bike on a train or subway
- Show itineraries and city bike stations on map
- Use GPS location for map and itinerary search

### Screenshots

![img-0](https://github.com/siiruli/bussit-flutter/assets/22868831/96383105-2481-40ca-8fa4-ec994fdb7e9a)
![img-1](https://github.com/siiruli/bussit-flutter/assets/22868831/a689c5e1-b633-4b7c-8f3b-4209b28e7961)
![img-2](https://github.com/siiruli/bussit-flutter/assets/22868831/93d5ee20-ef2d-4ee8-ad55-5d1eec1c865e)
![img-4](https://github.com/siiruli/bussit-flutter/assets/22868831/50949992-7bb5-4025-b630-e1d71b54b64f)

### API key

This app uses the Digitransit API to get stop, itinerary and map data

To use this code, get an API key from https://portal-api.digitransit.fi/ and 
save it to [`lib/api/secrets.dart`](lib/api/secrets.dart)

The documentation for the API can be found in https://digitransit.fi/en/developers/

To update [`lib/graphql/schema.graphql`](lib/graphql/schema.graphql), run
``` 
npx get-graphql-schema https://api.digitransit.fi/routing/v1/routers/hsl/index/graphql?digitransit-subscription-key=<api_key> > lib/graphql/schema.graphql
```

### Installation 

[Install Flutter](https://docs.flutter.dev/get-started/install) to build the project.

After that, run `flutter run` to run the application in debugging mode, and `flutter run --release` for release mode.
If you want to run the app on an Android device, enable USB debugging and then connect to the device with an USB cable.

You can also build an apk with `flutter build apk` and then install the apk on your device.

Remember to add your Digitransit API key first!

The app works in web and Android. It has not been tested on iOS at all so it might not work there.
