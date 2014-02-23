# GulTalks

This is the GUL's Technical Conferences management system 
----------------------------------------------------------

### Development environment

To build the app in dev or test environments, use the following command:

```
$ bundle install --without production
```
We think that sqlite is better for development purposes.

#### To run it:

```
$ rake db:migrate
$ rails server -p $PORT
```

### Deploy (production enviroment)

To build the app in production environment, use the following command:

```
$ bundle install --without development
```
Now mysql2 is used as db engine instead of sqlite.

