# Chapter 1: Object Oriented Design

## Overview

* Object: collection of data and associated behaviours
* Object oriented means functionally directed towards modeling objects.
* Object-oriented analysis (OOA): process of looking at a problem, system, or task and identifying the objects and interactions between those objects. Object oriented design is the process of converting these requirements into an implementation specification. Object oriented programming is the process of converting the defined design into a working program that does exactly what was intended.
* Classes describe objects.
* Objects are instances of classes that can be associated with each other. An object instance is a specific object with its own set of data and behaviours.
* Data typically represents individual characteristics of a certain object. A class can define specific set of characteristics that are shared by all objects of that class. __Attributes__ are referred to as members or properties. Depending how detailed the design needs are, the type of each attribute can be specified. Eg: Weight of an apple of apple class.
* Behaviours are actions that can occur on an object. Behaviours that can be performed on a specific class of objects are called methods. At programming level, methods are like functions, but they have access to all the data associated with this object. Like functions, methods can also accept parameters and return values. Parameters/arguments to a method are a list of objects that need to be passed into the method that is being called.
* Adding models and methods to individual objects allows us to create a system of interacting objects.

## Hiding details & creating public interface

* The key purpose of modeling an object in OOD is to determine the public interface of that object, which is a collection of attributes and methods that other object can use to interact with that object.
* The process of hiding the implementation, or functional details, internal working of an object is called information hiding. Encapsulation is a more all-encompassing term.
* Abstraction: dealing with the level of detail that is most appropriate to a given task. It is the process of extracting a public interface from the inner details. It is the process of encapsulating information with separate public and private interfaces. The private interfaces can be subject to information hiding.
* Composition: Act of collecting several objects together to create a new one. Aggregation is similar to composition, with difference being that the aggregate objects can exist independently.
* Inheritance: Inheritance is like family tree. An offspring object(sub-class) inherits properties from parent object(parent class). The properties, which include the behaviours can be modified/over-ridden.
* Polymorphism: ability to treat a class differently depending on which subclass is implemented. Sort of polymorphism in Python is referred as "duck typing".
* Multiple inheritance: Subclass can inherit functionality from multiple parent classes.

