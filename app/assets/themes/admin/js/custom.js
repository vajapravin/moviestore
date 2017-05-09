levels = ["state", "county", "city", "department"];

$(document).on("ready page:load", function(){
    // modal options
    modal_defaults = {
        type: "ajax",
        overlayColor:"#0099CC",
        overlayOpacity:.6,
        arrows:false,
        closeBtn:false,
        titleShow:false,
        padding:0,
        autoCenter:true
    }

    leanModal_defaults = {
      dismissible: true, // Modal can be dismissed by clicking outside of the modal
      opacity: .1, // Opacity of modal background
      in_duration: 300, // Transition in duration
      out_duration: 200, // Transition out duration
      starting_top: '4%', // Starting top style attribute
      ending_top: '30%', // Ending top style attribute
    }

    $('.modal-trigger').leanModal(leanModal_defaults);    
    // participant_logs = function(participant_id) {
    //     $.fancybox.close();
    //     modal_defaults["href"] = "/api/v1/participants/"+participant_id+"/logs";
    //     $.fancybox.open(modal_defaults);
    // }

    // participant_report = function(participant_id, first_day, last_day) {
    //     $.fancybox.close();
    //     modal_defaults["href"] = "/api/v1/participants/"+participant_id+"/report?first_day="+first_day+"&last_day="+last_day;
    //     $.fancybox.open(modal_defaults);
    // }

    // load_build = function(route, user_id, device_id) {
    //     $.fancybox.close();
    //     modal_defaults["href"] = "/"+route+"/users/"+user_id+"/devices/"+device_id;
    //     $.fancybox.open(modal_defaults);
    // }


    // edit_admin = function(admin_id) {
    //     $.fancybox.close();
    //     modal_defaults["href"] = "/admin/role/admins/"+admin_id+"/edit";
    //     $.fancybox.open(modal_defaults);
    // }

    // add_support = function() {
    //     $.fancybox.close();
    //     modal_defaults["href"] = "/admin/role/supports/new";
    //     $.fancybox.open(modal_defaults);
    // }

    // edit_support = function(support_id) {
    //     $.fancybox.close();
    //     modal_defaults["href"] = "/admin/role/supports/"+support_id+"/edit";
    //     $.fancybox.open(modal_defaults);
    // }

    // add_director = function() {
    //     $.fancybox.close();
    //     modal_defaults["href"] = "/admin/role/directors/new";
    //     $.fancybox.open(modal_defaults);
    // }

    // edit_director = function(director_id) {
    //     $.fancybox.close();
    //     modal_defaults["href"] = "/admin/role/directors/"+director_id+"/edit";
    //     $.fancybox.open(modal_defaults);
    // }

    // add_coordinator = function() {
    //     $.fancybox.close();
    //     modal_defaults["href"] = "/admin/role/coordinators/new";
    //     $.fancybox.open(modal_defaults);
    // }

    // edit_coordinator = function(coordinator_id) {
    //     $.fancybox.close();
    //     modal_defaults["href"] = "/admin/role/coordinators/"+coordinator_id+"/edit";
    //     $.fancybox.open(modal_defaults);
    // }

    // add_supervisor = function() {
    //     $.fancybox.close();
    //     modal_defaults["href"] = "/admin/role/supervisors/new";
    //     $.fancybox.open(modal_defaults);
    // }

    // edit_supervisor = function(supervisor_id) {
    //     $.fancybox.close();
    //     modal_defaults["href"] = "/admin/role/supervisors/"+supervisor_id+"/edit";
    //     $.fancybox.open(modal_defaults);
    // }

    // add_participant = function() {
    //     $.fancybox.close();
    //     modal_defaults["href"] = "/admin/role/participants/new";
    //     $.fancybox.open(modal_defaults);
    // }

    // edit_participant = function(participant_id) {
    //     $.fancybox.close();
    //     modal_defaults["href"] = "/admin/role/participants/"+participant_id+"/edit";
    //     $.fancybox.open(modal_defaults);
    // }

    // add_activity_category = function(program_id) {
    //     $.fancybox.close();
    //     modal_defaults["href"] = "/admin/programs/new_activity_category?program_id="+program_id;
    //     $.fancybox.open(modal_defaults);
    // }

    // fill_counties = function(data) {
    //     $("#county_id").html('<option value="">Select County</option>');
    //     $(data).each(function(index, ele) {
    //         $("#county_id").append('<option value="'+ele.id+'">'+ele.name+'</option>');
    //     });
    // }

    // fill_cities = function(data) {
    //     $("#city_id").html('<option value="">Select City</option>');
    //     $(data).each(function(index, ele) {
    //         $("#city_id").append('<option value="'+ele.id+'">'+ele.name+'</option>');
    //     });
    // }

    // fill_departments = function(data) {
    //     $("#department_id").html('<option value="">Select Department</option>');
    //     $(data).each(function(index, ele) {
    //         $("#department_id").append('<option value="'+ele.id+'">'+ele.name+'</option>');
    //     });
    // }

    // fill_claiming_units = function(data) {
    //     $("#claiming_unit_id").html('<option value="">Select Claiming Unit</option>');
    //     $(data).each(function(index, ele) {
    //         $("#claiming_unit_id").append('<option value="'+ele.id+'">'+ele.name+'</option>');
    //     });
    // }

    // $(".chosen-select").chosen();

    // loading_dialog = function(title) {
    //     $.fancybox.close();
    //     loading_dialog_content = $(".loading_dialog");
    //     $(loading_dialog_content).find(".modal-header").find("h4").html(title);
    //     $(loading_dialog_content).css({"overflow":"false"});
    //     modal_defaults["content"] = $(loading_dialog_content);
    //     $.fancybox.open(modal_defaults);
    // }

    // months = ['JANUARY', 'FEBRUARY', 'MARCH', 'APRIL', 'MAY', 'JUNE', 'JULY', 'AUGUST', 'SEPTEMBER', 'OCTOBER', 'NOVEMBER', 'DECEMBER'];
    // month_select_dialog = function(worker_log_id, year) {
    //     $.fancybox.close();
    //     loading_dialog("please wait...");
    //     $.ajax({
    //         "url": "/api/v1/calendar?year="+year+"&worker_log_id="+worker_log_id,
    //         "type": "json",
    //         "method": "GET",
    //         "success": function(data){
    //             calendar_months = "";
    //             $(data.months).each(function(index, ele){
    //                 calendar_months = calendar_months + '<a style="color:#000;hover:#fff;" href="/worker_logs/'+worker_log_id+'?month='+ele.month+','+year+'"><div class="row" style="padding:10px;"><div class="col-xs-6"><img src="'+ele.icon+'" style="width:25px;height:25px;"> <strong>'+months[ele.month-1]+'</strong></div><div class="col-xs-4"><small><i>'+ele.status+'</i></small></div></div></a>';
    //             });
    //             calendar_dialog_content = $(".month_select_dialog");
    //             header_content = [];
    //             if(data.prev_year != 0){
    //                 header_content.push('<a href="javascript:month_select_dialog('+worker_log_id+','+data.prev_year+')" class="pull-left"><</a>');
    //             }
    //             if(data.next_year != 0){
    //                 header_content.push('<a href="javascript:month_select_dialog('+worker_log_id+','+data.next_year+')" class="pull-right">></a>');
    //             }
    //             header_content.push('<center>'+year+'</center>');
    //             $(calendar_dialog_content).find("#calendar_header").html(header_content.join(''));
    //             $(calendar_dialog_content).find("#calendar_months").html(calendar_months);
    //             modal_defaults["content"] = $(calendar_dialog_content);
    //             $.fancybox.close();
    //             $.fancybox.open(modal_defaults);
    //         }
    //     });
    // }

    // change_levels_visibility = function(level) {
    //     $(".levels").hide();
    //     if($(level).val() != "" && $(level).val() != "Federal"){
    //         $(levels).each(function(index, ele){
    //             $("."+ele+"_level").show();
    //             if($(level).val().toLowerCase()==ele){
    //                 return false;
    //             }
    //         });
    //     }
    // }

    // phone_pattern = function(p){
    //     phone = $(p).val().split('-').join('');
    //     if(phone.length != 0 || p.length != 10){
    //         f = phone.substr(0,3);
    //         if(f.length==3){
    //             $(p).val(f);
    //             s = phone.substr(3,3);
    //             if(s.length==3){
    //                 $(p).val($(p).val()+"-"+s);
    //                 l = phone.substr(6,4);
    //                 $(p).val($(p).val()+"-"+l);
    //             }
    //         }
    //     }
    // }

    // apply_phone_pattern = function(){
    //     $(".phone_pattern").each(function(){
    //         $(this).attr({"placeholder": 'xxx-xxx-xxxx'});
    //         $(this).attr({"title": 'Phone number should be xxx-xxx-xxxx'});
    //         $(this).attr({"pattern": '\\d{3}[\\-]\\d{3}[\\-]\\d{4}'});
    //         phone_pattern($(this));
    //         $(this).change(function(){
    //             phone_pattern($(this));
    //         });
    //     });
    // }

    // apply_phone_pattern();

    // apply_only_number = function(a){
    //     $(a).keydown(function (e) {
    //         // Allow: backspace, delete, tab, escape, enter and .
    //         if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
    //                 // Allow: Ctrl+A
    //             (e.keyCode == 65 && e.ctrlKey === true) ||
    //                 // Allow: home, end, left, right, down, up
    //             (e.keyCode >= 35 && e.keyCode <= 40)) {
    //             // let it happen, don't do anything
    //             return;
    //         }
    //         // Ensure that it is a number and stop the keypress
    //         if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) &&
    //             (e.keyCode < 96 || e.keyCode > 105)) {
    //             e.preventDefault();
    //         }
    //     });
    // }

    // $(".only_number").each(function() {
    //     apply_only_number($(this));
    // });

    // p_round = function(a, p){
    //     return Math.round(a*Math.pow(10,p)) / Math.pow(10,p);
    // }

    // load_roles = function(table_div, role_type){
    //     $(table_div).dataTable().fnDestroy();
    //     if(table_div == "#manageCoordinators") {
    //         $(table_div).dataTable({
    //             "paging" : true,
    //             "order": [[0, "asc"], [1, "asc"]],
    //             "ajax"   : {
    //                 "url" : "/api/v1/"+role_type+"s.json",
    //                 "dataSrc" : ""
    //             },
    //             "columns"   : [
    //                 { "render" : function(data, type, row, meta) {
    //                     return '<a href="javascript:edit_'+role_type+'('+row.id+')"'+row.id+'/edit">'+row.name+'</a>'
    //                 }
    //                 },
    //                 { "data" : "parent_role" },
    //                 { "data" : "county" },
    //                 { "data" : "active" },
    //                 { "data" : "primary" },
    //                 { "data" : "eff_start_date" },
    //                 { "data" : "eff_end_date" },
    //                 { "render" : function(data, type, row, meta) {
    //                     return '<a href="/admin/role/'+role_type+'s/'+row.id+'" id="row_delete_'+row.id+'" data-method="delete" data-confirm="Do you want to continue?" data-remote="true" title="Delete '+role_type+'"><span class="fui-trash fs24"></span></a>';
    //                 }
    //                 }
    //             ]
    //         });
    //     }else if(table_div == "#manageSupervisors") {
    //         $(table_div).dataTable({
    //             "paging" : true,
    //             "order": [[0, "asc"], [1, "asc"]],
    //             "ajax"   : {
    //                 "url" : "/api/v1/"+role_type+"s.json",
    //                 "dataSrc" : ""
    //             },
    //             "columns"   : [
    //                 { "render" : function(data, type, row, meta) {
    //                     return '<a href="javascript:edit_'+role_type+'('+row.id+')"'+row.id+'/edit">'+row.name+'</a>'
    //                 }
    //                 },
    //                 { "data" : "parent_role" },
    //                 { "data" : "claiming_unit" },
    //                 { "data" : "active" },
    //                 { "data" : "primary" },
    //                 { "data" : "eff_start_date" },
    //                 { "data" : "eff_end_date" },
    //                 { "render" : function(data, type, row, meta) {
    //                     return '<a href="/admin/role/'+role_type+'s/'+row.id+'" id="row_delete_'+row.id+'" data-method="delete" data-confirm="Do you want to continue?" data-remote="true" title="Delete '+role_type+'"><span class="fui-trash fs24"></span></a>';
    //                 }
    //                 }
    //             ]
    //         });
    //     } else if (table_div == "#manageParticipants") {
    //         $(table_div).dataTable({
    //             "paging" : true,
    //             "order": [[0, "asc"], [1, "asc"]],
    //             "ajax"   : {
    //                 "url" : "/api/v1/"+role_type+"s.json",
    //                 "dataSrc" : ""
    //             },
    //             "columns"   : [
    //                 { "render" : function(data, type, row, meta) {
    //                     return '<a href="javascript:edit_'+role_type+'('+row.id+')"'+row.id+'/edit">'+row.name+'</a>'
    //                 }
    //                 },
    //                 { "data" : "parent_role" },
    //                 { "data" : "claiming_unit" },
    //                 { "data" : "active" },
    //                 { "data" : "eff_start_date" },
    //                 { "data" : "eff_end_date" },
    //                 { "render" : function(data, type, row, meta) {
    //                     return '<a href="/admin/role/'+role_type+'s/'+row.id+'" id="row_delete_'+row.id+'" data-method="delete" data-confirm="Do you want to continue?" data-remote="true" title="Delete '+role_type+'"><span class="fui-trash fs24"></span></a>';
    //                 }
    //                 }
    //             ]
    //         });
    //     } else if (table_div == "#manageDirectors") {
    //         $(table_div).dataTable({
    //             "paging" : true,
    //             "order": [[0, "asc"], [1, "asc"]],
    //             "ajax"   : {
    //                 "url" : "/api/v1/"+role_type+"s.json",
    //                 "dataSrc" : ""
    //             },
    //             "columns"   : [
    //                 { "render" : function(data, type, row, meta) {
    //                     return '<a href="javascript:edit_'+role_type+'('+row.id+')"'+row.id+'/edit">'+row.name+'</a>'
    //                 }
    //                 },
    //                 { "data" : "claiming_unit" },
    //                 { "data" : "active" },
    //                 { "data" : "primary" },
    //                 { "data" : "eff_start_date" },
    //                 { "data" : "eff_end_date" },
    //                 { "render" : function(data, type, row, meta) {
    //                     return '<a href="/admin/role/'+role_type+'s/'+row.id+'" id="row_delete_'+row.id+'" data-method="delete" data-confirm="Do you want to continue?" data-remote="true" title="Delete '+role_type+'"><span class="fui-trash fs24"></span></a>';
    //                 }
    //                 }
    //             ]
    //         });
    //     } else {
    //         $(table_div).dataTable({
    //             "paging" : true,
    //             "order": [[0, "asc"], [1, "asc"]],
    //             "ajax"   : {
    //                 "url" : "/api/v1/"+role_type+"s.json",
    //                 "dataSrc" : ""
    //             },
    //             "columns"   : [
    //                 { "render" : function(data, type, row, meta) {
    //                     return '<a href="javascript:edit_'+role_type+'('+row.id+')"'+row.id+'/edit">'+row.name+'</a>'
    //                 }
    //                 },
    //                 { "data" : "eff_start_date" },
    //                 { "data" : "eff_end_date" },
    //                 { "render" : function(data, type, row, meta) {
    //                     return '<a href="/admin/role/'+role_type+'s/'+row.id+'" id="row_delete_'+row.id+'" data-method="delete" data-confirm="Do you want to continue?" data-remote="true" title="Delete '+role_type+'"><span class="fui-trash fs24"></span></a>';
    //                 }
    //                 }
    //             ]
    //         });
    //     }
    // }

    // load_roles2 = function(table_div, role_type){
    //     $(table_div).dataTable().fnDestroy();
    //     if(table_div == "#manageCoordinators") {
    //         $(table_div).dataTable({
    //             "paging" : true,
    //             "order": [[0, "asc"], [1, "asc"]],
    //             "ajax"   : {
    //                 "url" : "/api/v1/"+role_type+"s.json",
    //                 "dataSrc" : ""
    //             },
    //             "columns"   : [
    //                 { "render" : function(data, type, row, meta) {
    //                     return '<a href="javascript:edit_'+role_type+'('+row.id+')"'+row.id+'/edit">'+row.name+'</a>'
    //                 }
    //                 },
    //                 { "data" : "parent_role" },
    //                 { "data" : "county" },
    //                 { "data" : "active" },
    //                 { "data" : "primary" },
    //                 { "data" : "eff_start_date" },
    //                 { "data" : "eff_end_date" }
    //             ]
    //         });
    //     } else if(table_div == "#manageSupervisors") {
    //         $(table_div).dataTable({
    //             "paging" : true,
    //             "order": [[0, "asc"], [1, "asc"]],
    //             "ajax"   : {
    //                 "url" : "/api/v1/"+role_type+"s.json",
    //                 "dataSrc" : ""
    //             },
    //             "columns"   : [
    //                 { "render" : function(data, type, row, meta) {
    //                     return '<a href="javascript:edit_'+role_type+'('+row.id+')"'+row.id+'/edit">'+row.name+'</a>'
    //                 }
    //                 },
    //                 { "data" : "parent_role" },
    //                 { "data" : "claiming_unit" },
    //                 { "data" : "active" },
    //                 { "data" : "primary" },
    //                 { "data" : "eff_start_date" },
    //                 { "data" : "eff_end_date" }
    //             ]
    //         });
    //     } else if (table_div == "#manageParticipants") {
    //         $(table_div).dataTable({
    //             "paging" : true,
    //             "order": [[0, "asc"], [1, "asc"]],
    //             "ajax"   : {
    //                 "url" : "/api/v1/"+role_type+"s.json",
    //                 "dataSrc" : ""
    //             },
    //             "columns"   : [
    //                 { "render" : function(data, type, row, meta) {
    //                     return '<a href="javascript:edit_'+role_type+'('+row.id+')"'+row.id+'/edit">'+row.name+'</a>'
    //                 }
    //                 },
    //                 { "data" : "parent_role" },
    //                 { "data" : "claiming_unit" },
    //                 { "data" : "active" },
    //                 { "data" : "eff_start_date" },
    //                 { "data" : "eff_end_date" }
    //             ]
    //         });
    //     } else if (table_div == "#manageDirectors") {
    //         $(table_div).dataTable({
    //             "paging" : true,
    //             "order": [[0, "asc"], [1, "asc"]],
    //             "ajax"   : {
    //                 "url" : "/api/v1/"+role_type+"s.json",
    //                 "dataSrc" : ""
    //             },
    //             "columns"   : [
    //                 { "render" : function(data, type, row, meta) {
    //                     return '<a href="javascript:edit_'+role_type+'('+row.id+')"'+row.id+'/edit">'+row.name+'</a>'
    //                 }
    //                 },
    //                 { "data" : "claiming_unit" },
    //                 { "data" : "active" },
    //                 { "data" : "primary" },
    //                 { "data" : "eff_start_date" },
    //                 { "data" : "eff_end_date" }
    //             ]
    //         });
    //     } else {
    //         $(table_div).dataTable({
    //             "paging" : true,
    //             "order": [[0, "asc"], [1, "asc"]],
    //             "ajax"   : {
    //                 "url" : "/api/v1/"+role_type+"s.json",
    //                 "dataSrc" : ""
    //             },
    //             "columns"   : [
    //                 { "render" : function(data, type, row, meta) {
    //                     return '<a href="javascript:edit_'+role_type+'('+row.id+')"'+row.id+'/edit">'+row.name+'</a>'
    //                 }
    //                 },
    //                 { "data" : "eff_start_date" },
    //                 { "data" : "eff_end_date" }
    //             ]
    //         });
    //     }
    // }

    // delete_attachment = function(attachment_id){
    //     if(confirm("Do you want to delete?")){
    //         $.ajax({url:"/admin/attachments/"+attachment_id,type: 'DELETE'});
    //     }
    // }

    // String.prototype.trimToLength = function(m) {
    //     return (this.length > m)
    //         ? jQuery.trim(this).substring(0, m).split(" ").slice(0, -1).join(" ") + "..."
    //         : this;
    // };

    // $('.date_picker').datepicker({"dateFormat": 'mm-dd-yy' });

    // dt_picker = function(){
    //     $(arguments).each(function(e, index){
    //         $(e).datepicker({format: "MM-DD-YYYY"});
    //     });
    // }

    // //prev_url = "";
    // go_next = function(url){
    //     $.ajax({
    //         "url": url+"&prev_div=content_v1",
    //         "success": function(data){
    //             $("#content_v1").hide();
    //             document.getElementById("content_2").style.display = "initial";
    //             $("#content_2").html(data);
    //             //prev_url = document.location.href;
    //             //document.location = url;
    //         }
    //     });
    // }

    // go_prev = function(){
    //     $("#content_2").hide();
    //     $("#content_v1").show();
    // }

    // show_hide = function(){
    //     if($('.more').html()=='More Activity Codes...'){
    //         $('.show_all').parent().show();
    //         $('.more').html('Fewer Activity Codes...');
    //     }else{
    //         $('.show_all').parent().hide();
    //         $('.more').html('More Activity Codes...');
    //     }
    // }

    // edit_comment = function(id){
    //     $('#comment_content_'+id).attr("contenteditable", "true");
    //     $('#comment_content_'+id).attr("style", "border:double;");
    //     $("#comment_content_"+id).attr("onkeypress", "return (this.innerText.length <= 150)");
    //     $('#button_'+id).attr("onclick", "save_comment("+id+")");
    //     $('#button_'+id).html('Save');
    // }

    // edit_comment_255 = function(id){
    //     $('#comment_content_'+id).attr("contenteditable", "true");
    //     $('#comment_content_'+id).attr("style", "border:double;");
    //     $("#comment_content_"+id).attr("onkeypress", "return (this.innerText.length <= 255)");
    //     $('#button_'+id).attr("onclick", "save_comment("+id+")");
    //     $('#button_'+id).html('Save');
    // }

    // save_comment = function(id){
    //     content = $('#comment_content_'+id).html();
    //     $.ajax({
    //         url: '/api/v1/comments',
    //         data: 'comment_id=' + id + "&content=" + content,
    //         type: 'GET',
    //         success: function(data){
    //             if(data.success){
    //                 $("#comment_content_"+id).removeAttr("contenteditable");
    //                 $('#comment_content_'+id).removeAttr("style");
    //                 $("#comment_content_"+id).removeAttr("onkeypress");
    //                 $('#button_'+id).attr("onclick", "edit_comment("+id+")");
    //                 $('#button_'+id).html('Edit');
    //             }else{
    //                 alert(data.message);
    //             }
    //         },
    //         error: function(e){
    //         }
    //     });
    // }

    // // For Multiple Device ACtivity Codes Conflicts.
    // total_hrs = function(activity_category_id){
    //     first = true;
    //     total_h = 0.0;
    //     $("."+activity_category_id).each(function(){
    //         if($(this)[0].checked){
    //             total_h = total_h + parseFloat($(this)[0].value);
    //         }
    //         if($(this)[0].checked && first){
    //             first = false;
    //             $("#content_"+activity_category_id).html("Save");
    //         }else if($(this)[0].checked && !first){
    //             $("#content_"+activity_category_id).html("Merge");
    //         }
    //     });
    //     if(!(""+total_h).split(".")[1] || (""+total_h).split(".")[1].length == 1 ){
    //         length = 0;
    //         if($("#hours_"+activity_category_id)[0].options){
    //             length = $("#hours_"+activity_category_id)[0].options[0].value.split(".")[1].length;
    //         }
    //         if(length == 1){
    //             total_h = total_h.toFixed(1);
    //         }else if(length == 2){
    //             total_h = total_h.toFixed(2);
    //         }
    //     }
    //     $("#sum_hours_"+activity_category_id).html(total_h);
    // }

    // // Resolving The Conflict for ACtivity Codes.
    // resolve_conflict = function(activity_category_id, hours){
    //     if($('#hours_'+activity_category_id).val() == ""){
    //         $('#hours_'+activity_category_id).html(hours.innerHTML);
    //         $(".log_entry_line_items_attributes_99_hours").val(hours.innerHTML);
    //     }else{
    //         $('#hours_'+activity_category_id).removeAttr("disabled");
    //         $('#hours_'+activity_category_id).val(hours.innerHTML);
    //     }
    //     $('#activity_category_'+activity_category_id).removeClass("conflict_color");
    //     $('b#activity_category_'+activity_category_id).text("");
    //     // $('b#activity_category_'+activity_category_id).removeClass("conflict_color").addClass("conflict_resolved_color");
    //     $('#conflict_activity_category_'+activity_category_id).addClass("hide");
    //     count_hours();
    // }

    // // For Multiple Device Schedule Conflicts.
    // total_sch_hrs = function(activity_category_id){
    //     first = true;
    //     total_h = 0.0;
    //     $("."+activity_category_id).each(function(){
    //         if($(this)[0].checked){
    //             total_h = total_h + parseFloat($(this)[0].value);
    //         }
    //         if($(this)[0].checked && first){
    //             first = false;
    //             $("#sch_content_"+activity_category_id).html("Save");
    //         }else if($(this)[0].checked && !first){
    //             $("#sch_content_"+activity_category_id).html("Merge");
    //         }
    //     });
    //     $("#sch_sum_hours_"+activity_category_id).html(total_h);
    // }

    // // Resolving The Conflict for Scheduled Hrs.
    // schedule_conflict = function(log_entry_id, hours){
    //     $('#log_entry_hours').removeAttr("disabled");
    //     $('#log_entry_hours').val(hours.innerHTML);
    //     $('#log_entry_'+log_entry_id).removeClass("conflict_color");
    //     $('#conflict_log_entry_'+log_entry_id).addClass("hide");
    //     log_entry_sch_hours();
    // }

    // load_dept = function(){
    //     if($("#county_id").val() != ""){
    //         $.get('/api/v1/departments.json', {'county_id': $("#county_id").val()}, fill_departments);
    //     }
    // }

    // add_contact = function(contact, attribute_name){
    //     t = $.now();
    //     fields = $("#"+contact).data("fields").split("new_contakt").join(t);
    //     $("#new_contacts").append(fields);
    //     $('.date_picker_'+t).datepicker({"dateFormat" : "mm-dd-yy"});
    //     $('.date_picker_'+t).datepicker({"dateFormat" : "mm-dd-yy"});
    //     apply_phone_pattern();
    //     apply_only_number($(attribute_name+t+"_phone"));
    // }


    // remove_contact = function(remove_id){
    //     $(remove_id).parent().parent().parent().hide();
    //     $(remove_id).parent().parent().parent().find("input").each(function(index, ele){
    //         $(this).removeAttr('required');
    //     });
    //     $(remove_id).parent().parent().parent().find("select").each(function(index, ele){
    //         $(this).removeAttr('required');
    //     });
    //     $(remove_id).parent().parent().parent().find("input[type=hidden]:last").val('true');
    // }

    // load_states = function(is_admin){
    //     $("#manageParticipants").dataTable({
    //         "paging" : true,
    //         "ajax"   : {
    //             "url" : "/api/v1/states.json",
    //             "dataSrc" : ""
    //         },
    //         "columns"   : [
    //             { "render" : function(data, type, row, meta) {
    //                 url = is_admin ? '<a href="/admin/states/' : '<a href="/support/states/'
    //                 return url+row.id+'/edit">'+row.name+'</a>'
    //             }
    //             },
    //             { "data" : "code" },
    //             { "render" : function(data, type, row, meta) {
    //                 if(row.tcm_structure){
    //                     return '<span style="font-size:11px;"><b>Service Type: </b>'+$.trim(row.tcm_structure.service_name)+'</br>'+
    //                         '<b>Effective Start Date: </b>'+$.trim(row.tcm_structure.eff_start_date_format)+'<br>'+
    //                         '<b>Effective End Date: </b>'+$.trim(row.tcm_structure.eff_end_date_format)+'<br>'+
    //                         '<b>Minutes Per Encounter: </b>'+$.trim(row.tcm_structure.minutes_per_encounter)+'<br>'+
    //                         '<b>Amount Per Encounter: </b>'+$.trim(row.tcm_structure.amount_per_encounter)+'</span>';
    //                 } else {
    //                     return '';
    //                 }
    //             }
    //             },
    //             { "render" : function(data, type, row, meta) {
    //                 if(row.contacts.length != 0){
    //                     contacts = [];
    //                     $(row.contacts).each(function(index, contact){
    //                         state = '<span style="font-size:11px;"><b> Name: </b>'+$.trim(contact.name)+'</br>';
    //                         state = state + '<span title="'+$.trim(contact.title)+'"><b>Title: </b>'+$.trim(contact.title).trimToLength(25)+'</span><br>';
    //                         if(contact.address){
    //                             state = state + '<b>Address1: </b>'+$.trim(contact.address.add1)+'<br>';
    //                             state = state + '<b>Address2: </b>'+$.trim(contact.address.add2)+'<br>';
    //                             state = state + '<b>Suite: </b>'+$.trim(contact.address.suite)+'<br>';
    //                             state = state + '<b>City: </b>'+$.trim(contact.address.city)+'<br>';
    //                             state = state + '<b>State: </b>'+$.trim(contact.address.state)+'<br>';
    //                             state = state + '<b>Zip: </b>'+$.trim(contact.address.zip)+'<br>';
    //                         }
    //                         state = state + '<b>Email: </b>'+$.trim(contact.email)+'<br>';
    //                         state = state + '<b>Phone: </b>'+$.trim(contact.phone)+'<br>';
    //                         state = state + '<b>Effective Start Date: </b>'+$.trim(contact.eff_start_date_format)+'<br>';
    //                         state = state + '<b>Effective End Date: </b>'+$.trim(contact.eff_end_date_format)+'</span><br>';
    //                         contacts.push(state);
    //                     });
    //                     return contacts.join("<br>");
    //                 } else {
    //                     return '';
    //                 }
    //             }
    //             },
    //             { "render" : function(data, type, row, meta) {
    //                 url = is_admin ? '<a class="fs24" href="/admin/states/'+row.id+'" id="row_delete_'+row.id+'" data-method="delete" data-confirm="Do you want to continue?" data-remote="true" title="Delete"><span class="fui-trash"></span></a> <a class="fs20" href="/admin/attachments?level_type=State&level_id='+row.id+'" title="Total '+row.attachments.length+' attachments"><span class="fa fa-file"><span></a>' :
    //                 '<a class="fs20" href="/support/attachments?level_type=State&level_id='+row.id+'" title="Total '+row.attachments.length+' attachments"><span class="fa fa-file"><span></a>'
    //                 return url;
    //             }
    //             }
    //         ]
    //     });
    // }

    // add_new_activity_category = function(){
    //     t = $.now();
    //     fields = $("#add_new_activity_category").data("fields").split("new_activity_category").join(t);
    //     $("#new_activity_categories").append(fields);
    //     $("#program_"+t+"_start_date").datepicker({"dateFormat":"mm-dd-yy"});
    //     $("#program_"+t+"_end_date").datepicker({"dateFormat":"mm-dd-yy"});
    // }

    // remove_activity_category = function(remove_id){
    //     $(remove_id).parent().parent().parent().remove();
    // }

    // active_inactive = function(){
    //     if($("#role_r_status").val() == '0'){
    //         $("#role_eff_end_date").attr({"placeholder":"End Date *"});
    //         $("#role_eff_end_date").attr({"required":"required"});
    //     }else{
    //         $("#role_eff_end_date").attr({"placeholder":"End Date"});
    //         $("#role_eff_end_date").removeAttr("required");
    //     }
    // }

    $(".movie_datatable").DataTable({
        "fixedHeader": true,
        "order": [[ 0, "desc" ]]
        // "processing": true,
        // "serverSide": true,
        // "ajax": "/admin/movies.json",
        // "columnDefs": [
        //     {className: 'mdl-data-table__cell--non-numeric', targets: [0, 1, 2, 3]}
        // ]
    });
});