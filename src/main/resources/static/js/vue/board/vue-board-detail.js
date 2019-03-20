var boardDetailJs = new Vue ({
	el : "#vue_board_detail",
	data : {
		category : 'board_detail',
		url : location.origin + "/api",
		boardDetailParam : {
			category : "",
			seq : ""
		},
		resultDatas : {}
		
	},
	created : function () {
	  // Initialize Firebase
	  var config = {
	    apiKey: "AIzaSyCOAtVNdFdkNNmuGk0HJJKgbS19AbZHlMk",
	    authDomain: "kibe-26e58.firebaseapp.com",
	    databaseURL: "https://kibe-26e58.firebaseio.com",
	    projectId: "kibe-26e58",
	    storageBucket: "",
	    messagingSenderId: "195081640198"
	  };
	  	firebase.initializeApp(config);
		
		var queryString = (window.location.href).split("?")[1];
		var seq = queryString.split('=')[1];
		this.boardDetailParam.seq = seq;

	},
	mounted : function () {
		axios
	    .get(this.url + "/board/detail/" + this.boardDetailParam.seq)
	    .then(function(response){
	    	this.resultDatas = response.data;
	    	document.title = this.resultDatas.data.list[0].title;
	    }.bind(this))
	    .catch(function(e) {
	    });	
	},
	methods : {
	},
	
	computed : function () {
		
	},
	watch : {
		
	}
});