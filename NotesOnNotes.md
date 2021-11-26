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

### Resources for the Project
This is where I acquired resources produced by the instructor.  This is handy as there are tools and steps one can be expected to follow to apply some "prettyness" to the app.  

First, I select the assets catalog in the Note's watchKit in the navigator panel.  
I selected the AppIcon icon in the middle pane.  The selection pane shows an empty set of icons.    I right clicked and selected to show the AppIcon asset in the Finder.  There I could copy the premade assets Resources/App-Icon folder.  This gives me a JSON plist with same icon description we had before but with filenames for each of the icons that I have.  Notice, there are few icons left unidentified or provided.  Are we going to use these?

We can also make the Accent Color that we desire for this app.  I select the Accent Color in the left pane of the Assets' file interface.   Here the Accent Color configuration appears and the Universal slot for the accent color is empty.  I selected this and opened the inspector.  

The Accent Color JSON/plist has two objects.  One is the colors and the second is info.  The info is a dictionary with author and version as member objects.  Where as colors object/dictionary has an item "idiom" with value of universal.
The inspector shows that the Appearances is set to none.  We select dark and light+dark that give us slots to put such colors.  

Here we kind of cheat in selecting colors.  The instructor says to select color content of SRGB.  Furthermore, the instructor gives us a 8-bit hexadecimal code representing the color #FFE12D.  This gives us a yellow-ish color.  The instructor says the app shall use this color through out.  

Time Index 7:25
### Illustrations
Now it is time to add the rest of the asset files to the project, to do that, we need to select the rest of the asset files to the project.  

These are found in the resources directory.  

There is a Assets catalog in the Notes WatchKit Extension group.  I selected this and got another asset interface for this Asset file.
The number one item in a WatchKit Extension asset file is a complication grouping.    These complications include circular, extra large, graphic bezel, graphic circular, graphic corner, graphic extra large, graphic large rectangular, modular, and utilitarian.  
So what are these complication assets good for?
Well, the instructor tells us to find the Illustration folder in the Resources folder.  The instructor tells us to drag and drop the Illustration folder into our WatchKit Extension asset under the Complication group.  
We see that an icon is there for 3 developers.  They are cartoonish, but seem to convey some meaning for the app. 
The instructor suggests we can add an image for say "developer no 4" with our picture or cartoon.  I guess this is to give the customer some sense of us when they look for our app. 

## Build and Test on a Simulator or Real Device
Time index: 8:17 
There is a preloader that watches automatically create using our icons for this application.  
The next thing the application loads some content view with a Hello World text.  

# Get Familar with Apple Watch Input Interfaces

We are going to get familiar wtih Apple Watch input interfaces.  Depending on the watch capability and the user's settings, there are at least four input interfaces that we can utilize to create a new note. To trigger these input interfaces, first, we need to tap on the text field.  By doing that, the watch operating system will bring us all available options to enter some content.  
It could be a feature to dictate, scribble, or enter emojis.  But not only that, we can even type some text from our external device like iPhone and iPad as well.  Let us give this a try.

First, we are going to try how we can dictate using the Apple Watch, shall we?  The instructor has a demo app in which he can use the dictate feature of the watch.  The watch prints out what the instructor says.
The second input feature, we can use the scribble pad of the watch.  Here people write one character at a time.  This little feature since the Apple Newton attempts to gage what the user is "writing".  
Now, let us see how easy it is to add some images from the whole emoji catalog.  The demo app allows a user to tap on the emoji catalog icon and bring up the catalog (3 by 3 ) table on the watch.  The user can scroll up or down then select the emoji they want to communicate a thought.  
The fourth input is an external keyboard from a paired iPad or iPhone.  This is an input form that can not be tested by the watch simulator.   This requires the real devices to evaluate and test.  

Let the coding begin.
##  Data Model
First, we start with some housekeeping, select the content view file from the Project Navigator and let's create a new group from the selection.  Give it a name and save it.  So why was Notificiation View not included also?
Next, we make a group for the data model.  In this case, we call it Model.  We then add a new Swift file to this group. Name the new Swift file Note and ensure that it has the target Notes WatchKit Extension.   We then create a struct to encapsulate the data model for the app.  Now, we can select the content view file and keep going along the proces.

## Text Field and Button
First of all, we need to mark all the main possible bidings sections for the form before hand to keep track of what's going on later.  These areas include the following:
        *   property 
        *   function,
        *   content body,
        *   Preview
           

All right, after all of this, we're going to create two properties. one for the note's and another one for the text field. 

Notice something in the preview canvas.

Time Index 4:49
Ok, why is the Notes navigation title note showing in the preview.  Well, it shows up in the simulator.  

This is a content wrapper.  It is also a new navigation title.  However, the instructor's preview shows this correctly.  Mine does not.  Why?

The accent color scene works on this wrapper, at least in the simulator.  
The instructor says to replace the hello world text field with a horizontal stack with a new textfield inside.  The stack also needs a button inside.
Both the text fields appearance and the button are totally different on the Apple Watch as opposed to the iPhone and iPad. The operating system describes how each user interface elements should look.  Keep in mind that these two UI elements are quite different on the watchOS platform than on the iOS, iPadOS, tvOS, and macOS.  

We put the text field and the button beside each other in a horizontal stack container.   This entails that the two items widths are identical.  To change this default behavior, we need to add a specific modifier to the button.  In this case, we give it a fixed size.  We can also add some color.
There are other ways to apply a modifier to the button and other enclosures to make this app look well. 
These augments on the image, let alone the change to another system image for the plus within a circle, do add some crisp appearances to this watch app.
The instructor wants to next push the textfield and combo field up to the top with a new spacer.

## Testing the App
Time Index 8:54
My app appears similar to the instructor, but with some so OS changed effects.  

## Button's Action
Making the button useful for us, it's not enough to say that we need to save a new note on the watch.  That is why we need to think about all potential steps that our code should do step by step.
Can we declare all steps in plain English?  What should the code do to accomplish this task?  It is time to make a list that will declare all parts of these algorithms.   This activity in computer science is also described as making pseudocode.  

The first step in this action is the follow.  

Knowing what our code should do step by step before hand will make our job mcuh more straightforward (than writing codes mindlessly.)  
Time index 11:30/17:46

##  Algorithm


