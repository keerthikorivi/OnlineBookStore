/**
 * Created by keerthikorvi on 4/28/2015.
 */
public class Product {
    String name;
    int quantity;
    int price;

    Product(String name,int quantity,int price){
        this.name=name;
        this.quantity=quantity;
        this.price=price;
    }
    public String getName(){
        return  this.name;
    }
    public void setName(String name){
        this.name=name;
    }
    public int getQuantity(){
        return  this.quantity;
    }
    public void setQuantity(int quantity){
        this.quantity=quantity;
    }
    public int getPrice(){
        return  this.price;
    }
    public void setPrice(int price){
        this.price=price;
    }


}
