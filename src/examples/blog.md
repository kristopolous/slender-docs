# Objective

In this tutorial, we'll put together a simple blog with the slender-api and slender-cms.

# Prerequisites

Before moving forward you should make sure that you have a [working slender install](../installation.hml).

# Product specification

## Terminology

A User is a an entity that creates and is attributed to Entries and or Comments.

An Entry consists of one of:

 * Title: a variable-length unformatted single-line string
 * Author: a user who is registered and permitted to post
 * Date of publication: a time-stamp
 * Article: a variable-length formatted block of HTML.

Each entry may have one or more Comments.

Comments consist of one of:

 * Content: a block of limited formatted html
 * Author: a registered user who is permitted to post
 * Date of publication: a time-stamp

## Interfaces
Our blog needs to have an interface for Creating, Reading, Updating, and Deleting:

 * Entries
 * Comments

## MVP
Our minimum-viable product will satisfy the following user stories:

### Create an entry

1. log in through an admin interface
1. Click on "create new entry"
1. Type in the text: "Hello world".
1. Click "post"
1. View the latest entry.

### View the blog

1. go to the base url of the blog site
1. see the latest entry

### Create an account
Before creating an Entry or a Comment I

1. am Prompted to login or register.
1. Login through Twitter.

### Comment

1. Do "View the Blog"
1. Click on "add comment"
1. Fill in "Cakewalk" in the text box
1. Click "Post".

### Edit

1. Go to the admin interface
1. Get a table of the previous blog entries
1. Click on "edit" next to the first blog entry
1. Modify the text to say "Salve Mundi."
1. Click "Save".
1. View the modified entry.

### Delete

1. Go to the admin interface
1. Get a table of the previous blog entries
1. Click on "delete" next to the first blog entry
1. Get an empty table of blog entries.


# Approach

We can approach this problem in a very traditional way:

1. Define our model
1. Define our endpoints
1. Write some tests
1. Make the tests pass
1. Create a functional interface that wires the endpoints

Final product

Base install
This is the base install starting point of slender-api and slender-cms used for this tutorial

Blog code
This is the modified code to create the blog so that you can see a side-by-side diff of what changed
