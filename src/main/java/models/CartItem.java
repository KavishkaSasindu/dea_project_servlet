package models;

public class CartItem {
    private int productId;
    private String pName;
    private String pPrice;
    private String pDescription;
    private String mainImage;
    private String img1;
    private String img2;
    private String img3;
    private int quantity;
    private String category;
    private User user;

    public CartItem() {
    }

    public CartItem(int productId, String pName, String pPrice, String pDescription, String mainImage, String img1, String img2, String img3, int quantity, String category, User user) {
        this.productId = productId;
        this.pName = pName;
        this.pPrice = pPrice;
        this.pDescription = pDescription;
        this.mainImage = mainImage;
        this.img1 = img1;
        this.img2 = img2;
        this.img3 = img3;
        this.quantity = quantity;
        this.category = category;
        this.user = user;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public String getpPrice() {
        return pPrice;
    }

    public void setpPrice(String pPrice) {
        this.pPrice = pPrice;
    }

    public String getpDescription() {
        return pDescription;
    }

    public void setpDescription(String pDescription) {
        this.pDescription = pDescription;
    }

    public String getMainImage() {
        return mainImage;
    }

    public void setMainImage(String mainImage) {
        this.mainImage = mainImage;
    }

    public String getImg1() {
        return img1;
    }

    public void setImg1(String img1) {
        this.img1 = img1;
    }

    public String getImg2() {
        return img2;
    }

    public void setImg2(String img2) {
        this.img2 = img2;
    }

    public String getImg3() {
        return img3;
    }

    public void setImg3(String img3) {
        this.img3 = img3;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}