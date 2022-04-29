<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    	<title> 강의 상세 </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="<c:url value='/resources/img/favicon.ico'/>">
    
    <!-- CSS here -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link rel="stylesheet" href="<c:url value='/resources/css/animate.min.css'/>">
	<link rel="stylesheet" href="<c:url value='/resources/css/fontawesome-all.min.css'/>">
	<link rel="stylesheet" href="<c:url value='/resources/css/themify-icons.css'/>">
	<link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>">
	<style>
		.stars-outer {
            position: relative;
            display: inline-block;
        }

        .stars-inner {
            position: absolute;
            top: 0;
            left: 0;
            white-space: nowrap;
            overflow: hidden;
            width: 0;
        }
		.stars-outer::before {
            content: "\f005 \f005 \f005 \f005 \f005";
            font-family: "Font Awesome 5 Free";
            font-weight: 900;
            color: #ccc;
        }

        .stars-inner::before {
            content: "\f005 \f005 \f005 \f005 \f005";
            font-family: "Font Awesome 5 Free";
            font-weight: 900;
            color: #f8ce0b;
        }
        a {
            color: #635c5c;
            text-decoration: none;
        }
	</style>
</head>

<body>
      <%-- Preloader --%>
    <jsp:include page="../fix/preloader.jsp" />
   
    <%------------ header section  ------------%>
    <jsp:include page="../fix/header.jsp" />
    
    <%-- 상단 강의 정보 부분 --%>
    <div class="container-flex" style="background-color:#000a12">
    	<div class="container p-5">
    		<div class="row">
	    		<%-- 강의 표지 --%>
	    		<div class="col-lg-5">
	    			<img src="<c:url value='/resources/img/service/service_icon_3.png'/>" style="width:440px; height:286px;"/>
	    		</div>
		    	<div class="col-lg-7 card-body text-white">
			    	<h3 class="fw-bold text-white mb-5">비전공자를 위한 개발자 취업 올인원 가이드 [통합편]</h3>
			    	<div class="stars-outer">
		                <div class="stars-inner" style="width:99%"></div>
		            </div>
		            <span class="pr-5 number-rating">(4.9)</span>
		            <span>106개의 수강평 ∙ </span>
		            <span>1984명의 수강생</span>
		            
		            <p class="text-white">강사 이름</p>
			    </div>
		    </div>
	    </div>
    </div>
    
    <!--================Blog Area =================-->
    <div class="container">
    	<div class="row">
    		
		   	<div class="row">
				<div class="col-lg-7 mb-5 mb-lg-0">
				<br>
					<div class="blog_left_sidebar">
						<article class="blog_item">
							<aside class="single_sidebar_widget search_widget">
								<form action="#">
									<div class="row" style="">
										<div class="col-lg-10" >
											<input type="text" class="form-control" placeholder='내용을 검색해보세요!'>
											<input type="text" class="form-control" placeholder='태그로 검색해보세요!' style="margin-top: 10px;">
										</div>
										<div class="col-lg-2" style="padding-left: 7px;">
										
										<input type="button" class="genric-btn danger-border radius" value="검색" style="width: 100%;" >
										</div>
									</div>
								</form>
							</aside>
						</article>
	
						<div class="container">
							<div class="row">
								<ul class="nav nav-tabs">
									<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#qwe"><h6 style="color: #5D5D5D;"> 최신순</h6></a></li>
									<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#asd"><h6 style="color: #5D5D5D;">좋아요순</h6></a></li>
										&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
										&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;
									<li class="nav-item">
										<button type="button" onclick="location.href='/'"
											class="genric-btn danger radius">
											<font size="1px;">글쓰기</font>
										</button>
									</li>
								</ul>
	
								<div class="tab-content">
									<div class="tab-pane fade show active" id="qwe">
										<article class="blog_item">
											<div class="blog_details">
												<a class="d-inline-block" href="single-blog.html">
													<h2>제대로 이해한것인지 궁금합니다.</h2>
												</a>
												<p>5분대부터 헷갈리고 있습니다. 59번째 줄에 killKnight(knight); 가 남아있어서
													그런가? 싶은 생각이 듭니다. 1. 59번째 줄 이후로 knight.hp값이 0...</p>
												<ul class="blog-info-link">
													<li><a href="#"><i class="fa fa-user"></i> choum97</a></li>
													<li><a href="#"><i class="fa fa-comments"></i> 12 </a></li>
													<li><a href="#"><i class="fa fa-heart"></i> 3</a></li>
													<li><i class="fa fa-clock-o"> </i><font size="2" color="#848484">2022-04-12 09:30</font></li>
												</ul>
											</div>
										</article>
	
										<article class="blog_item">
											<div class="blog_details">
												<a class="d-inline-block" href="single-blog.html">
													<h2>이미지 출력 에러가 발생합니다</h2>
												</a>
												<p>이미지 출력하는 부분에서 에러가 발생합니다. 에러 내용은 이러합니다. 파일 경로에 이미지가
													uuid형식으로 저장되는 것은 확인 하였습니다. 어떻게 해결해야...</p>
												<ul class="blog-info-link">
													<li><a href="#"><i class="fa fa-user"></i> choum97</a></li>
													<li><a href="#"><i class="fa fa-comments"></i> 12 </a></li>
													<li><a href="#"><i class="fa fa-heart"></i> 3</a></li>
													<li><i class="fa fa-clock-o"> </i><font size="2" color="#848484">2022-04-12 09:30</font></li>
												</ul>
											</div>
										</article>
									</div>
									<div class="tab-pane fade" id="asd">
										<article class="blog_item">
											<div class="blog_details">
												<a class="d-inline-block" href="single-blog.html">
													<h2>터미널에 명령어</h2>
												</a>
												<p>5분대부터 헷갈리고 있습니다. 59번째 줄에 killKnight(knight); 가 남아있어서
													그런가? 싶은 생각이 듭니다. 1. 59번째 줄 이후로 knight.hp값이 0...</p>
												<ul class="blog-info-link">
													<li><a href="#"><i class="fa fa-user"></i> choum97</a></li>
													<li><a href="#"><i class="fa fa-comments"></i> 12 </a></li>
													<li><a href="#"><i class="fa fa-heart"></i> 3</a></li>
													<li><i class="fa fa-clock-o"> </i><font size="2" color="#848484">2022-04-12 09:30</font></li>
												</ul>
											</div>
										</article>
	
										<article class="blog_item">
											<div class="blog_details">
												<a class="d-inline-block" href="single-blog.html">
													<h2>spring boot 2.5 버전 이상일 경우 오류</h2>
												</a>
												<p>이미지 출력하는 부분에서 에러가 발생합니다. 에러 내용은 이러합니다. 파일 경로에 이미지가
													uuid형식으로 저장되는 것은 확인 하였습니다. 어떻게 해결해야...</p>
												<ul class="blog-info-link">
													<li><a href="#"><i class="fa fa-user"></i> choum97</a></li>
													<li><a href="#"><i class="fa fa-comments"></i> 12 </a></li>
													<li><a href="#"><i class="fa fa-heart"></i> 3</a></li>
													<li><i class="fa fa-clock-o"> </i><font size="2" color="#848484">2022-04-12 09:30</font></li>
												</ul>
											</div>
										</article>
									</div>
	
								</div>
							</div>
						</div>
	
	
					<nav class="blog-pagination justify-content-center d-flex">
						<ul class="pagination">
							<li class="page-item">
								<a href="#" class="page-link" aria-label="Previous"> <i class="ti-angle-left"></i> </a>
							</li>
							<li class="page-item">
								<a href="#" class="page-link">1</a>
							</li>
							<li class="page-item active">
								<a href="#" class="page-link">2</a>
							</li>
							<li class="page-item">
								<a href="#" class="page-link" aria-label="Next"> <i class="ti-angle-right"></i></a>
							</li>
						</ul>
					</nav>
					</div><br>
				</div>
			</div>
		</div>
	</div>
    
    <%------------ footer section  ------------%>
    <jsp:include page="../fix/footer.jsp" />
    <%-- Jquery, Popper, Bootstrap --%>
   	<script src="<c:url value='/resources/js/vendor/jquery-1.12.4.min.js'/>"></script>
	<script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>

    <%-- Jquery Plugins, main Jquery --%>
	<script src="<c:url value='/resources/js/plugins.js'/>"></script>
    <script src="<c:url value='/resources/js/main.js'/>"></script>
</body>
</html>