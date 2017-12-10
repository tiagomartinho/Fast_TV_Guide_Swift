# Fast TV Guide

This is a demo app to show the use of the MVPAC architecture patterns - (Model-View-Presenter with Action and Co-ordinator)

It uses simplied fixed data from a TV guide as the model.

# Outline

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
Cells 
Actionable

## Wireframe
A Wireframe is a struct that follows certain conventions: 

- It contains at least one factory method that starts with "make". 

- It contains a "prepare" function that injects objects into the module, and connects all the objects together. 

## Presenter
The presenter class implements all the code for presenting the data in the view controller. This can include string formatting, parsing objects, receiving notifications

It also handles actions in the view controller such as buttons, taps, swipes etc. 

It communicates back to the coordinator using an Actionable protocol. 

## View Controller
This is no different to a view controller in any other app.  

## DataSource
This is no different to the usual data source for a table or collection view. 

## Delegate
This is no different from the usual delegate for a table or collection view. 

## Cells
The customs cells for the table or collection view.

## Actionable
An extension of AppController that implements the relevant calls from the presenter. 


