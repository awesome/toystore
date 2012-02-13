# Toystore

An object mapper for any [adapter](https://github.com/jnunemaker/adapter) that can read, write, delete, and clear data.

See [examples/](https://github.com/jnunemaker/toystore/tree/master/examples) for potential direction.

## Identity Map

By default, Toystore has identity map turned on. It assumes that any Toystore model has a unique id across all models. This means you either need to use the default uuid id's or create your own key factory that namespaces to model (see examples).

You also need to clear the map before each request. For this, there is a provided piece of middleware that you can use.

    use(Toy::Middleware::IdentityMap)

It is autoloaded, so just add it to your config.ru or sinatra/rails app as you would any other middleware and you are good to go.

## ToyStore Power User Guides

* [Wiki Home](https://github.com/jnunemaker/toystore/wiki)
* [Identity](https://github.com/jnunemaker/toystore/wiki/Identity)
* [Types](https://github.com/jnunemaker/toystore/wiki/Types)
* [Exceptions](https://github.com/jnunemaker/toystore/wiki/Exceptions)

## Changelog

As of 0.8.3, I started keeping a [changelog](https://github.com/jnunemaker/toystore/blob/master/Changelog.md). All significant updates will be summarized there.

## Mailing List

https://groups.google.com/forum/#!forum/toystoreadapter

## Note on Patches/Pull Requests

* Fork the project.
* Make your feature addition or bug fix in a topic branch.
* Add tests for it. This is important so we don't break it in a future version unintentionally.
* Commit, do not mess with rakefile, version, or changelog. (if you want to have your own version, that is fine, but bump version in a commit by itself so we can ignore when we pull)
* Send a pull request.
