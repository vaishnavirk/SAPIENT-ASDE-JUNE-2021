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

### Open/Closed Principle

-   Classes should be open for extension but closed for modification
-   Any new functionality should be implemented by adding new classes, attributes and methods, instead of changing the existing ones

Implementation guidelines:

-   The simplest way to apply OCP is to implement the new funcationality on new derived classes
-   Allow clients to access the original class with abstract interface

If not followed:

-   End up testing the entire functionality
-   QA Team need to test the entire flow
-   Costly process for the organisation
-   Breaks the SRP
-   Maintenance overheads increase on the classes

OCP violation

```java
@Data
class Employee{
    private int id;
    private String name;
    private double salary;

    public double getBonus(){
        return salary * 0.15;
    }
}
```

Now, if we have two kinds of employees, permanent and temporary, and they have different calculations for bonus:

```java
@Data
class Employee{
    private int id;
    private String name;
    private double salary;
    private String type; // "permanent" or "temporary"

    public double getBonus(){
        if(type.equals("permanent")){
            return salary * 0.15;
        }
        else if(type.equals("temporary")){
            return salary * 0.10;
        }
    }
}
```

Solution to this:

![](ocp.png)

```java
class Client {
    public static void main(String[] args){
        Employee emp1 = new PermanentEmployee();
        // initialize emp1
        double bonus1 = emp1.getBonus();

        Employee emp2 = new TempararyEmployee();
        // initialize emp2
        double bonus2 = emp2.getBonus();
    }
}
```

### Liskov's substitution Principle

-   Parent classes should be easily substituted with their child classes without blowing up the application
-   Child classes should never break the parent class' type definitions.
-   Subtypes must be substitutable for their base types.

### Interface segregation Principle

-   Many client specific interfaces are better than one general interface

### Dependency inversion Principle

-   Classes should depend on abstraction but not on concretion
-   High-level modules should not depend on low-level modules. Both should depend on abstractions.
-   Abstractions should not depend upon details. Details should depend upon abstractions.
