![platforms](https://img.shields.io/badge/platforms-iOS-333333.svg)
[![Swift](https://img.shields.io/badge/swift-4.0-4BC51D.svg?style=flat)](https://developer.apple.com/swift)
![XCode](https://img.shields.io/badge/xcode-9.2-brightgreen.svg)
![MIT](https://img.shields.io/github/license/mashape/apistatus.svg)
![Version](https://img.shields.io/badge/version-popout-green.svg?longCache=true&style=1.0.0)
	
![iOS VIPER](https://raw.githubusercontent.com/codytwinton/SwiftyVIPER/1.2.3/Assets/SwiftyVIPER.png "iOS VIPER")


# Installation instructions

To install VIPER Xcode templates clone this repo and run the following command from root folder:

> make install_viper_templates

To uninstall Xcode template run:

> make uninstall_viper_templates

After that, restart your Xcode if it was already opened.

## Demo project

There's a demo project in Demo folder.
You can find most common VIPER module use cases in it.

## VIPER short introduction

How to organize all your code and not end up with a couple of <i>Massive View Controllers</i> with millions of lines of code?

VIPER is an acronym that represents an example of a design pattern that can be considered clean architecture. In essence, with clean architecture, you abstract your code into four layers: entities (models), use cases (business logic), controllers/gateways/presenters (handles UI logic), devices/UI/Web/DB/External interfaces (frameworks that could change).

VIPER stands for:

* **V — View** (displays info to the user and detects user interaction)
* **I — Interactor** (manipulates the entities/models by fetching data and storing data)
* **P — Presenter** (without use of the UIKit, it contains the UI related business logic and prepares the data for presentation)
* **E — Entity** (your model objects)
* **R — Router** (aka wireframe, takes care of navigation in your module/application).

## Components

The template automatically generates the different files needed at the architechture of the VIPER. It also contains the generation of a style file for the ViewController, and the module model and a module-specific formatter

Module generates next components:

* * *Views*
* * * **ViewController**
* * * **ViewControllerStyle**
* * *Models*
* * * **Models**
* * * **ModelsFormatter**
* **Presenter**
* **Interactor** (not mandatory)
* **Wireframe**


Wireframes inherit from the BaseWireframe. Presenters and Interactors do not inherit any class. Views most often inherit UIViewControllers. You need to generate BaseModule Template for the inherit just one time.


## 1. Base classes and interfaces

The module generator tool will generate five files - but in order for these to work you will need a couple of base protocols and classes. These are also available in the repo.
Let's start by covering these base files: *WireframeInterface*, *BaseWireframe*, *ViewInterface*, *InteractorInterface*, *PresenterInterface*, *UIStoryboardExtension*:

### WireframeInterface and BaseWireframe

```swift

```

The Wireframe is used in 2 steps:

1. Initialization using a *UIViewController* (see the *init* method). Since the Wireframe is in charge of performing the navigation it needs access to the actual *UIViewController* with which it will do so.
2. Navigation to a screen (see the *pushWireframe*, *presentWireframe* and *setRootWireframe* methods).
Those metods are defined on *UIViewController* and *UINavigationController* since those objects are responsible for performing the navigation.

### PresenterInterface

```swift

```
The *PresenterInterface* offers only optional methods which are used for the Presenter to performa tasks based on View events. For methods you use without implementing them you'll get a nice big fatal error.

### ViewInterface and InteractorInterface

```swift

```

These two interfaces are initially empty. They exists just to make it simple to insert any and all functions needed in all views/interactors in you project. Both protocols need to be class bound because the Presenter will hold them via a weak reference.

Ok, let's get to the actual module. First we'll cover the files you get when creating a new module via the module generator.

## 2. What you get when generating a module
When running the module generator you will get five files. Say we wanted to create a Login module, we would get the following: *LoginInterfaces*, *LoginWireframe*, *LoginPresenter*, *LoginView* and *LoginInteractor*. Let's go over all five.

### Interfaces

```swift

```

This interface file will provide you with a nice overview of your entire module at one place. Since most components communicate with each other via protocols we found very useful to put all of these protocols for one module in one place. That way you have a very clean overview of the entire behavior of the module.
The *LoginNavigationOption* enum is used for all navigation actions which involve creating a new wireframe and navigating to it in which ever way possible. This will become clearer when we go over a concrete example.

### Wireframe

```swift
```

If you've created a storyboard which contains a *LoginViewController*, all you need to do is enter the storyboard name (see *_storyboard* var) here and the code will compile. We've made the assumption that you use the class name for an identifier but you can of course change this at any point in the future.


### Presenter

```swift

```
This is the skeleton of a Presenter which will get a lot more meat on it once you start implementing the business logic.

### View

```swift

```
Like the Presenter above, this is only a skeleton which you will populate with IBOutlets, animations and so on.

### Interactor

```swift

```
When generated your Interactor is also a skeleton which you will in most cases use to perform fetching of data from remote API services, Database services, etc.

## How it's organized in Xcode

Using this architecture impacted the way we organize our projects. In most cases we have four main subfolders in the project folder: Application, Common, Modules and Resources. Let's go over those a bit.

### Application
Contains AppDelegate and any other app-wide components, initializers, appearance classes, managers and so on. Usually this folder contains only a few files.

### Common
Used for all common utility and view components grouped in sub folders. Some common cases for these groups are _Analytics_, _Constants_, _Extensions_, _Protocols_, _Views_, _Networking_, etc. Also here is where we always have a _VIPER_ subfolder which contains the base VIPER protocols and classes.

### Resources
This folder should contain image assets, fonts, audio and video files, and so on. We use one *.xcassets* for images and in that folder separate images into logical folders so we don't get a long list of files in one place.

### Modules
As described earlier you can think of one VIPER module as one screen. In the _Modules_ folder we organize screens into logical groups which are basically user-stories. Each group is organized in a subfolder which contains one storyboard (containing all screens for that group) and multiple module subfolders.

![iOS VIPER MODULES](/Images/ios_viper_modules.png "iOS VIPER MODULES")


## Useful links

* https://techblog.badoo.com/blog/2016/03/21/ios-architecture-patterns/
* https://www.objc.io/issues/13-architecture/viper/
* https://swifting.io/blog/2016/03/07/8-viper-to-be-or-not-to-be/

## Contributing

Feedback and code contributions are very much welcome. Just make a pull request with a short description of your changes. By making contributions to this project you give permission for your code to be used under the same [license](LICENSE).

## Credits

Maintained and sponsored by
