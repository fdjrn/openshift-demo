package id.fdjrn.msa.openshiftdemo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/kickstart")
public class KickStartController {


    @GetMapping
    public Map<String, Object> kickStart() {
        Map<String, Object> result = new HashMap<>();
        result.put("status", "success");
        result.put("message", "Kick start");
        result.put("timestamp", System.currentTimeMillis());
        return result;
    }

}
