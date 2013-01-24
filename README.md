Blazing Upstart
===============

Upstart recipe for [blazing](http://github.com/effkay/blazing)

If you run your applications with [upstart](http://upstart.ubuntu.com/), this lets you
restart/reload after a deployment.

The expectation is that you have a Procfile with your processes in it. You can set certain
processes to receive a reload instead of a restart. That is very useful if, for example,
you run your app with [unicorn](http://unicorn.bogomips.org/).

Installation
------------

Add `gem 'blazing-upstart'` to your `Gemfile`

Usage
-----

Enable the recipes you want in your blazing configuration file. Options
can be provided in the recipe call or with the target method. Target
options have precedence over recipe options.

```ruby
# Restart the processes
#
#   recipe :restart_processes, [options]
#
# Options:
#
#   :reload (Set which processes reload instead of restart)
#   :app (Set your app name to something different than the folder name)
#   :procfile (Set if you use a Procfile not named Procfile)
#   :sudo (Set if you use a different sudo command, ie rvmsudo)
#
# Example:

recipe :restart_processes, :reload => 'web'
```

Authors
-------

Daniel Farrell ([@danielfarrell][])

License
-------

See the [MIT-LICENSE file](https://github.com/danielfarrell/blazing-upstart/blob/master/MIT-LICENSE)

[@danielfarrell]: https://github.com/danielfarrell
