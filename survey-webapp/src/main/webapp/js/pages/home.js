window.mainJS || (window.mainJS = {
    init: function ($) {
//	    $(document).on('ready', function() {
//	        // setup dust.js demo
//	        dust.render("template/survey_list",
//	            {
//	            	resource: {
//	            		addnew: window.R['toolbar.addnew.title'],
//	            		edit:   window.R['toolbar.edit.title'],
//	            		remove: window.R['toolbar.delete.title'],
//	            		view:   window.R['toolbar.view.title']
//	            	},
//					
//	            	table: {
//	            		columns: [{id:'id', title: ''},{id:'name', title: '名称'}, {id:'code', title:'编码'}],
//	            		data:[{id:'',name:'惠普',code:'HP'}]
//	            	}
//	            },
//	            function(err, out) {
//	                $("#survey_list").append(out);
//	            });
//	    });
	    
	    $(function(){
		    var App = {};
		    
		    App._exampleCollection = Backbone.Collection.extend({
		        url: 'http://localhost:8080/survey-webapp/js/pages/examples.json'
		    });
		    
		    App.companies = new Backbone.Collection;
		    App.clearGridCollection = new Backbone.Collection;
		    App.exampleCollection = new App._exampleCollection();
		    // filters example
		    App.FiltersExampleGrid = new bbGrid.View({
		        container: $('#survey_list'),     
		        collection: App.exampleCollection,
		        autofetch: true,
		        multiselect: true,
		        rows: 15,
		        colModel: [{ title: 'ID', name: 'id', index: true, sorttype: 'number' },
		                   { title: 'Full Name', index: true, name: 'name'},
		                   { title: 'Company', index: true, name: 'company'},
		                   { title: 'Email', index: true, name: 'email' }
		        ]
		    });
	    });
    }
});

//(function () {
//    "use strict";
    //
//})();