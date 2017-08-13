//判断平台，如果是安卓和iOS则不显示标题栏
document.addEventListener("plusready", function() {

	function judgePlatform() {
		switch(plus.os.name) {
			case "Android":
				// Android平台: plus.android.*
				break;
			case "iOS":
				// iOS平台: plus.ios.*
				break;
			default:
				// 其它平台
				show();
				break;
		}
	}
	judgePlatform();
	function show(){
		$('.mui-bar-nav').css('display','inline-block');
		$('.mui-bar').css('height','44px');
		$(".mui-bar-nav~.mui-content").css('padding-top','44px');
	}

/*1.上拉加载和下拉刷新显示和隐藏标题栏和底部菜单*/

	  var _BARCODE = 'plugintest',
			B = window.plus.bridge;
	  var plugintest = 
	  {
	  	/*----------------csx---------*/
	  	HomePageGesture : function (Argus1) //首页轮播的左右滑动
	      {                  
	        return B.execSync(_BARCODE, "HomePageGesture", [Argus1]);
	      },
	  	  Banner : function (Argus1) //首页轮播的左右滑动
	      {                  
	        return B.execSync(_BARCODE, "Banner", [Argus1]);
	      },
	      QuizzGesture : function (Argus1) //竞猜列表的上拉下拉
	      {                  
	          return B.execSync(_BARCODE, "QuizzGesture", [Argus1]);
	      },
	      QuizzRule : function (Argus1,Argus2,Argus3) //竞猜规则
	      {                  
	          return B.execSync(_BARCODE, "QuizzRule", [Argus1,Argus2,Argus3]);
	      },
	      MyQuizzes : function (Argus1,Argus2) //我的竞猜
	      {                  
	          return B.execSync(_BARCODE, "MyQuizzes", [Argus1,Argus2]);
	      },
	      articleSortGesture : function (Argus1) //文章分类的上拉下拉
	      {                  
	          return B.execSync(_BARCODE, "articleSortGesture", [Argus1]);
	      },
	      ArticleShot : function (Argus1,Argus2,Argus3) //文章分类
	      {                  
	          return B.execSync(_BARCODE, "ArticleShot", [Argus1,Argus2,Argus3]);
	      },
	      articleGesture : function (Argus1) //文章列表的上拉下拉
	      {                  
	          return B.execSync(_BARCODE, "articleGesture", [Argus1]);
	      },
	      Article : function (Argus1,Argus2,Argus3) //文章列表
	      {                  
	          return B.execSync(_BARCODE, "Article", [Argus1,Argus2,Argus3]);
	      },
	      associationDetailsGesture : function (Argus1) //社团详情
	      {                  
	          return B.execSync(_BARCODE, "associationDetailsGesture", [Argus1]);
	      },
	      gameRecordGesture : function (Argus1) //比赛记录详情
	      {                  
	          return B.execSync(_BARCODE, "gameRecordGesture", [Argus1]);
	      },
	      hotArticle : function (Argus1,Argus2,Argus3)//首页最热文章
	      {                  
	          return B.execSync(_BARCODE, "hotArticle", [Argus1,Argus2,Argus3]);
	      },
	      
	      AssociationListPage : function (Argus1,Argus2) //首页社团
	      {                  
	          return B.execSync(_BARCODE, "AssociationListPage", [Argus1,Argus2]);
	      },
	      SlamballTeamsPage : function (Argus1,Argus2) //首页球队
	      {                  
	          return B.execSync(_BARCODE, "SlamballTeamsPage", [Argus1,Argus2]);
	      },
	       ArticleSortPage : function (Argus1,Argus2) //首页文章
	      {                  
	          return B.execSync(_BARCODE, "ArticleSortPage", [Argus1,Argus2]);
	      },
	       CompetitionPage : function (Argus1,Argus2) //首页赛季
	      {                  
	          return B.execSync(_BARCODE, "CompetitionPage", [Argus1,Argus2]);
	      },
	       VoteActivityPage : function (Argus1,Argus2) //首页投票
	      {                  
	          return B.execSync(_BARCODE, "VoteActivityPage", [Argus1,Argus2]);
	      },
	      /*----------------bzy---------*/
	      TeamFightGesture : function (Argus1) //
	      {                  
	          return B.execSync(_BARCODE, "TeamFightGesture", [Argus1]);
	      },
	      CompetitionTeams : function (Argus1,Argus2,Argus3) //参赛队伍
	      {                 
	          return B.execSync(_BARCODE, "CompetitionTeams", [Argus1,Argus2,Argus3]);
	      },
	      quizzesRecordsTop : function (Argus1,Argus2,Argus3) //积分榜
	      {                  
	          return B.execSync(_BARCODE, "quizzesRecordsTop", [Argus1,Argus2,Argus3]);
	      },
	      TeamFight: function (Argus1,Argus2,Argus3,Argus4) //更多比赛
	      {                  
	          return B.execSync(_BARCODE, "TeamFight", [Argus1,Argus2,Argus3,Argus4]);
	      },
	      playerCompetitionGesture : function (Argus1) //球员比赛记录页面
	      {                  
	          return B.execSync(_BARCODE, "playerCompetitionGesture", [Argus1]);
	      },
	      gameRecordDetailsGesture : function (Argus1,Argus2,Argus3) //比赛详情
	      {                  
	          return B.execSync(_BARCODE, "gameRecordDetailsGesture", [Argus1,Argus2,Argus3]);
	      },
	      gameRecordDetails : function (Argus1,Argus2,Argus3) //比赛详情
	      {                  
	          return B.execSync(_BARCODE, "gameRecordDetails", [Argus1,Argus2,Argus3]);
	      },
	      SearchMore : function (Argus1,Argus2) //搜索更多
	      {                  
	          return B.execSync(_BARCODE, "SearchMore", [Argus1,Argus2]);
	      },
	      /*----------------hwq---------*/
    	  VoteDetails : function(Argus1,Argus2,Argus3)
	      {
	      	  return B.execSync(_BARCODE, "VoteDetails", [Argus1,Argus2,Argus3]);
	      },
	      
	      PlayerList : function(Argus1,Argus2,Argus3)
	      {
	      	  return B.execSync(_BARCODE, "PlayerList", [Argus1,Argus2,Argus3]);
	      },
	      
	      TeamFightMore : function(Argus1,Argus2,Argus3)
	      {
	      	  return B.execSync(_BARCODE, "TeamFightMore", [Argus1,Argus2,Argus3]);
	      },
	      /*---------------zst-------------*/
	      CompetitionteamsGesture : function (Argus1) //参赛队伍上拉下拉
	      {                  
	          return B.execSync(_BARCODE, "CompetitionteamsGesture", [Argus1]);
	      },
		  More : function (Argus1,Argus2,Argus3) //球员详情--更多
	      {                  
	          return B.execSync(_BARCODE, "More", [Argus1,Argus2,Argus3]);
	      },
	      Details : function (Argus1,Argus2,Argus3) //球员详情---详情
	      {                  
	          return B.execSync(_BARCODE, "Details", [Argus1,Argus2,Argus3]);
	      },
	      /*-------------bcs----------------*/
	      QuizzesRecordsTopGesture : function (Argus1)  //积分榜上下拉
	      {                  
	          return B.execSync(_BARCODE, "QuizzesRecordsTopGesture", [Argus1]);
	      },
	      VoteActivityGesture : function (Argus1)  //投票上下拉
	      {                  
	          return B.execSync(_BARCODE, "VoteActivityGesture", [Argus1]);
	      },
	      Vote : function (Argus1,Argus2,Argus3) //投票跳投票详情
	      {                  
	          return B.execSync(_BARCODE, "Vote", [Argus1,Argus2,Argus3]);
	      },
	      VoteResult : function (Argus1,Argus2,Argus3) //投票跳投票结果
	      {                  
	          return B.execSync(_BARCODE, "VoteResult", [Argus1,Argus2,Argus3]);
	      },
	      playerDetails : function (Argus1,Argus2,Argus3) //球队详情 跳 球员详情
	      {                  
	          return B.execSync(_BARCODE, "playerDetails", [Argus1,Argus2,Argus3]);
	      },
	       playerList : function (Argus1,Argus2,Argus3) //球队详情 跳 球员列表
	      {                  
	          return B.execSync(_BARCODE, "playerList", [Argus1,Argus2,Argus3]);
	      },
	       gameRecord : function (Argus1,Argus2,Argus3) //球队详情 跳 比赛记录详情
	      {                  
	          return B.execSync(_BARCODE, "gameRecord", [Argus1,Argus2,Argus3]);
	      },	      	      
	      /*----------------cx------------------*/
   		  CompetitionGesture : function (Argus1) //赛事跳转
	      {                  
	        return B.execSync(_BARCODE, "CompetitionGesture", [Argus1]);
	      },
	   	  Competition  : function (Argus1,Argus2,Argus3) //赛事
	      {                  
	        return B.execSync(_BARCODE, "Competition", [Argus1,Argus2,Argus3]);
	      },
	   		AssociationListGesture : function (Argus1)  //社团跳转  球队跳转 我的社团跳转
	      {                  
	        return B.execSync(_BARCODE, "AssociationListGesture", [Argus1]);
	      },
	   	  AssociationUsers:  function (Argus1,Argus2,Argus3) //我的社团 
	      {                  
	        return B.execSync(_BARCODE, "AssociationUsers", [Argus1,Argus2,Argus3]);
	      },
	      
	   	  AssociationDetails  : function (Argus1,Argus2,Argus3) //社团详情 球队详情
	      {                  
	        return B.execSync(_BARCODE, "AssociationDetails", [Argus1,Argus2,Argus3]);
	      }
	  };
	  window.plus.plugintest = plugintest;
}, true);