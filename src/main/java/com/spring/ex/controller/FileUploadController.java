package com.spring.ex.controller;

import java.io.File;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class FileUploadController {
	@Resource(name="uploadPath")
    String uploadPath;
    
    @RequestMapping(value="/uploadPage", method=RequestMethod.GET)
    public String fileupload() {
        return "fileuploadTest";
    }
    
    @RequestMapping(value="/upload", method=RequestMethod.POST)
    public String uploadForm(@RequestParam MultipartFile file) throws Exception {
    	// 랜덤 값 생성
    	String uuid = UUID.randomUUID().toString();
    	
    	// 파일을 저장하기 위한 경로와 파일명 지정
        File fileInfo = new File(uploadPath, uuid + file.getOriginalFilename());
        // 파일 저장
        file.transferTo(fileInfo);
        
        return "redirect:uploadPage";
    }
}
