# Bussit

A routing app for the HSL area

### API key

To use this code, get an API key from https://portal-api.digitransit.fi/ and 
save it to [`lib/api/secrets.dart`](lib/api/secrets.dart)

The documentation for the API can be found in https://digitransit.fi/en/developers/

To update [`lib/graphql/schema.graphql`](lib/graphql/schema.graphql), run
``` 
npx get-graphql-schema https://api.digitransit.fi/routing/v1/routers/hsl/index/graphql?digitransit-subscription-key=<api_key> > lib/graphql/schema.graphql
```
