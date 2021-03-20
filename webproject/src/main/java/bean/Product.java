package bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product{

    private int id;
    private String category;
    private String name;
    private double price;
    private double discount;
    private double actualPrice;
}