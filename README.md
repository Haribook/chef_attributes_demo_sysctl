# Chef attributes demo with sysctl

This is a talk/demo/video about chef attributes

## Prerequisites

This is intended for people who will use chef:
- You have some kind of experience with Linux systems (ie. you're a systems/software engineer)
- You understand data structures: hash of hashes of arrays and that kind of stuff
- You know what Chef is / a few basics (watch Chef intro video if you don't : youtube link)

## Why use attributes?

If you use attributes:
- Benefit from a major functionality of Chef
- Can use many other cookbooks that use attributes
- Have move simplicity and clarity

If you don't use attributes
- You miss out on a fantastic tool
- You can't use many pre-built cookbooks
- Lose time, etc

## What are attributes?

- Attributes are a composed data structure, contained in the chef ```node``` object.
- They have levels of precedence: default, normal, override, etc: see https://docs.chef.io/attributes.html
- You can read/set them in different places: roles, recipes, attributes, etc
- They are often used for flexible cookooks: by changing attributes of a cookbook, you can alter its behavior without the code. In that way, it's a bit like a function that takes parameters: the function stays the same, it's generic/reusable, and you just change the parameters

# Demo part

Here it's a screencast where I launch a vagrant machine and show a very basic example

Also, this demo is a use case at facebook
https://www.youtube.com/watch?v=SYZ2GzYAw_Q

## Import this directory

```
git clone git@github.com:patrickviet/chef_attributes_demo_sysctl
```

## Run vagrant

```
vagrant up
```

## Show the file tree and what does what

- Vagrantfile
- cookbooks/sysctl/attributes/default.rb : 1st level of precedence
- cookbooks/sysctl/recipes/default.rb : 2nd level
- roles/mydemorole.rb : 4th level

## What if I do this?

- Comment various parameters in files
- Add an override parameter at a couple place
- Show how it relates to the levels of precedence in the chef docs

## Wrapping it up

- Don't forget to stop the machine : ```vagrant halt``` or ```vagrant destroy```
- Attributes are useful
- I'm also making other attribute videos (links)
- Please subscribe comment/star/etc

