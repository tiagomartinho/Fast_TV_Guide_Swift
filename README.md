# Fast_TV_Guide_Swift

This is a demo app to show the use of the MVPAC architecture patterns - (Model-View-Presenter-Action-Coordinator)

It uses simplied fixed data from a TV guide as the model.

# Outline of the app

It has 4 tabs: highlights, channels, movies, categories. 

Highlights is a pre-select list of programs.

Channesl lists the sample channels, when then lists all the programs for each channel. 

Movies is a filtered list of the movies that are listed under channels.

Categories is also a filtered list of the data in channels. 

# Patterns 

Each screen in the application corresponds to a group in Xcode and names as a module, and all associated files are kept together. For example:  
Wireframe
Presenter
ViewController
DataSource
Delegate
Cell 

A Wireframe is a struct that follows conventions: 

- It contains at least one factory method that starts with "make". 

- It contains a "prepare" function that injects objects into the module, and connects all the objects together. 

The presenter class implements all the code for presenting the data in the view controller. This can include string formatting, parsing objects, receiving notifications. 

 

