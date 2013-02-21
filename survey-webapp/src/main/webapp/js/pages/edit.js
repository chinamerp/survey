
window.mainJS || (window.mainJS = {
	curItem : {},
    init: function ($) {

	    $(document).on('ready', function() {
	        // setup dust.js demo
	        dust.render("template/survey_edit",
	            {
	            	data: {
	            		survey:{
	            		    title:'员工满意度调查问卷V1.20',
	            		    desc:'您好！此次问卷调查的目的是为了更确切地了解制作部的管理现状，了解员工对组织管理的评价，以及对管理改善的要求和期望。您的观点和意见对于制作部未来的发展至关重要，我们将以职业的态度对您的问卷严格保密，在此感谢您的积极参与和支持。',
	            		    questions: [{seq:1, type:10, head:'您认为下面对制作部战略制定的描述，哪个比较符合现状',
	            		                 options:[{name:'选项1'},{name:'选项2'}]
	            		                },
	            		                {seq:2, type:20, head:'您认为下面对制作部战略制定的描述，哪个比较符合现状',
	            		                 options:[{name:'选项1'},{name:'选项2'}]
	            		                },
	            		                {seq:3, type:30, head:'您认为下面对制作部战略制定的描述，哪个比较符合现状',
	            		                 options:[{name:'选项1'}]
	            		                }]
	            		    }
	            	}
	            	
	            	
	            },
	            function(err, out) {
	                $("#survey_editor").append(out);
	            });
	         
				$('#survey_editor').delegate('.focusable','focus', function(){
					if (typeof(curItem) !="undefined" && curItem != null){
						curItem.removeClass('focus-in');
					}
    				curItem = $(this);
    				var elclass = curItem.addClass('focus-in');
				});
				
				$('#survey_editor').delegate('.q_item','blur', function(){
    				curItem = null;
				});
				
				$('#survey_editor').on('click',(function() {
					//curItem = $(this);
  					//console.log("parent");
				}));
				// 增加多项选择题
	         	$("#tbar_add_m").click(function(){
	         		var curSeq = $('#survey_qstns').find('li').length+1;
		         	dust.render("template/survey_question",
		            {
            		    questions: [{seq:curSeq, type:10, head:'您认为下面对制作部战略制定的描述，哪个比较符合现状',
            		                 options:[{name:'选项dd1'},{name:'选项dd2'}]
            		                }]
		            },
		            function(err, out) {
		                $("#qstn_addnew").before(out);
		            });
  				});
  				// 增加选项
  				$("#tbar_add_qi").click(function(){
					if (curItem && curItem.attr('data-type')=='survey_q_item'){
						var datatype = curItem.attr('data-type');
						
						curItem.removeClass('focus-in');
						curItem.after(curItem.clone());
						curItem.addClass('focus-in');
					}
  				});
  				// 删除选项
  				$("#tbar_del_qi").click(function(){
					if (curItem && curItem.attr('data-type')=='survey_q_item' && curItem.parent().children().length > 1){
						curItem.remove();
					}
  				});
  				// 保存
  				$("#tbar_save").click(function(){
					var survey = {};
					var title = $('#survey_title').text();
					var desc = $('#survey_desc').text();
					
					survey.title = title;
					survey.desc = desc;
					survey.questions = new Array();
					$('#survey_qstns').find('.survey_q').each(function(i){
						var me = $(this);
						var type = me.attr('opt_type');
						var head = me.find('li').text();
						survey.questions[i] = {};
						survey.questions[i].type = type;
						survey.questions[i].head = head;
						survey.questions[i].options = new Array();
						me.find('label[data-type=survey_q_item]').each(function(j){
							var me = $(this);
							survey.questions[i].options[j] = {};
							survey.questions[i].options[j].name = me.text();
						});
					});
					
					console.log(survey);
					$.post("/survey-webapp/survey/create", survey)
					 .done(function(data) {
  						alert("Data Loaded: " + data);
					});

  				});  				
	    });
    }
});
