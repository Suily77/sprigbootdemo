$(function() {
    $('#dd').datebox({
        required : true
    });
    $('#dd').datebox(
        {
            onShowPanel : function() {// 显示日趋选择对象后再触发弹出月份层的事件，初始化时没有生成月份层
                span.trigger('click'); // 触发click事件弹出月份层
                if (!tds)
                    setTimeout(function() {// 延时触发获取月份对象，因为上面的事件触发和对象生成有时间间隔
                        tds = p.find('div.calendar-menu-month-inner td');
                        tds.click(function(e) {
                            e.stopPropagation(); // 禁止冒泡执行easyui给月份绑定的事件
                            var year = /\d{4}/.exec(span.html())[0]// 得到年份
                                , month = parseInt($(this).attr('abbr'), 10); // 月份
                            $('#dd').datebox('hidePanel')// 隐藏日期对象
                                .datebox(
                                    'setValue',
                                    year
                                    + '-'
                                    + (month < 10 ? ('0' + month)
                                    : month)); // 设置日期的值
                        });
                    }, 0);
            },
            parser : function(s) {// 配置parser，返回选择的日期

                if (!s)

                    return new Date();
                var arr = s.split('-');

                return new Date(parseInt(arr[0], 10),
                    parseInt(arr[1], 10) - 1, 1);

            },

            formatter : function(d) {
                var month = d.getMonth() + 1;
                var date = d.getFullYear() + '/'
                    + (month < 10 ? ('0' + month) : month)
                clear();
                tb(date)

                return d.getFullYear() + '-'
                    + (month < 10 ? ('0' + month) : month);
            },

        });
    var p = $('#dd').datebox('panel'), // 日期选择对象
        tds = false, // 日期选择对象中月份
        span = p.find('span.calendar-text'); // 显示月份层的触发控件

    var curr_time = new Date();

    var str = curr_time.getFullYear() + "-";

    str += curr_time.getMonth() + 1 + "-";

    var curr_time = new Date();

    var str = curr_time.getFullYear() + "-";

    str += curr_time.getMonth() + 1 + "-";

    str += curr_time.getDate();
    $('#dd').datebox('setValue', str);

    var str1 = curr_time.getFullYear() + "/";
    var m = curr_time.getMonth() + 1
    str1 += (m < 10 ? ('0' + m) : m);

    //tb(str1);
    // 合并table的相同数据，参数是某一列
    //
});
$('#dd').datebox({
    onSelect : function(date) {
        clear();
        var m = date.getMonth() + 1
        time = date.getFullYear() + "/" + (m < 10 ? ('0' + m) : m);
        tb(time)

    }
})
function clear() {
    $('input').val('');
}
//冠军
var zhchampion=[];
var gcchampion=[];
var ys1champion=[];
var ys2champion=[];
var jbchampion=[];
function tb(time){
    $.ajax({
        url: '/auto/bf/dp/getJudgeResult',
        dataType: "json",
        type: "POST",
        async:false,
        data:{
            time:time
        },
        success: function (result) {
            var str="";
            zhchampion=[];
            gcchampion=[];
            ys1champion=[];
            ys2champion=[];
            jbchampion=[];
            for(var i in result){
                //把综合竞争力得分放入数组
                zhchampion.push(result[i].zhjzldf)
                gcchampion.push(result[i].cl)
                ys1champion.push()//优胜炉1
                ys2champion.push()//优胜炉2
                jbchampion.push()//进步最快
            }
            //比较大小
            let zhmax = zhchampion[0];
            for (let i = 0; i < zhchampion.length - 1; i++) {
                zhmax = zhmax < zhchampion[i+1] ? zhchampion[i+1] : zhmax
            }
            let gcmax = gcchampion[0];
            for (let i = 0; i < gcchampion.length - 1; i++) {
                gcmax = gcmax < gcchampion[i+1] ? gcchampion[i+1] : gcmax
            }
            if(zhmax==null||zhmax==undefined){
                $("#zhchamp").text("")
            }
            if(gcmax==null||gcmax==undefined){
                $("#gcchamp").text("")
            }
            for(var i in result){
                if(zhmax==null||zhmax==undefined){
                    $("#zhchamp").text("")
                }else
                if(result[i].zhjzldf==zhmax){
                    //渲染综合冠军炉
                    if(result[i].bfname.substring(0,2)=="BG"){
                        $("#zhchamp").text("宝山"+result[i].bfname.substring(2,3)+"#"+result[i].bfname.substring(3))
                    }
                    if(result[i].bfname.substring(0,2)=="QS"){
                        $("#zhchamp").text("青山"+result[i].bfname.substring(2,3)+"#"+result[i].bfname.substring(3))
                    }
                    if(result[i].bfname.substring(0,2)=="MS"){
                        $("#zhchamp").text("梅山"+result[i].bfname.substring(2,3)+"#"+result[i].bfname.substring(3))
                    }
                    if(result[i].bfname.substring(0,2)=="DS"){
                        $("#zhchamp").text("东山"+result[i].bfname.substring(2,3)+"#"+result[i].bfname.substring(3))
                    }
                }
                if(gcmax==null||gcmax==undefined){
                    $("#gcchamp").text("")
                }else
                if(result[i].cl==gcmax){
                    //渲染高产冠军炉
                    if(result[i].bfname.substring(0,2)=="BG"){
                        $("#gcchamp").text("宝山"+result[i].bfname.substring(2,3)+"#"+result[i].bfname.substring(3))
                    }
                    if(result[i].bfname.substring(0,2)=="QS"){
                        $("#gcchamp").text("青山"+result[i].bfname.substring(2,3)+"#"+result[i].bfname.substring(3))
                    }
                    if(result[i].bfname.substring(0,2)=="MS"){
                        $("#gcchamp").text("梅山"+result[i].bfname.substring(2,3)+"#"+result[i].bfname.substring(3))
                    }
                    if(result[i].bfname.substring(0,2)=="DS"){
                        $("#gcchamp").text("东山"+result[i].bfname.substring(2,3)+"#"+result[i].bfname.substring(3))
                    }
                }
            }
            //清空表格数据
            $(".numb").each(function(){
                $(this).html("")
            })
            //重新渲染表格
            for(var i in result){
                $.each(result[i],function(key,value){
                    var name=result[i].bfname;
                    $("[name="+name+key+"]").html(value)
                })
            }
        }
    });
}
setInterval(function(){
    realSysTime(clock),1000
});
//显示当前时间
function realSysTime(clock){
    var now=new Date();            //创建Date对象
    var year=now.getFullYear();    //获取年份
    var month=now.getMonth();    //获取月份
    var date=now.getDate();        //获取日期
    var day=now.getDay();        //获取星期
    var hour=now.getHours();    //获取小时
    var minu=now.getMinutes();    //获取分钟
    var sec=now.getSeconds();    //获取秒钟
    month=month+1;
    var arr_week=new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六");
    var week=arr_week[day];  //获取中文的星期
    var time=year+"年"+month+"月"+date+"日 "+" "+((hour<10)?('0'+hour):hour)+":"+((minu<10)?('0'+minu):minu)+":"+((sec<10)?('0'+sec):sec);    //组合系统时间
    clock.innerHTML=time;    //显示系统时间
}