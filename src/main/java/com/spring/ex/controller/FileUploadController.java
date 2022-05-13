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
    	createFolder();
    	// 랜덤 값 생성
    	String uuid = UUID.randomUUID().toString();
    	
    	// 파일을 저장하기 위한 경로와 파일명 지정
        File fileInfo = new File(uploadPath, uuid + file.getOriginalFilename());
        // 파일 저장
        file.transferTo(fileInfo);
        
        return "redirect:uploadPage";
    }
    
    public void createFolder() {
    	File Folder = new File(uploadPath);

    	// 해당 디렉토리가 없을경우 디렉토리를 생성합니다.
    	if (!Folder.exists()) {
    		try{
    		    Folder.mkdir(); //폴더 생성합니다.
    		    System.out.println("폴더가 생성되었습니다.");
    	        } 
    	        catch(Exception e){
    		    e.getStackTrace();
    		}        
             }else {
    		System.out.println("이미 폴더가 생성되어 있습니다.");
    	}
    }
}
