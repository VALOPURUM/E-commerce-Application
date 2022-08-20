package com.val.ecommerceapp.model;

public class Product {
    private int ID;
    private String name;
    private String category;
    private String price;
    private String image;

    public Product() {
    }

    public Product(int ID, String name, String category, String price, String image) {
        this.ID = ID;
        this.name = name;
        this.category = category;
        this.price = price;
        this.image = image;
    }

    @Override
    public String toString() {
        return "Product{" +
                "ID=" + ID +
                ", name='" + name + '\'' +
                ", category='" + category + '\'' +
                ", price='" + price + '\'' +
                ", image='" + image + '\'' +
                '}';
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
