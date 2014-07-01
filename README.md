#Coding Tools

During your studies at Epicodus, you will come across cool resources for learning to use a specific tool. 

For example, you might find a really useful tutorial for making objects with JavaScript. In this instance, JavaScript is known as a *tool* and the blog is known as its *resource*. 

**Epicoding** is a Ruby on Rails application designed to make archiving, sorting and referencing web-dev tools and resources easier. It is designed by and for Epicodus students.

## Contributing

*Please see the "to_do.md" file for a list of items that need to be completed.*

1. Fork the repo
2. Create a branch
3. Send us a pull request!
    * If you need assistance collaborating with Git, check out [using git for collaboration](http://www.learnhowtoprogram.com/lessons/using-git-for-collaboration) courtesy of Epicodus.
4. Update README saying which task was done.

### Features to Add:

1. Voting
	* Users should be able to vote up and down both resources and tools
2. Search & Sort
	* Add search features. Check out Sunspot-Rails
	* Add dropdowns to sort by category. Check out Select2
3. Tools:Resource Display
	* Main page should show max top 10 resources for any given tool, by vote. The rest of a tool's resources should be listed on the Tool's view page.
4. Accessibility
	* Use cancancan to limit Admin privileges to logged in users
	* Add papertrail to track users' history
5. Email
	* A user who signs up should receive an email welcoming them to the site.
		* For production, check out the gem letter-opener.
6. User Profiles
	* A user should see which resources they have uploaded.
	* A user should be able to see which resources and tools they have voted on
	* A user should be able to upload a picture of themselves
	* A user should be able to provide basic information about themselves including contact info
7. Discussion board
	* A user should be able to start a topic of discussion 
	* A user should be able to comment on these topics
	* A user should be able to subscribe (follow) a topic
	* A topic should be able to have tools assigned to it as categories (different from the tools/categories dynamic for the app. In this instance, the tool *is* the category, so that a user can follow all discussion for JavaScript, for example)
8. Private messaging
	* A user should be able to send a private message to another user. 

### Recently Completed Features:
*Please add a completed feature to this list using the following format:
#### Feature Foo
*A user should be able to foo when they bar*
**Banksy McLovin**, 8/12/14


### Notes RE: Schema

1. **Tools**
    * A Tool is something used and taught in class, like Ruby, Rails, JavaScript, Ember, etc.
    * A tool has many resources.
2. **Resources**
    * A resource is a link that helps you understand a Tool better.
    * A resource belongs to tool. A tool has many resources.
3. **Cats (Categories)**
    * A Category is a classification of a resource.

### Resource Categories:

* Amazing (uncategorized)
* Blog Posts
* Challenges
* Docs
* Examples
* Findings (other)
* Guides
* Hot! (new and trending)

### Working Ideas

1. Incoming students vote on resources parallel to the existing list. After a tool (i.e. Ruby, Javascript) receives 20 votes for its list of resources, the votes are merged with the existing votes for resources. However, at the end of each Epicodus class, the votes, lists and resources are all archived. Thus students can browse through the previous lists compared to the new Join list, as well as their list proper. Simply select a semester from a dropdown and render the new view, Ajax-style.

2. Members of the public can vote for 10 cents a vote. This prevents trolling and may contribute to the site's longevity. Integrate dwolla, paypal and bitcoin payment systems. If nothing else it's API practice.

