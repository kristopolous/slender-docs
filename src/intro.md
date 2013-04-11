# What is Slender?

Let's talk about building websites and start out with some slogan:

> Make Easy things Easy and Hard Things Possible.

First, the easy things.

## CRUD applications

Software as a Service is an old buzzword and RESTful CRUD is nothing new.

These are great ideas that sound like they would make your life easier, but most implementations have steep learning curves; being detached, elaborative, and too inventive.

So how is Yet Another IPC of the web-browser going to make your life easier?

Let's start off with the easy ones:

#### Create is an HTTP/PUT or POST
#### Read is an HTTP/GET
#### Update is an HTTP/PUT or POST
#### Delete is an HTTP/DELETE

See, that's not overly semantic. We didn't get into theoretics about the difference between the idempotence of PUT versus POST, because; let's make Easy things Easy.

### More complex things (very) possible.

Let's say we have a table of users.

Each user has say an `age, gender, firstname, lastname, password, email-address, last-login`

I want to get all the people that logged in during the last 24 hours and sort those people by age, ascending.

ok, 

    GET /users?where[]=last-login:gte:Date(Now()-(24*60*60))&order=age:asc

That *almost* reads like SQL. In fact, Slender supports the most common SQL slicing and dicing techniques.  You can put these in Javascript, or you can put them in your CMS code, or you can put them in an intermediate caching layer.  All with almost an identical ease.

Want to find out more? Check out how to do this by 

 1. Creating models in JSON (with support for ActiveRecord style relations such as hasOne and hasMany)
 2. Creating end-points with a few key-strokes.
 3. Writing tests for these from sensible templates.
 4. Using the general syntax to get the information you need.

This is how we've tried to keep easy things easy.  

There's a whole different dimension however. We've also tried to make difficult (intractible) things possible.

## The whole enchilada.

Let's focus again on building websites.

You've probably noticed that you get fairly similar clients with fairly similar needs.

So you reuse your code. and you reuse other people's code.

Now you are running a successful firm.  You have a handful of similar clients who want similar things.

Now you've landed a really big client. They are managing a large number of very similar sites for different products or services.

## How do you manage this infrastructure?

The two use-cases above can be handled with a single system.

In the first one, you, the web-development firm, want to centralize and automate deployment, updates, backups, optimization, ssl certificates, etc. from one central place.  

In the second one, the company has nearly identical business requirements for every product. 

You need a system that can

 * span sites and acknowledge that many aspects of the process can be centralized, automated, and distributed.
 * play nicely with existing frameworks and content-management systems.
 * minimize the blockers due to communication delays with the client and other teams.
 * distribute and scale data for multiple clients cohesively and collectively.

Slender is a solution that not only presumes you are doing the nearly the same thing, over and over again but that you also need to manage and maintain it.

## Our use-cases

Here are some user-stories we are working to solve by building Slender:

### Developer mobility

If a client needs an unexpected focus, I should be able to take developers from other projects, give them an elevator pitch of the problem in the morning, and then have them start contributing to the focus by that afternoon.  This process should not take days.

### An MVP that doesn't drag

Oftentimes clients justifiably expect something to work differently than anticipated.  It would be nice if I could explain internally how the solution works to a sharp, but non-technical client, and eliminate the ambiguity.

### The easy way to be the right way

Documentation, tests, and all the process that makes things easier to manage should be painless and easier than not doing them.

### Easily facilitate innovation

Innovation is hard to anticipate.  Many solutions either presume too much or give you too little.  I want something that gives me the right kind of building blocks that sit between primitive and sophisticated abstractions. 

Find out more.
