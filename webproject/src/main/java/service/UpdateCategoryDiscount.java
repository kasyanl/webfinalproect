
package service;

import bean.Product;
import menu.MainMenu;
import proccesor.FindCategoryDiscount;
import proccesor.InputNumber;
import repository.ProductRepository;

import java.util.List;

public class UpdateCategoryDiscount implements ProductRepository {

    private UpdateCategoryDiscount() {
        throw new UnsupportedOperationException();
    }

    public static List<Product> discountCategory(List<Product> productList, InputNumber input, InputNumber in) {

        MainMenu.menuCategory();
        int categoryNumber = input.readNumber();

        return FindCategoryDiscount.fineCategory(productList, categoryNumber, in);
    }
}
