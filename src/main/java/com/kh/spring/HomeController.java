package com.kh.spring;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Model model, HttpSession session) {
        
        // 1. 로그인 유저 정보 (ERD의 USER 테이블 기반 가짜 데이터)
        // 세션에 유저 정보가 없으면 임시로 넣어줍니다 (로그인 테스트용)
        

        // 2. 진행 상태 및 지점 리스트 (ERD의 MAP/NODE 테이블 기반)
        

        // 3. JSP에서 사용할 이름표("이름")와 데이터(객체)를 연결
        

        // 4. 리턴값은 JSP 파일의 이름 (WEB-INF/views/home.jsp)
        return "home";
    }
}