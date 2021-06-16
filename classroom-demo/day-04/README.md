# SAPIENT ASDE - JUNE, 2021

### TOC for day 4:

-   Creating a docker image
-   SOLID principles using Java
-   Use cases and implementation
-   Design patterns overview
-   Creational patterns
-   Structural patterns
-   Behavioral patterns
-   Use cases and implementation (most useful patterns only)

### SOLID principles

-   S - Single Responsibility Principle (SRP)
-   O - Open/Closed Principle
-   L - Liskov's substitution Principle
-   I - Interface segregation Principle
-   D - Dependency inversion Principle

### Single Responsibility Principle (SRP)

-   class should be having one and only one responsibility

![Single Responsibility Principle](https://miro.medium.com/max/4800/1*P3oONz9Da3Tc1w97fMV73Q.png 'Single Responsibility Principle')

### Open/Closed Principle

-   classes should be open for extension but closed for modification

![Open/Closed Principle](https://miro.medium.com/max/4800/1*0MtFBmm6L2WVM04qCJOZPQ.png 'Open/Closed Principle')

### Liskov's substitution Principle

-   Parent classes should be easily substituted with their child classes without blowing up the application
-   Child classes should never break the parent class' type definitions.
-   Subtypes must be substitutable for their base types.

![Liskov's substitution Principle](https://miro.medium.com/max/5200/1*yKk2XKJaCLNlDxQMx1r55Q.png "Liskov's substitution Principle")

### Interface segregation Principle

-   many client specific interfaces are better than one general interface

![Interface segregation Principle
](https://miro.medium.com/max/5200/1*2hmyR9L43Vm64MYxj4Y89w.png 'Interface segregation Principle
')

The Single Responsibility Principle is about actors and high level architecture. The Open/Closed Principle is about class design and feature extensions. The Liskov Substitution Principle is about subtyping and inheritance. The Interface Segregation Principle (ISP) is about business logic to clients communication.

In all modular applications there must be some kind of interface that the client can rely on. These may be actual Interface typed entities or other classic objects implementing design patterns like Facades. It doesn't matter which solution is used. It always has the same scope: to communicate to the client code on how to use the module. These interfaces can reside between different modules in the same application or project, or between one project as a third party library serving another project. Again, it doesn't matter. Communication is communication and clients are clients, regardless of the actual individuals writing the code.

So, how should we define these interfaces? We could think about our module and expose all the functionalities we want it to offer.

![](https://cdn.tutsplus.com/net/uploads/2014/01/hugeInterface.png)

### Dependency inversion Principle

-   Classes should depend on abstraction but not on concretion
-   High-level modules should not depend on low-level modules. Both should depend on abstractions.
-   Abstractions should not depend upon details. Details should depend upon abstractions.

    ![Dependency inversion Principle](https://miro.medium.com/max/5200/1*Qk8tDmjQlyvwKxNTfXIo0Q.png 'Dependency inversion Principle')
