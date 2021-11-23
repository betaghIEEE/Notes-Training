#  This document is a note on the Construction of the watchOS App "Notes"

Learn about the main topics of this watchOS project

In this SwiftUI tutorial, we are going to develop a modern Notes application for Apple watches. By creating this app, we will learn how to develop a standalone watch extension using the watchOS and SwiftUI frameworks together.


TOPICS WILL BE COVERED:
    *   How to get familiar with the basics of the watchOS framework
    *   How to create multiple views and navigate between these views
    *   How to develop a standalone Apple Watch application with SwiftUI
    *   How to permanently save notes and store data on Apple Watch
    *   How to show a list of notes on Apple Watch
    *   How to select and delete notes from Apple Watch
    *   How to show SwiftUI views conditionally
    *   How to create and utilize uniform design language across pages
    *   How to use Swift's Codable protocol for serialization
    *   How to test a Watch app fullscreen in Simulator or on a device
    *   How to develop a new feature using SwiftUI's Slider element
    *   How to create custom user interface elements
    *   How to add icons and asset files to a Watch extension
    *   How to use the input tools: 
        **  Dictate, 
        **  Scribble,  
        **  Emoji, 
    *   How to do with these actions types List of notes: 
        **  Input interface,  
        **  Dictate function, 
        **  Deleting a note from the list with SwiftUI's gesture,  
        **  Detail page,  
        **  Settings - line adjustment,  
        **  Credits page,  
        **  and App icon.
    

#  Setting up the Apple Watch Application
Our primary goal in this Swift UI class is to develop a standalone notetaking application for Apple Watch.

What are the main features of this nice watchOS app, called Notes?  A watchOS app experience differs from app experiences on other platform.      

An Apple iWatch is meant to be worn.  So the UI should give wearers a lightweight and responsive experience.

Our priority is to make the app's interface "highly glanceable."  What does this mean?  

We start adding a well distinguished icon for the watch app, then the student does some customization.  Then, we add an UI without adding complexity for it.  That sounds like it can take some doing.  

##  Objectives

### Home 

The home screen is where the users can add a new note and save it into the list of notes depending on the   


### Inputs
There are at least four input interfaces to create a new note, such as:
    *   Dictating
    *   scribbling, 
    *   Entering emojis
    *   Typing from external devices like the iPhone
    
While creating this unique Apple Watch application with the Swift UI framework, we also learn:
    *   how to save
    *   Load
    *   Delete on local storage

### Detailed View
Moreover, we will build up a detailed view for each individual note item as well.

After that, we are going to develop a new feature so that users can change the line numbers of the in the new settings.

###  Settings 
    This time we will learn how to properly use the get and set closures in a custom binding with SwiftUI to update the lines count in the App Storage.  
 
### Credits
And finally, we will create a credits view as well with this, our Apple Watch application will be a well rounded app so that we can add it to a portfolio.  

This effort begins by launching XCode and the start of the coding efforts.

## Getting Started
There is a resources directory supplied with pre-fabricated icons and artwork.  There is also JSON property list files to supply needed augments to the app.

## New Project
Launch XCode and create a new project for the Apple Watch platform.  

Select the watchOS for platform templates.  Select the standalone application as the template for this watchOS demo App.   

In this case, I named this app Notes.  I selected my personal account for the team on this app.  Also, I supplied a rather unique organization identifier.   These steps allow us to provide configuration that is unique for our application that can be used later on during the distribution of our application.  

There is something different than expected in setting up this watchOS app.  There is a Life Cycle and interface selection.  The instructor's screen shows the Life Cycle selection where as my editor does not show this.  Is this good or bad?  
The instructor iterates that the interface must be SwiftUI.  So, this is what I did.  
So, if we don't have a Life Cycle to select is SwiftUI App the resulting default choice?  
Also the instructor has elected to uncheck the Include Notification Scene from this app.  The instructor says this so we don't create any notifications in this project.  
For this demo app, we also leave the unit tests box unchecked.  In production apps, many outfits use the unit test feature to help verify that requirements make it in to the app.  Likewise, these verification help provide assurance that the implementation meets the expectations from the requirements.
Once we click next, Xcode takes through the process of placing our project in a good place on the file system.  I use GIT to support my development and document learning as I go. 

Last, I closed the instructor provided final version of the notes project.  As I did, I copied the notes on notes documentation and pictures folder.  I placed a copy in the new project so I can continue to document this work.
