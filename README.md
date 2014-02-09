# GulTalks

This is the  GUL's Technical Conferences management system 
----------------------------------------------------------

### Development environment

For build the app in dev or test envs, use the following command:

```
$ bundle install --without production
```
We decide that sqlite is better for development purposes.

#### To run it:

```
$ rake db:migrate
$ rails server -p $PORT
```

### Deploy (production enviroment)

For build the app in production env, use the following command:

```
$ bundle install --without development
```
Now mysql2 is used as db engine instead of sqlite.

