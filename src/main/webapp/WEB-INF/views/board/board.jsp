<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- start header -->
<%@ include file="../common/header.jsp" %>
<!-- end header -->

<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <div class="content" id="vue_board" v-if="resultDatas.data != null" v-cloak>
      <div class="scrollable">
      <header class="heading">
      	<span>자유게시판</span>
      	<span id="result_cnt">총 페이지 수 : {{resultDatas.header.resultCnt}}</span>
      </header>
        <table>
          <thead>
            <tr>
              <th width="6%;" class="board_seq">번호</th>
              <th width="*;" class="board_title">제목</th>
              <th width="10%;" class="board_userId">글쓴이</th>
              <th width="8%;" class="board_regDate">날짜</th>
              <th width="6%;" class="board_viewCount">조회</th>
              <th width="6%;" class="board_up">UP</th>
              <th width="6%;" class="board_down">DOWN</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="datas, index in resultDatas.data.list">
              <td class="board_seq">{{datas.seq}}</td>
              <td class="board_title" style="text-align: left;"><a v-on:click="{{getBoardDetail(datas.seq)}}">{{datas.title}}</a></td>
              <td class="board_userId">{{datas.userId}}</td>
              <td class="board_regDate">{{datas.regDate}}</td>
              <td class="board_viewCount">{{datas.viewCount}}</td>
              <td class="board_up">{{datas.up}}</td>
              <td class="board_down">{{datas.down}}</td>
            </tr>
          </tbody>
        </table>
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
<script src="/js/vue/board/vue-board.js"></script>

<!-- start vue-common -->
<%-- <%@ include file="../common/vue-common.jsp" %> --%>
<!-- end vue-common -->