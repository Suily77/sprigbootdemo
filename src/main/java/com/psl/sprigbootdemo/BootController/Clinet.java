package com.psl.sprigbootdemo.BootController;

import com.psl.sprigbootdemo.BootService.ClientService;
import com.psl.sprigbootdemo.Modal.Oa;
import com.sun.deploy.net.HttpResponse;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;
@Controller
public class Clinet {
    @Autowired
    private ClientService clientService;
    @RequestMapping(value = "/init")
    public Map<String,String> init(HttpServletRequest request, HttpServletResponse response){
        Map<String,String> map=new HashMap<String, String>();
        map.put("key",request.getRemoteAddr());
        map.put("key1",request.getRemoteUser());
        map.put("key2","4");
        map.put("key3","5");
        map.put("key4","6");
        map.put("key5","7");
        System.out.println(map);
        return map;//返回的是json数据类型
    }
    @GetMapping("/auto")
    public String echo(String msg){
        return msg+"www.baidu.com";
    }
    @GetMapping("/auto111/{message}")
    public String echo1(@PathVariable("message") String msg){
        return msg+"www.baidu.com";
    }

    @RequestMapping(value="xx")
    public String xx(){
        return clientService.in();
    }
    /***
     * 跳转到前台页面
     **/
    @GetMapping("/hm/hm01")
    public String hm01data(String mid, Model model, Oa oa){
        model.addAttribute("url","www.xxxx");
        model.addAttribute("mid","dscscscsccs");
        oa.setName("psl");
        oa.setAge(23);
        oa.setAddress("shanghai");
        oa.setPhone(18270175760L);
        model.addAttribute("oa",oa);
        return "hm/hm01";
    }
    /***
     * 跳转到前台页面2
     **/
    @GetMapping("/hm/hm011")
    public String hm01data2(){
        return "hm/hm01";
    }
}
