$(document).ready(function() {
    var e = $.now(),
        a = "";
    $.getJSON(jsonGraphsURL + "dep?token=" + e, function(n) {
        a = n;
        var t = [],
            r = [];
        $.each(a, function(a, n) {
            var s = {};
            "en" == lang ? s.name = n.engName : s.name = n.regName, s.y = n.tcount, s.drilldown = n.engName + "_dept", t.push(s);
            var i = {};
            i.id = n.engName + "_dept", i.name = n.engName, i.data = [], $.getJSON(jsonGraphsURL + parseInt(n.parentId) + "_" + parseInt(n.id) + ".json?token=" + e, function(e) {
                var a = e;
                $.each(a, function(e, a) {
                    i.data.push([a.engName, a.tcount])
                })
            }), r.push(i)
        });
        var s = "Department";
        s = "en" == lang ? "Department" : " विभाग";
        var i = Highcharts.chart("multi", {
            chart: {
                type: "column",
                renderTo: "container",
                events: {
                    drilldown: function(e) {
                        i.setTitle({
                            text: e.point.name
                        })
                    },
                    drillup: function(e) {
                        i.setTitle({
                            text: e.seriesOptions.name
                        })
                    }
                }
            },
            title: {
                text: s
            },
            xAxis: {
                type: "category"
            },
            plotOptions: {
                series: {
                    borderWidth: 0,
                    dataLabels: {
                        enabled: !0,
                        format: "{point.y:f}"
                    }
                }
            },
            tooltip: {
                headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
                pointFormat: '<span style="color:{point.color}">{point.name}</span>: <br/><b>{point.y:f}</b><br/>'
            },
            series: [{
                name: s,
                colorByPoint: !0,
                data: t
            }],
            drilldown: {
                series: r
            }
        })
    })
});