<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@ page session="false"%> --%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <script type="text/javascript">
  function workingClock() {
		var days=["일","월","화","수","목","금","토"];
		var today = new Date();
		var year = today.getFullYear();
		var month = today.getMonth()+1;
		if(month < 10) month="0" + month;
		var date = today.getDate();
		if(date<10) date="0"+date;
		var index = today.getDay();
		var day = days[index];
		var hour = today.getHours();
		var min = today.getMinutes();
		if(min < 10) min="0" +min;
		var sec = today.getSeconds();
		if(sec < 10) sec = "0"+sec;
		var str = year+"-"+month+"-"+date + "  " + day+"  "+ hour +" : "+ min+" : "+ sec;
		document.getElementById("clock").innerHTML = str;
	}

	function startClock() {
		setInterval(workingClock, 1000);
	}
  </script>

  <title>JAVAGERS's Final Legend Project</title>
  <style type="text/css">
  
  #content{
	width: 99%;
	height:30%;
	float: left;
/*  	background-image: url('../imgs/main1.jpg');    */
	background-size: 1800px;
}
	
	/* #aside{
	color: red;
		font-size: 20px;
	}	 */
  </style>

  <!-- Custom fonts for this template-->
  <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="${pageContext.request.contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">
</head>

<body id="page-top" onload="javascript:startClock()">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="../home/intro.html">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3" > POKEMON Home</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link"> JSL 34기 Javagers <br/> 최종 프로젝트 <br/> 이 부분 활용 가능
        <div id="aside">
		<fieldset>
			<c:choose>
				<c:when test="${sessionScope.loginUser != null }">
					<jsp:include page="logoutForm.jsp"/>
				</c:when>
				<c:when test="${HEADER != null }">
					<jsp:include page="${HEADER }"/>
				</c:when>
				<c:otherwise>
					<jsp:include page="../login/login.html"/>
				</c:otherwise>
			</c:choose>
			
		</fieldset>
	</div>
          <span></span>
          </a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

   	   <!-- Heading -->
      <div class="sidebar-heading">
        	원하시는 게시판을 누르세요.
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" href="../home/intro.html" >
          <span>나의 포켓몬 DECK</span>
        </a>
      </li>
       
	  <!-- Divider -->
      <hr class="sidebar-divider">
      
      <li class="nav-item">
        <a class="nav-link collapsed" href="../read/read.html">
          <span>포켓몬 도감(썸네일)</span>
        </a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">
      
      <li class="nav-item">
        <a class="nav-link collapsed" href="#">
          <span>포켓몬 도감(능력치)</span>
        </a>
      </li>
	
	  <!-- Divider -->
      <hr class="sidebar-divider">
      
      <li class="nav-item">
        <a class="nav-link collapsed" href="#">
          <span>포켓몬 위시리스트</span>
        </a>
      </li>
      
      <!-- Divider -->
      <hr class="sidebar-divider">
      
      <li class="nav-item">
        <a class="nav-link collapsed" href="#">
          <span>포켓몬 대전</span>
        </a>
      </li>
      
      <!-- Divider -->
      <hr class="sidebar-divider">
      
       <li class="nav-item">
        <a class="nav-link collapsed" href="#">
          <span>포켓몬 월드랭킹</span>
        </a>
      </li>
      
      <!-- Divider -->
      <hr class="sidebar-divider">
      
        <li class="nav-item">
        <a class="nav-link collapsed" href="#">
          <span>포켓몬 거래게시판</span>
        </a>
      </li>
      
       <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
          <span>My Page</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">선택하기 </h6>
            <a class="collapse-item" href="login.html">로그인</a>
            <a class="collapse-item" href="../home/userentry.html">회원가입</a>
            <a class="collapse-item" href="forgot-password.html">비밀번호 찾기</a>
          </div>
        </div>
      </li>
      	
      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">
		
		
      <!-- 사이드바 화살표 -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>
    </ul>
    
    <!-- End of Sidebar -->
    

    

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">
	  
      <!-- Main Content -->
<!--       <div id="content"> -->
		
	
        <!-- 화면 상단바 -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

