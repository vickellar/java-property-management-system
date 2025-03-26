<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Main.java</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        pre {
            background-color: #f4f4f4;
            padding: 15px;
            border: 1px solid #ddd;
            overflow: auto;
        }
    </style>
</head>
<body>
    <h1>Main.java</h1>
    <pre>
<%= "// Encapsulation: Private fields and public methods for accessing data\n" %>
<%= "import java.util.ArrayList;\n" %>
<%= "import java.util.Scanner;\n" %>
<%= "\n" %>
<%= "class Property {\n" %>
<%= "    private String propertyId;\n" %>
<%= "    private String propertyName;\n" %>
<%= "    private long propertyValue;\n" %>
<%= "    private String propertyResArea;\n" %>
<%= "\n" %>
<%= "    public Property(String id, String name, long value, String proprtyResArea) {\n" %>
<%= "        propertyId = id;\n" %>
<%= "        propertyName = name;\n" %>
<%= "        propertyValue = value;\n" %>
<%= "        propertyResArea = residential_area;\n" %>
<%= "    }\n" %>
<%= "\n" %>
<%= "    public String getPropertyId() {\n" %>
<%= "        return propertyId;\n" %>
<%= "    }\n" %>
<%= "\n" %>
<%= "    public String getPropertyName() {\n" %>
<%= "        return propertyName;\n" %>
<%= "    }\n" %>
<%= "\n" %>
<%= "    public long getPropertyValue() {\n" %>
<%= "        return propertyValue;\n" %>
<%= "    }\n" %>
<%= "}\n" %>
<%= "\n" %>
<%= "class Person {\n" %>
<%= "    private String name;\n" %>
<%= "\n" %>
<%= "    public Person(String name) {\n" %>
<%= "        this.name = name;\n" %>
<%= "    }\n" %>
<%= "\n" %>
<%= "    public String getName() {\n" %>
<%= "        return name;\n" %>
<%= "    }\n" %>
<%= "}\n" %>
<%= "\n" %>
<%= "class PropertyOwner extends Person {\n" %>
<%= "    private Property ownedProperty;\n" %>
<%= "\n" %>
<%= "    public PropertyOwner(String name, Property property) {\n" %>
<%= "        super(name);\n" %>
<%= "        ownedProperty = property;\n" %>
<%= "    }\n" %>
<%= "\n" %>
<%= "    public Property getOwnedProperty() {\n" %>
<%= "        return ownedProperty;\n" %>
<%= "    }\n" %>
<%= "}\n" %>
<%= "\n" %>
<%= "interface Payment {\n" %>
<%= "    public void makePayment(long amount);\n" %>
<%= "}\n" %>
<%= "\n" %>
<%= "class CashPayment implements Payment {\n" %>
<%= "    @Override\n" %>
<%= "    public void makePayment(long amount) {\n" %>
<%= "        System.out.println(\"Paid $\" + amount + \" in cash.\");\n" %>
<%= "    }\n" %>
<%= "}\n" %>
<%= "\n" %>
<%= "class CreditCardPayment implements Payment {\n" %>
<%= "    @Override\n" %>
<%= "    public void makePayment(long amount) {\n" %>
<%= "        System.out.println(\"Paid $\" + amount + \" using a credit card.\");\n" %>
<%= "    }\n" %>
<%= "}\n" %>
<%= "\n" %>
<%= "class PropertyManagementSystem {\n" %>
<%= "    public void transferPropertyOwnership(Property property, PropertyOwner newOwner, Payment payment) {\n" %>
<%= "        System.out.println(newOwner.getName() + \" is the new owner of \" + property.getPropertyName());\n" %>
<%= "        payment.makePayment(property.getPropertyValue());\n" %>
<%= "    }\n" %>
<%= "}\n" %>
<%= "\n" %>
<%= "public class Main {\n" %>
<%= "    public static void main(String[] args) {\n" %>
<%= "        Scanner sc = new Scanner(System.in);\n" %>
<%= "        ArrayList<Property> properties = new ArrayList<>();\n" %>
<%= "\n" %>
<%= "        while (true) {\n" %>
<%= "            System.out.println(\"Property Management System Menu:\");\n" %>
<%= "            System.out.println(\"1. Add a Property\");\n" %>
<%= "            System.out.println(\"2. Remove a Property\");\n" %>
<%= "            System.out.println(\"3. Display All Properties\");\n" %>
<%= "            System.out.println(\"4. Exit\");\n" %>
<%= "            System.out.print(\"Enter your choice: \");\n" %>
<%= "            int choice = sc.nextInt();\n" %>
<%= "\n" %>
<%= "            switch (choice) {\n" %>
<%= "                case 1:\n" %>
<%= "                    System.out.println(\"Enter Property ID: \");\n" %>
<%= "                    String propertyId = sc.next();\n" %>
<%= "                    System.out.println(\"Enter Property Name: \");\n" %>
<%= "                    String propertyName = sc.nextLine();\n" %>
<%= "                    sc.nextLine();\n" %>
<%= "\n" %>
<%= "                    System.out.println(\"Enter Property Value: \");\n" %>
<%= "                    long propertyValue = sc.nextLong();\n" %>
<%= "\n" %>
<%= "                    Property property = new Property(propertyId, propertyName, propertyValue);\n" %>
<%= "                    properties.add(property);\n" %>
<%= "                    System.out.println(\"Property added successfully.\");\n" %>
<%= "                    break;\n" %>
<%= "\n" %>
<%= "                case 2:\n" %>
<%= "                    System.out.println(\"Enter Property ID to remove: \");\n" %>
<%= "                    String idToRemove = sc.next();\n" %>
<%= "                    Property propertyToRemove = null;\n" %>
<%= "\n" %>
<%= "                    for (Property p : properties) {\n" %>
<%= "                        if (p.getPropertyId().equals(idToRemove)) {\n" %>
<%= "                            propertyToRemove = p;\n" %>
<%= "                            break;\n" %>
<%= "                        }\n" %>
<%= "                    }\n" %>
<%= "\n" %>
<%= "                    if (propertyToRemove != null) {\n" %>
<%= "                        properties.remove(propertyToRemove);\n" %>
<%= "                        System.out.println(\"Property removed successfully.\");\n" %>
<%= "                    } else {\n" %>
<%= "                        System.out.println(\"Property with ID \" + idToRemove + \" not found.\");\n" %>
<%= "                    }\n" %>
<%= "                    break;\n" %>
<%= "\n" %>
<%= "                case 3:\n" %>
<%= "                    System.out.println(\"List of Properties:\");\n" %>
<%= "                    for (Property p : properties) {\n" %>
<%= "                        System.out.println(\"Property ID: \" + p.getPropertyId());\n" %>
<%= "                        System.out.println(\"Property Name: \" + p.getPropertyName());\n" %>
<%= "                        System.out.println(\"Property Value: $\" + p.getPropertyValue());\n" %>
<%= "                    }\n" %>
<%= "                    break;\n" %>
<%= "\n" %>
<%= "                case 4:\n" %>
<%= "                    System.out.println(\"Exiting Property Management System.\");\n" %>
<%= "                    sc.close();\n" %>
<%= "                    System.exit(0);\n" %>
<%= "\n" %>
<%= "                default:\n" %>
<%= "                    System.out.println(\"Invalid choice. Please enter a valid option.\");\n" %>
<%= "                    break;\n" %>
<%= "            }\n" %>
<%= "        }\n" %>
<%= "    }\n" %>
<%= "}\n" %>
    </pre>
</body>
</html>