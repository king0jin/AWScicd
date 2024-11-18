package naver.et0709.awscicd;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
public class FrontController {
    //요청할 주소
    @RequestMapping("/")
    public Map<String, Object> index() {
        Map<String, Object> model = new HashMap<>();
        model.put("name", "jini");
        return model;
    }
}
