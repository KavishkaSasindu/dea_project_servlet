package models;

public class CartItem extends Product{
    private int quantity;



    public CartItem(){

    }




    @Override
    public int getQuantity() {
        return quantity;
    }

    @Override
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}