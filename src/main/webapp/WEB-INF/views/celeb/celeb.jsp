<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- start header -->
<%@ include file="../common/header.jsp" %>
<!-- end header -->

<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <div class="content" id="vue_celeb"> 
      <div id="gallery">
        <figure>
          <header class="heading">인물</header>
          <ul class="nospace clear">
            <li class="one_quarter first">
            	<a href="#"><img src="/images/demo/gallery/wsyoo.png" alt=""></a>
            	<span class="image_font" style="font-size:11px;">조회수 : 100 | 추천수 : 100 | 댓글 : 3</span>
            </li>
            <li class="one_quarter"><a href="#"><img src="/images/demo/gallery/wsyoo.png" alt=""></a></li>
            <li class="one_quarter"><a href="#"><img src="/images/demo/gallery/01.png" alt=""></a></li>
            <li class="one_quarter"><a href="#"><img src="/images/demo/320x320.png" alt=""></a></li>
            <li class="one_quarter first"><a href="#"><img src="/images/demo/480x400.png" alt=""></a></li>
            <li class="one_quarter"><a href="#"><img src="/images/demo/500x280.png" alt=""></a></li>
            <li class="one_quarter"><a href="#"><img src="/images/demo/gallery/wsyoo.png" alt=""></a></li>
            <li class="one_quarter"><a href="#"><img src="/images/demo/gallery/wsyoo.png" alt=""></a></li>
            <li class="one_quarter first"><a href="#"><img src="/images/demo/gallery/wsyoo.png" alt=""></a></li>
            <li class="one_quarter"><a href="#"><img src="/images/demo/gallery/wsyoo.png" alt=""></a></li>
            <li class="one_quarter"><a href="#"><img src="/images/demo/gallery/wsyoo.png" alt=""></a></li>
            <li class="one_quarter"><a href="#"><img src="/images/demo/gallery/wsyoo.png" alt=""></a></li>
          </ul>
        </figure>
      </div>
      <pagination v-bind:category="category"></pagination>
    </div>
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>

<!-- start footer -->
<%@ include file="../common/footer.jsp" %>
<!-- end footer -->

<script src="/js/vue/common/vue-common.js"></script>
<script src="/js/vue/celeb/vue-celeb.js"></script>

<!-- start vue-common -->
<%-- <%@ include file="../common/vue-common.jsp" %> --%>
<!-- end vue-common -->