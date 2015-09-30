##Description

This program consumes GitHub's API and presents back a replica of the user's profile page (with only some of the features).

#GitHub API

Two parts of the GitHub API are being consumed - /users and /users/repos. Each has a separate model and a separate test suite.

#Controllers

There are two views in this program - a search view which allows a user to enter a GitHub username and submit, and a profile view which returns the replica of the user's GitHub profile page.
