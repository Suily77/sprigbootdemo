package com.psl.sprigbootdemo.BootService.Imp;

import com.psl.sprigbootdemo.BootService.ClientService;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.Map;
@Component
public class ClientServiceImp implements ClientService {
    @Override
    public Map<String, String> init() {
        return null;
    }

    @Override
    public String in() {
        return "xml调用测试";
    }

}
