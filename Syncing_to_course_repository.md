Over the course of the course, I might make some additions or changes to the central course repository on GitHub. It would be useful for you to be able to keep track of those changes. It's actually pretty easy, but we just need to get a bit of terminology right, first.

**Repository ** is a collection of files and folders; it's like a project. Because we are livign in the era of the cloud, repositories can exist as a **local repository** on your machine, or a **remote repository** on GitHub. 

**Forking** a repository gives you a copy of that repository that you can do with as you please.

We've already been through all this. One more term I should introduce here is a **branch**. A branch is basically exactly like using the "Save As" function to save a Microsoft Word document. So you could have your master branch called "my paper", then to work on it a little bit you could save your document as "my paper 2". GitHub has a nice little bit of functionality that lets you very easily merge any changes in "my paper 2" back into "my paper". 

Now, even though your fork and the central course fork are separate, GitHub is still very usefully tracking changes for you on the central course repository. That means that as i make changes to the central course repository (e.g. for example, adding some of the lecture notes, or that sample data set), here are the steps you can take to get them into your own version of your repository yourself. . 

1. In GitHub Desktop, be sure you are signed in to GitHub, by clicking on "GitHub Desktop > Preferences" 
2. Click on the "Current Branch - Master tab" in the top-center of your screen. 
3. You will see two different "branches" a "Default Branch" and a branch called "upstream/master". The **default branch** is just your copy of your repository on your machine. But the branch **upstream/master** is the master branch on the repository that you forked your copy from. 
4. Click on "Choose a branch to merge into master" at the bottom. 
5. There, select **upstream/master**
6. This will **pull** any changes I have made to the central repository down to your local, forked repository on your computer.
7. There is one last thing to do. Any changes I have made are on your local, forked repository, but they are not on **your** remote repository in the cloud. To finish that, you should select "push origin" in the top right of the screen. 

