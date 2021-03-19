package bean;

import enums.Category;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Objects;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product {

    private long id;
    private Category category;
    private String name;
    private double price;
    private double discount;
    private double actualPrice;


    @Override
    public String toString() {
        return "Продукт{" +
                "id = " + id +
                ", КАТЕГОРИЯ = " + category +
                ", НАИМЕНОВАНИЕ = '" + name +
                "', ЦЕНА = " + price + " BYN" +
                ", СКИДКА = " + discount + " %" +
                ", АКТУАЛЬНАЯ ЦЕНА = " + (price - (price * discount / 100)) + " BYN" +
                '}';
    }
}