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


## 1. Base classes

The module generator tool will generate five files - but in order for these to work you will need a couple of base protocols and classes. These are also available in the repo.


### BaseWireframe

```swift
//MARK: - BaseWireframeProtocol
protocol BaseWireframeProtocol: class {
    
    associatedtype T: UIViewController
    associatedtype U
    
    var viewController: T? { get set }
    static func createModule(with parameters: U) -> T
    static func createModule() -> T
}

//MARK: - BaseWireframeProtocol extensions
extension BaseWireframeProtocol {
    
    static func createModule(with parameters: U) -> T {
        fatalError("Implementation pending...")
    }
    static func createModule() -> T {
        fatalError("Implementation pending...")
    }
}
```

The BaseWireframe allows to create the different protocols that your different modules will inherit in the wireframe. It allows the creation of the module and reminding it if it is not implemented properly. And different methods of presentation of views


### StyleProtocol & HelperDevice

StyleProtocol file is use for ViewController for automatique style your view by devise or all.
HelperDevice file is user for know the different device is an helper.

*You have the template without this helper, if want*

## Generating module

When running the module generator you will get five files. Say we wanted to create a Login module, we would get the following: *LoginInterfaces*, *LoginWireframe*, *LoginPresenter*, *LoginView* and *LoginInteractor*. Let's go over all five.

### View

```swift

```
### ViewStyle

```swift

```

### Presenter

```swift

```

### Models

```swift

```

### ModelsFormatter

```swift

```
### Interactor

```swift

```

### Wireframe

```swift

```

## How it's organized in Xcode

### Application

### Common

### Resources

### Modules

## Useful links

* https://techblog.badoo.com/blog/2016/03/21/ios-architecture-patterns/
* https://www.objc.io/issues/13-architecture/viper/
* https://swifting.io/blog/2016/03/07/8-viper-to-be-or-not-to-be/

## Contributing

Feedback and code contributions are very much welcome. Just make a pull request with a short description of your changes. By making contributions to this project you give permission for your code to be used under the same [license](LICENSE).

## Credits

Maintained and sponsored by
