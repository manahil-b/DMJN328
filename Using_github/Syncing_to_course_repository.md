# Syncing to the main course repository

Over the course of the course, I might make some additions or changes to the central course repository on GitHub. It would be useful for you to be able to keep track of those changes. It's actually pretty easy, but we just need to get a bit of terminology right, first.

A **Repository ** is a collection of files and folders; it's like a project. Because we are livign in the era of the cloud, repositories can exist as a **local repository** on your machine, or a **remote repository** on GitHub. By convention and default the remote repository has the name **origin**. 

**Forking** a repository gives you a copy of that repository that you can do with as you please.

We've already been through all this. 

One more term I should introduce here is a **branch**. A branch is basically exactly like using the "Save As" function to save a Microsoft Word document. So you could have your master (or first) branch called "my paper", then in order to work on it a little bit you could save your document as "my paper 2". GitHub has a nice little bit of functionality that lets you very easily merge any changes in "my paper 2" back into "my paper". 

Now, even though your forked repository and the central course repository are separate, GitHub is still very usefully tracking changes for you on the central course repository. That means that as I make changes to the central course repository (e.g. adding some of the lecture notes, or that sample Napoleon data set), you can track those and have access to them as the course progresses. 

Here are the steps you can take to get them into your own version of your repository yourself. . 

1. In GitHub Desktop, be sure you are signed in to GitHub, by clicking on "GitHub Desktop > Preferences" 

   

   

   ![](/Users/skiss/Desktop/sign_in_with_github_preferences.png)

   

2. Click on the "Current Branch - Master tab" in the top-center of your screen. 

   ![](https://raw.githubusercontent.com/sjkiss/DMJN328/master/Using_github/click_current_branch_master.png)

3. You *should* see two different "branches" a "Default Branch" and a branch called "upstream/master". The **default branch** is just your copy of your repository on your machine. But the branch **upstream/master** is the master branch on the repository that you forked your copy from. 

   ![](https://raw.githubusercontent.com/sjkiss/DMJN328/master/Using_github/show_upstream_master.png)

4. Click on "Choose a branch to merge into master" **at the bottom of this screen**. 

   ![](https://raw.githubusercontent.com/sjkiss/DMJN328/master/Using_github/choose_branch_to_merge.png)

   

5. Then, select **upstream/master** and then click **Merge upstream/master into master** This will **pull** any changes I have made to the central repository (called **upstream/master**) down to your local, forked repository on your computer (just called **master**). Please note: You may get an error message here about some conflicts between files. AT this point, the best thing to do is to take note of the file names **and delete them from your course repository on your computer**. Don't worry about it. 

![](https://raw.githubusercontent.com/sjkiss/DMJN328/master/Using_github/select_merge_master_into_master.png)



6. **There is one last thing to do.** Any changes I have made are now merged into your on your **local, forked repository,** but they are not on **your** remote repository in the cloud. To finish that, you should **commit** your changes with a message and then **push** them up to the cloud. 

   ![](https://raw.githubusercontent.com/sjkiss/DMJN328/master/Using_github/make_commits.png)



Then, after making the commits, push the changes up to your repository. 



![](https://raw.githubusercontent.com/sjkiss/DMJN328/master/Using_github/push_changes_to_origin.png)

