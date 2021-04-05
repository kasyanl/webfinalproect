package kasyan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/")
public class IndexController {

    @RequestMapping(method = RequestMethod.GET)
    public String index() {
        return "index";
    }

    @GetMapping(value = "/content")
    public String content() {
        return "content";
    }

    @GetMapping(value = "/sidebar")
    public String sidebar() {
        return "sidebar";
    }

    @GetMapping(value = "/selectcategorybyread")
    public String selectCategoryByRead() {
        return "selectcategorybyread";
    }

}