<!--           Sidebar Toggle (Topbar) -->
<!--           <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3"> -->
<!--             <i class="fa fa-bars"></i> -->
<!--           </button> -->

          <!-- Topbar Search -->
          <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
              <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fas fa-search fa-sm"></i>
                </button>
              </div>
            </div>
          </form>

				<a href="#" onclick="javascript:startClock()"> </a>
				<div id="clock">마법의 화면</div>

				<!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>

            <!-- Nav Item - Alerts -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-bell fa-fw"></i>
                <!-- Counter - Alerts -->
                <span class="badge badge-danger badge-counter">3+</span>
              </a>
              <!-- Dropdown - Alerts -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                <h6 class="dropdown-header">
                  	<h5>     Alert</h5>
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-primary">
                      <i class="fas fa-file-alt text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">August 20, 2019</div>
                    <span class="font-weight-bold">회원가입, 로그인 화면 구현하기</span>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-success">
                      <i class="fas fa-donate text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">August 20, 2019</div>
                    	진영이 죽여버리기
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-warning">
                      <i class="fas fa-exclamation-triangle text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">August 21, 2019</div>
                    	진영이 한 번 더 죽여버리기
                  </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Close</a>
              </div>
            </li>

            <!-- Nav Item - Messages -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-envelope fa-fw"></i>
                <!-- Counter - Messages -->
                <span class="badge badge-danger badge-counter">4</span>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
                <h6 class="dropdown-header">
                  Message Center
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/fn_BT9fwg_E/60x60" alt="">
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div class="font-weight-bold">
                    <div class="text-truncate">재영이형 ! 오늘 저랑 포켓몬 대결하기로 하셨잖아요 ! </div>
                    <div class="small text-gray-500">정 진영 · 58분 전</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">
                    <div class="status-indicator"></div>
                  </div>
                  <div>
                    <div class="text-truncate">이쪽에 잠만보 발견이요!</div>
                    <div class="small text-gray-500">김 도완 · 1시간 전</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">
                    <div class="status-indicator bg-warning"></div>
                  </div>
                  <div>
                    <div class="text-truncate">오빠 왜 이렇게 연락이...</div>
                    <div class="small text-gray-500">강민경 · 2시간 전 </div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div>
                    <div class="text-truncate">오빠 제발 좀 연락해..죽을 것 같아</div>
                    <div class="small text-gray-500">크리스탈 · 4시간 전</div>
                  </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
              </div>
            </li>

            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">장재영 회원님</span>
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Profile
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                  Settings
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                  Activity Log
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->


        <!-- Begin Page Content -->
        <div class="container-fluid">
		이곳도 활용할 수 있음.
        </div>
        
	<div id="content">
		<c:choose>
			<c:when test="${BODY != null }">		
				<jsp:include page="${BODY }"/>  
			</c:when>
			<c:otherwise>
<%-- 				<jsp:include page="front.jsp"/> --%>
				<img alt="" src="../imgs/main1.jpg" width="100%" height="100%"/>
			</c:otherwise>
		</c:choose>	
	</div>
        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

<!--       Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; 자바져스의 성공적인 프로젝트를 위해 </span>
          </div>
        </div>
      </footer>
<!--       End of Footer -->

<!--     </div> -->
<!--     End of Content Wrapper -->

<!--   </div> -->
<!--   <!-- End of Page Wrapper --> -->

  <!-- 스크롤 제일 위로 버튼-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>
  

  <!-- Bootstrap core JavaScript-->
  <script src="<c:url value="/resources/vendor/jquery/jquery.min.js"/>"></script>
  <script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

  <!-- Core plugin JavaScript-->
  <script src="<c:url value="/resources/vendor/jquery-easing/jquery.easing.min.js"/>"></script>

  <!-- Custom scripts for all pages-->
  <script src="<c:url value="/resources/js/sb-admin-2.min.js"/>"></script>

  <!-- Page level plugins -->
  <script src="<c:url value="/resources/vendor/chart.js/Chart.min.js"/>"></script>

  <!-- Page level custom scripts -->
  <script src="<c:url value="/resources/js/demo/chart-area-demo.js"/>"></script>
  <script src="<c:url value="/resources/js/demo/chart-pie-demo.js"/>"></script>

</body>

</html>
