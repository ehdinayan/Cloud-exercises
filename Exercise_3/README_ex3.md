## I'm not sure if this simple script is in fact a bot.

The point is this exercise seems to be shortly developed in course, allowing peopple go further themselves.
I visited course git [link](https://docs.github.com/en/rest) and starting
navigate through **Guides** section.

This seems to be pretty though to me at the moment to develop, so my will is to continue course and finish it completely.
I'll come back to this probably to learn much possibilities, but exercise has to be done.

So, I thought to retrieve my own user personal data from GitHub would be a great task for a Git bot. 

I went into this and first necessary thing to interact with GitHub Api is a token (personal key instead of password), wich can be created as it is explained [here.](https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token)
Once we have that, it is possible to retrieve different kind of info from tha GitHub Api
due to permissions or features given to our token when created.

It is also recommended not to use token directly in a curl command. Instead, have a variable with its value ready.

We have to use a curl command to retrieve our info from GitHub:

`curl -i -u youruser:$token https://api.github.com/users/youruser`

The little script I made takes the info and makes a file, then prints the file content in console and makes a few suggestions. That's all. 
