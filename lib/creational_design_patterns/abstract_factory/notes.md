# Abstract Factory

## Alias

Kit

## Intent

Provide an interface for creating families of related or dependent objects without specifying their concrete classes.

## Applicability

1. Independence from Product Creation:

    - Use this pattern when your system should work without knowing how the products it uses are created, combined, or represented.

    - Example: You want to create buttons and checkboxes, but you don't want your main application to worry about how they are made.

1. Configurable Product Families

    - Use this pattern when you need your system to be easily configurable with different sets of related products.

    - Example: Your app should be able to work with either Windows-style or MacOS-style buttons and checkboxes, depending on the user's choice.

1. Enforcing Use of Related Products:

    - Use this pattern when you have a group of related products that are designed to work together, and you want to make sure they are always used together.

    - Example: Windows buttons should be used with Windows checkboxes, and MacOS buttons should be used with MacOS checkboxes.

1. Providing Product Libraries with Hidden Implementations:

    - Use this pattern when you want to offer a library of products where users only see the interfaces, not the actual implementation details.

    - Example: You provide a toolkit that lets developers create UI elements (like buttons and checkboxes) without showing them the underlying code for how these elements are constructed.