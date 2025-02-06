// Encapsulation: Private fields and public methods for accessing data

import java.util.ArrayList;
import java.util.Scanner;

class Property {
    private String propertyId;
    private String propertyName;
    private long propertyValue;
    private String propertyResArea;

    public Property(String id, String name, long value, String proprtyResArea) {
        propertyId = id;
        propertyName = name;
        propertyValue = value;
        propertyResArea = residential_area;
    }

    public String getPropertyId() {
        return propertyId;
    }

    public String getPropertyName() {
        return propertyName;
    }

    public long getPropertyValue() {
        return propertyValue;
    }
}


class Person {
    private String name;

    public Person(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
}

class PropertyOwner extends Person {
    private Property ownedProperty;

    public PropertyOwner(String name, Property property) {
        super(name);
        ownedProperty = property;
    }

    public Property getOwnedProperty() {
        return ownedProperty;
    }
}


interface Payment {
    public void makePayment(long amount);
}

class CashPayment implements Payment {
    @Override
    public void makePayment(long amount) {
        System.out.println("Paid $" + amount + " in cash.");
    }
}

class CreditCardPayment implements Payment {
    @Override
    public void makePayment(long amount) {
        System.out.println("Paid $" + amount + " using a credit card.");
    }
}


class PropertyManagementSystem {
    public void transferPropertyOwnership(Property property, PropertyOwner newOwner, Payment payment) {
        System.out.println(newOwner.getName() + " is the new owner of " + property.getPropertyName());
        payment.makePayment(property.getPropertyValue());
    }
}

public class Main {
   public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        ArrayList<Property> properties = new ArrayList<>();

        while (true) {
            System.out.println("Property Management System Menu:");
            System.out.println("1. Add a Property");
            System.out.println("2. Remove a Property");
            System.out.println("3. Display All Properties");
            System.out.println("4. Exit");
            System.out.print("Enter your choice: ");
            int choice = sc.nextInt();

            switch (choice) {
                case 1:
                    System.out.println("Enter Property ID: ");
                    String propertyId = sc.next();
                    System.out.println("Enter Property Name: ");
                    String propertyName = sc.nextLine();
                    sc.nextLine();
                    
                    System.out.println("Enter Property Value: ");
                    long propertyValue = sc.nextLong();

                    Property property = new Property(propertyId, propertyName, propertyValue);
                    properties.add(property);
                    System.out.println("Property added successfully.");
                    break;

                case 2:
                    System.out.println("Enter Property ID to remove: ");
                    String idToRemove = sc.next();
                    Property propertyToRemove = null;

                    for (Property p : properties) {
                        if (p.getPropertyId().equals(idToRemove)) {
                            propertyToRemove = p;
                            break;
                        }
                    }

                    if (propertyToRemove != null) {
                        properties.remove(propertyToRemove);
                        System.out.println("Property removed successfully.");
                    } else {
                        System.out.println("Property with ID " + idToRemove + " not found.");
                    }
                    break;

                case 3:
                    System.out.println("List of Properties:");
                    for (Property p : properties) {
                        System.out.println("Property ID: " + p.getPropertyId());
                        System.out.println("Property Name: " + p.getPropertyName());
                        System.out.println("Property Value: $" + p.getPropertyValue());
                    }
                    break;

                case 4:
                    System.out.println("Exiting Property Management System.");
                    sc.close();
                    System.exit(0);

                default:
                    System.out.println("Invalid choice. Please enter a valid option.");
                    break;
            }
        }
    }
}
