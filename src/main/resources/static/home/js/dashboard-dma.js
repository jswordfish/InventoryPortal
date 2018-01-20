$(document).ready(function () {
        var time = $.now();
        var docuemnt_json = '';
        var service_json = '';
        $.getJSON(jsonGraphsURL+"/department?token="+time, function(data) {
            
            docuemnt_json = data;
            
            var document_data = [];
            var drill_down_data = [];
            $.each(docuemnt_json.resultData, function (i, value)
            {

                var doc = {};
                if(lang == "en"){
                	doc.name = value.engName;
                }else{
                	doc.name = value.regName;
                }
                
                doc.y = value.count;
                doc.drilldown = value.engName+'_dept';
                document_data.push(doc);

                var drilldown_user = {};
                drilldown_user.id = value.engName+'_dept';
                drilldown_user.name = value.engName;
                drilldown_user.data = [];

                $.getJSON(jsonGraphsURL+parseInt(value.id)+".json?token="+time, function(tls_data) {
                    var trade_license_service_json = tls_data;
                    $.each(trade_license_service_json.resultData, function (i, tls_value)
                    {
                        if(parseInt(tls_value.count) > 0) {
                            var doc = {};
                            //doc.name = tls_value.engName;
                            if(lang == "en"){
                            	doc.name = tls_value.engName;
                            }else{
                            	doc.name = tls_value.regName;
                            }
                            doc.y = tls_value.count;
                            doc.drilldown = tls_value.engName+'_ser';
                            drilldown_user.data.push(doc);  

                            var drilldown_user_2 = {};
                            drilldown_user_2.id = tls_value.engName+'_ser';
                            drilldown_user_2.name = tls_value.engName;
                            drilldown_user_2.data = [];  

                            $.getJSON(jsonGraphsURL+parseInt(value.id)+"_"+parseInt(tls_value.id)+".json", function(third_data) {
                                var level_third_json = third_data;

                                $.each(level_third_json.resultData, function (i, third_value)
                                {

                                    if(parseInt(third_value.count) > 0) {
                                        
                                        var drilldown_user_3 = {};
                                        drilldown_user_3.id = value.id+'_'+tls_value.id+'_'+third_value.engName+'_third';
                                        drilldown_user_3.name = third_value.engName;
                                        drilldown_user_3.data = [];  

                                        $.getJSON(jsonGraphsURL+parseInt(value.id)+"_"+parseInt(tls_value.id)+"_"+parseInt(third_value.id)+".json", function(forth_data) {
                                            var level_forth_json = forth_data;

                                            if(level_forth_json.totalRows > 0) {
                                                var doc = {};
                                               // doc.name = third_value.engName;
                                                if(lang == "en"){
                                                	doc.name = third_value.engName;
                                                }else{
                                                	doc.name = third_value.regName;
                                                }
                                                doc.y = third_value.count;
                                                doc.drilldown = value.id+'_'+tls_value.id+'_'+third_value.engName+'_third';
                                                drilldown_user_2.data.push(doc);
                                            }
                                            else {
                                                drilldown_user_2.data.push([third_value.engName,third_value.count]);
                                            }
                                            $.each(level_forth_json.resultData, function (i, forth_value)
                                            {
                                                if(parseInt(forth_value.count) > 0) {

                                                    var drilldown_user_4 = {};
                                                    drilldown_user_4.id = value.id+'_'+tls_value.id+'_'+forth_value.id+'_'+forth_value.engName+'_forth';
                                                    drilldown_user_4.name = forth_value.engName;
                                                    drilldown_user_4.data = []; 

                                                    $.getJSON(jsonGraphsURL+parseInt(value.id)+"_"+parseInt(tls_value.id)+"_"+parseInt(third_value.id)+"_"+parseInt(forth_value.id)+".json", function(fifth_data) {
                                                        var level_fifth_json = fifth_data;

                                                        if(level_fifth_json.totalRows > 0) {
                                                            var doc = {};
                                                           // doc.name = forth_value.engName;
                                                            if(lang == "en"){
                                                            	doc.name = forth_value.engName;
                                                            }else{
                                                            	doc.name = forth_value.regName;
                                                            }
                                                            doc.y = forth_value.count;
                                                            doc.drilldown = value.id+'_'+tls_value.id+'_'+forth_value.id+'_'+forth_value.engName+'_forth';
                                                            drilldown_user_3.data.push(doc);
                                                        }
                                                        else {
                                                            drilldown_user_3.data.push([forth_value.engName,forth_value.count]);
                                                        }
                                                        $.each(level_fifth_json.resultData, function (i, fifth_value)
                                                        {
                                                            if(parseInt(fifth_value.count) > 0) {

                                                                var drilldown_user_5 = {};
                                                                drilldown_user_5.id = value.id+'_'+tls_value.id+'_'+forth_value.id+'_'+fifth_value.id+'_'+fifth_value.engName+'_fifth';
                                                                drilldown_user_5.name = fifth_value.engName;
                                                                drilldown_user_5.data = []; 

                                                                $.getJSON(jsonGraphsURL+parseInt(value.id)+"_"+parseInt(tls_value.id)+"_"+parseInt(third_value.id)+"_"+parseInt(forth_value.id)+"_"+parseInt(fifth_value.id)+".json", function(sixth_data) {
                                                                    var level_sixth_json = sixth_data;

                                                                    if(level_sixth_json.totalRows > 0) {
                                                                        var doc = {};
                                                                      //  doc.name = fifth_value.engName;
                                                                        if(lang == "en"){
                                                                        	doc.name = fifth_value.engName;
                                                                        }else{
                                                                        	doc.name = fifth_value.regName;
                                                                        }
                                                                        doc.y = fifth_value.count;
                                                                        doc.drilldown = value.id+'_'+tls_value.id+'_'+forth_value.id+'_'+fifth_value.id+'_'+fifth_value.engName+'_fifth';
                                                                        drilldown_user_4.data.push(doc);
                                                                    }
                                                                    else {
                                                                        drilldown_user_4.data.push([fifth_value.engName,fifth_value.count]);
                                                                    }
                                                                    $.each(level_sixth_json.resultData, function (i, sixth_value)
                                                                    {
                                                                        drilldown_user_5.data.push([sixth_value.engName,sixth_value.count]);
                                                                    });
                                                                });
                                                                 drill_down_data.push(drilldown_user_5);
                                                            } 
                                                            else {
                                                                drilldown_user_4.data.push([fifth_value.engName,fifth_value.count]);            
                                                            }   
                                                        });
                                                    });
                                                    drill_down_data.push(drilldown_user_4);   
                                                }
                                                else {
                                                    drilldown_user_3.data.push([forth_value.engName,forth_value.count]);            
                                                }   
                                            });                                            
                                        });
                                        drill_down_data.push(drilldown_user_3);    
                                    }  
                                    else {
                                        drilldown_user_2.data.push([third_value.engName,third_value.count]);            
                                    }
                                });
                            });
                            drill_down_data.push(drilldown_user_2);
                        }
                        else {
                            drilldown_user.data.push([tls_value.engName,tls_value.count]);
                        }
                        
                    });
                });
                drill_down_data.push(drilldown_user);
                
            });
          //  console.log(drill_down_data);
          //  alert(drill_down_data.toSource());
            var defaultTitle = "Department";
            if(lang == "en"){
            	defaultTitle = "Department";
            }else{
            	defaultTitle = " विभाग";
            }
           
            var chart = Highcharts.chart('multi', {
                chart: {
                    type: 'column',
                    renderTo: 'container',
                    events: {
                        drilldown: function(e) {
                            chart.setTitle({ text: e.point.name });
                        },
                        drillup: function(e) {
                            chart.setTitle({ text: e.seriesOptions.name });
                        }
                    }
                },
                title: {
                    text: defaultTitle
                },
               /*  subtitle: {
                    text: 'Click columns to drill down to single series. Click categories to drill down both.'
                }, */
                xAxis: {
                    type: 'category'
                },

                plotOptions: {
                    series: {
                        borderWidth: 0,
                        dataLabels: {
                            enabled: true,
                            format: '{point.y:f}'
                        }
                    }
                },
                tooltip: {
                        headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
                        pointFormat: '<span style="color:{point.color}">{point.name}</span>: <br/><b>{point.y:f}</b><br/>'
                    },

                series: [{
                    name: defaultTitle,
                    colorByPoint: true,
                    data: document_data,
                }],
                drilldown: {
                    series: drill_down_data,
                }
            });
        });
    });