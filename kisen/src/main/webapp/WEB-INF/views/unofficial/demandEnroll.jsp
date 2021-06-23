<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
<title>demandForm</title>





<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<!-- include libraries(jQuery, bootstrap) -->
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<!-- include summernote css/js-->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
<!-- include summernote-ko-KR -->
<script src="/resources/js/summernote-ko-KR.js"></script>

<style>
.btn-outline-warning {
	color: #9033b5;
	background-color: transparent;
	background-image: none;
	border-color: #9033b5;
}

.btn-outline-warning:hover {
	color: white;
	background-color: #c7a2e0;
	background-image: none;
	border-color: #c7a2e0;
}
</style>



</head>
<body>



		

		<div class="container">
			<h2 class="text-center m-4" style="font-weight: bold;">수요조사폼만들기</h2>
			<form:form 
		name="demandForm" 
		action="${pageContext.request.contextPath}/unofficial/demandFormEnroll"
		enctype="multipart/form-data" 
		method ="post">
	
				<div class="mb-4 row">
					<label class="col-md-3 col-form-label" for="pdName">상품명</label>
					<div class="col-md-9">
						<input type="text" class="form-control" name="pdName" id="pdName">
					</div>
				</div>
				<div class="mb-4 row">
					<label class="col-md-3 col-form-label" for="idolName">아이돌</label>
					<div class="col-md-9">
						<input type="text" class="form-control" name="idolName" id="idolName">
					</div>
				</div>

				<div class="mb-4 row">
					<label class="col-md-3 col-form-label" for="pdCategory">분류</label>
					<div class="col-md-9">
						<div class="row">
							<div class="col-auto">
								<select name="unofficalProd" id="unofficalProd" class="form-select">
									<option value="unOfficalProd_goods">인형</option>
									<option value="unOfficalProd_goods">포토카드</option>
									<option value="unOfficalProd_goods">기타</option>
								</select>
							</div>
						</div>
					</div>
				</div>


				<div class="mb-4 row">
					<label class="col-md-3 col-form-label" for="price">가격</label>
					<div class="col-md-9">
						<div class="input-group">
							<input type="number" class="form-control" name="price" id="price">
							<span class="input-group-text">원</span>
						</div>
					</div>
				</div>
				<div class="mb-4 row">
					<label class="col-md-3 col-form-label" for="deliveryPrice">배송비</label>
					<div class="col-md-9">
						<div class="input-group">
							<input type="number" class="form-control" name="deliveryPrice" id="deliveryPrice">
							<span class="input-group-text">원</span>
						</div>
					</div>
				</div>
				<div class="mb-4 row">
					<label class="col-md-3 col-form-label" for="pdStock">재고량</label>
					<div class="col-md-9">
						<input type="number" class="form-control" name="pdStock"
							id="pdStock">
					</div>
				</div>
				<div class="mb-4 row">
					<label class="col-md-3 col-form-label" for="pdSales">판매량</label>
					<div class="col-md-9">
						<input type="number" class="form-control" name="pdSales"
							id="pdSales">
					</div>
				</div>

				<!-- 이미지 -->
				<!-- 썸네일&대표 -->
				<div class="mb-4 row">
					<label class="col-md-3 col-form-label" id="pdImg">대표 이미지</label>
					<div class="col-md-9">
						<input type="file" class="form-control" id="formFile"
							accept="image/png,image/jpeg,image/jpg">
						<div class="alert alert-secondary" role="alert">
							<ul>
								<li>이미지 사이즈 : 300 * 400px</li>
								<li>파일 사이즈 : 1M 이하</li>
								<li>파일 확장자 : png,jpeg,jpg만 가능</li>
							</ul>
						</div>
						<img src="/images/kisen_logo.png" alt="" style="width: 300px;">
					</div>
				</div>





				<div class="form-group">
					<label for="pdContent">상세설명</label>
					<!-- 썸머노트 -->
					<div class = "col-12 col-md-12">
						<br />
						<textarea name = "pContent" class="summernote" placeholder = "내용 입력"></textarea>
					</div>
				</div>
				<!--  <button id="edit" class="btn btn-primary" onclick="edit()"
						type="button">수정하기</button>
					<button id="save" class="btn btn-primary" onclick="save()"
						type="button">저장하기</button>
					<div class="click2edit">click2edit</div>-->




				<script>

				 var check = $('.summernote').summernote({
				        height : 600 // 에디터 높이
				      , minHeight : null // 최소 높이
				      , maxHeight : null // 최대 높이
				      , focus : false  // 에디터 로딩후 포커스를 맞출지 여부
				      , lang : "ko-KR" // 한글 설정
				      , placeholder : '최대 2000자까지 쓸 수 있습니다' //placeholder 설정
				      , callbacks : {
				         onImageUpload : function(files, editor,
				               welEditorble) {
				            data = new FormData();
				            data.append("file", files[0]);
				            var $note = $(this);
				            
				            $.ajax({
				               data : data,
				               type : "post",
				               url : '/dream/pImgInsert.pl', // servlet url
				               cache : false,
				               contentType : false,
				               processData : false,
				               success : function(fileUrl) {
				                  check.summernote('insertImage', fileUrl);
				                  alert("이미지 등록 성공!");
				               },
				               error : function(request, status, error) {
				                  alert("code:" + request.status + "\n"
				                        + "message:"
				                        + request.responseText + "\n"
				                        + "error:" + error);
				               }
				            });
				         }
				      }
				   });

				 var sel_file;
				    function setThumbnail(event){
						var file = event.target.files;
						console.log(file);
						var fileArr = Array.prototype.slice.call(file);

						fileArr.forEach(function(f){
							if(!f.type.match("image.*")){
								alert("확장자는 이미지만 가능합니다.");
								return;
							}	
							sel_file=f;

							var reader = new FileReader();
							reader.onload=function(e){
								$("#thumbNailImg").attr("src",e.target.result);
							}
							reader.readAsDataURL(f);
						});
				    }

				    

				            
				
				        

					

					
				</script>
				<div class="form-group">
					<label for="demandDate">수요조사기간</label>
				</div>
				<!-- jquery UI 링크 -->
				<link rel="stylesheet"
					href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
				</head>
				<body>
					<p>
						<input type="text" id="from"> ~ <input type="text" id="to">
					</p>
					<p>
						<input type="text" id="alternateFrom" size="30"> ~ <input
							type="text" id="alternateTo" size="30">
					</p>

					<!-- jquery UI CDN -->
					<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
					<!-- 언어 별 CDN -->
					<script
						src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.9.2/i18n/jquery.ui.datepicker-ko.min.js"></script>
					<!-- Date 라이브러리 -->
					<script type="text/javascript"
						src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>


					<script>
						$(function() {
							var option = {
								// datepicker 애니메이션 타입
								// option 종류 : "show" , "slideDown", "fadeIn", "blind", "bounce", "clip", "drop", "fold", "slide"
								showAnim : "slideDown",
								// 해당 월의 다른 월의 날짜가 보이는 여부, 예를 들면 10월이면 전후에 9월 마지막과 11월의 시작 일이 보이는 여부입니다. 즉, 달력이 꽉 차 보이게 하는 것
								showOtherMonths : true,
								// 선택 여부 (showOtherMonths 옵션과 같이 일치시키지 않으면 에러가 발생합니다.)
								selectOtherMonths : true,
								// 달력 밑에 오늘과 닫기 버튼이 보인다.
								showButtonPanel : true,
								// 년 월이 셀렉트 박스로 표현 되어서 선택할 수 있다.
								changeMonth : true,
								changeYear : true,
								// 한번에 보이는 개월 수
								numberOfMonths : 1,
								// 데이터 포멧
								dateFormat : "yy-mm-dd",
								// 텍스트 박스 옆의 달력 포시
								showOn : "button",
								//이미지 타입인지 버튼 타입인지 설정
								buttonImageOnly : true,
								// 이미지 경로
								buttonImage : "https://jqueryui.com/resources/demos/datepicker/images/calendar.gif",
								// 버튼 타입이면 버튼 값
								buttonText : "Select date",
								// alt 데이터 포멧
								altFormat : "DD, d MM, yy",
								// 선택 가능한 날짜(수 형식) - 현재 기준 -20일
								minDate : -20,
								// 선택 가능한 최대 날짜(문자 형식) - 현재 기준 +1월 +20일
								maxDate : "+1M +20D",
								// 주 표시
								showWeek : true
							};
							var optionFrom = option;
							optionFrom.altField = "#alternateFrom";
							var dateFormat = "mm/dd/yy";
							// 시작일이 선택이 되면 종료일은 시작일 보다 앞을 선택할 수 없다.
							var from = $("#from").datepicker(optionFrom).on(
									"change",
									function() {
										to.datepicker("option", "minDate",
												getDate(this));
									});
							var optionTo = option;
							optionTo.altField = "#alternateTo";
							// 종료일이 선택이 되면 시작일은 시작일 보다 앞을 선택할 수 없다.
							var to = $("#to").datepicker(optionTo).on(
									"change",
									function() {
										from.datepicker("option", "maxDate",
												getDate(this));
									});
							function getDate(element) {
								return moment(element.value).toDate();
							}
						});


						
						 
						
					</script>


					<div class="form-group">
						<label for="question">(선택)추가질문</label> <input type="text"
							class="form-control" placeholder="추가질문을 받으시려면 작성하세요">
					</div>

					<div class="container text-center">
						<div class="mb-4 row">
							<div class="col-6 d-grid p-1">
								<button type="button" class="btn btn-lg btn-dark"
									style="width: 100%;">취소하기</button>
							</div>
							<div class="col-6 d-grid p-1">
								<button type="button" class="btn btn-lg btn-main" onclick="insert();"
									style="width: 100%;">등록하기</button>
							</div>
						</div>
					</div>
			</form:form>
			</div>
			
			<script>
			function insert(){
			    
			    $.ajax({
			        type:'POST',
			        url : "<c:url value='/unofficial/demandEnroll.do'/>",
			        data:$("#demandForm").serialize(),
			        success(data) {
		                console.log(data);
		                const {msg} = data;
		                alert(msg);
		            },
		              error: console.log, 
		            complete(){
		                e.target.reset(); // 폼초기화
		            } 
		          });
		    });


			</script>
			
			
	


</body>
</html>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>