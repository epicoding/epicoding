#Coding Tools

This is a web application designed to list out all the best tools for coding based upon category, purpose, and skill level. The tools then each have the top ten blog posts, guides, tutorials, and docs available to help you understand these tools. It is designed by Epicodus students for Epicodus students.

Posts are voted by the community.

## Contributing

1. Fork the repo
2. Create a branch
3. Send us a pull request!
    * If you need assistance collaborating with Git, check out [using git for collaboration](http://www.learnhowtoprogram.com/lessons/using-git-for-collaboration) courtesy of Epicodus.

### Notes RE: Schema

**1. Tools**
    a. A Tool is something used and taught in class, like Ruby, Rails, JavaScript, Ember, etc.
    b. A tool has many resources.
**2. Resources**
    a. A resource is a link that helps you understand a Tool better.
    b. A resource belongs to tool. A tool has many resources.
**3. Cats (Categories)**
    a. A Category is a classification of a resource.

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

2. Members of the community can vote for 10 cents a vote. This prevents public trolling and may contribute to the site's longevity. Integrate dwolla, paypal and bitcoin payment systems. If nothing else it's API practice.

