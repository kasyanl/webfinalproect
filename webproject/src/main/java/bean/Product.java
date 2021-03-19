package bean;

import enums.Category;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.util.ArrayList;
import java.util.List;

import static enums.Category.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product {
    public static List<Product> listProduct= new ArrayList<>();

    private int id;
    private String category;
    private String name;
    private double price;
    private double discount;
    private double actualPrice;

    static {
        listProduct.add(new Product(0, "Фрукты", "Яблоки", 10.00, 50.0, 5.00));
        listProduct.add(new Product(listProduct.size(), "Фрукты", "Апельсины", 12.10, 10.0, 10.89));
        listProduct.add(new Product(listProduct.size(), "Фрукты", "Бананы", 9.50, 20.0, 7.60));
        listProduct.add(new Product(listProduct.size(),"Ягоды", "Вишня", 25.00, 5.0, 23.75));
        listProduct.add(new Product(listProduct.size(),"Ягоды", "Клубника", 15.25, 60.0, 6.10));
        listProduct.add(new Product(listProduct.size(),"Ягоды", "Арбуз", 50.20, 15.0, 42.67));
        listProduct.add(new Product(listProduct.size(),"Овощи", "Помидоры", 5.50, 30.0, 3.85));
        listProduct.add(new Product(listProduct.size(),"Овощи", "Огурцы", 3.20, 20.0, 2.56));
    }
}