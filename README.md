### Development environment

For build the app in devel or test envs, use the following command:

```
$ bundle install --whitout production
```
We decide that sqlite is better for development purposes.

### Deploy (production enviroment)

For build the app in production env, use the following command:

```
$ bundle install --whitout development
```
Now mysql2 is used as db engine instead of sqlite
