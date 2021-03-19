package menu;

import bean.Product;
import lombok.extern.slf4j.Slf4j;
import proccesor.InputNumber;
import proccesor.SortDataBase;


import java.util.List;

import static enums.MessageFormat.EMPTY_STRING;
import static enums.MessageFormat.LINE_STRING;

@Slf4j
public final class MenuSort {
    private MenuSort() {
        throw new UnsupportedOperationException();
    }

    public static List<Product> sortProduct(List<Product> listProduct, InputNumber input) {
        MainMenu.menuSortDataBase();
        int selectSort = input.readNumber();
        switch (selectSort) {
            case 1:
                SortDataBase.sortByName(listProduct);
                log.info("{}{} База данных успешно отсортирована по названию продуктов! {}", EMPTY_STRING, LINE_STRING, LINE_STRING);
                break;
            case 2:
                SortDataBase.sortByCategory(listProduct);
                log.info("{}{} База данных успешно отсортирована по категории продуктов! {}", EMPTY_STRING, LINE_STRING, LINE_STRING);
                break;
            case 3:
                SortDataBase.sortByPrice(listProduct);
                log.info("{}{} База данных успешно отсортирована по первоначальной цене! {}", EMPTY_STRING, LINE_STRING, LINE_STRING);
                break;
            case 4:
                SortDataBase.sortByActualPrice(listProduct);
                log.info("{}{} База данных успешно отсортирована по цене с учетом скидки! {}", EMPTY_STRING, LINE_STRING, LINE_STRING);
                break;
            case 5:
                SortDataBase.sortById(listProduct);
                break;
            default:
                log.info("{}{} Такого варианта выбора нет, повторите его: {}", EMPTY_STRING, LINE_STRING, LINE_STRING);
        }
        return listProduct;
    }
}