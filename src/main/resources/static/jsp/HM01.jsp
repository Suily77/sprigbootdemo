<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/resources/js/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/bootstrap/css/bootstrap.css">
    <%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css"> --%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/public.css"></link>
    <style type="text/css" rel="stylesheet">

        body{
            background-image: url('/auto/resources/image/bglt.png');
            background-repeat: no-repeat;
            background-color: #152b62;
            background-size: 100% 100%
        }
        .b-panel-default {
            border-color: #05225f;
            background-color: transparent;
        }
        .b-panel-heading{
            color: #fbfbfb !important;
            background-color: transparent !important;
        }
        .b-panel-default > .b-panel-heading {
            background-color: #050d32;
            border-color:#05225f;
            padding: 6px 15px;
            /* background-image: url('/auto/resources/image/矩形5拷贝.png');
            background-repeat: no-repeat;
            background-position: 0% 80%; */
        }
        tr th,tr td{
            color: #fbfbfb;
            text-align:center;
            vertical-align: middle;
        }
        .table-striped > tbody >  tr:nth-of-type(2n) {
            background: rgba(7,35,81,0.5);/*firefox、chrome*/
            background: #000\9;/*IE*/
            filter: alpha(opacity=50);/*IE*/
            padding:0px
        }
        .table-striped > tbody > tr:nth-of-type(2n+1) {
            /* background-color:transparent; */
            background: rgba(7,35,81,0.5);/*firefox、chrome*/
            background: #000\9;/*IE*/
            filter: alpha(opacity=50);/*IE*/
            padding:0px
        }
        .table >tbody > tr > td{
            padding:8px;
            border-top:0px;
            font-size:12px;
            border-bottom:2px solid #050c31
        }
        .table > tbody > tr > th{
            border-top:0px;
            border-bottom:0px;
        }
        thead{
            background-color: #072351e6;
            border-color:#05225f;
            padding: 6px 15px;
            background-image: url('/auto/resources/image/矩形5拷贝.png');
            background-repeat: no-repeat;
            background-position: 0% 80%;
        }
        label{
            color:#fbfbfb
        }
        .textbox {
            border: 1px solid #05225f;
            background-color: #040c2f;
        }
        input {

            background-color: #6fa6f1;
            color:#ffffff !important
        }
        .calendar-menu-month {
            color: #b7b5b5;
        }
        .calendar-header,.calendar-dtable {
            background-color: #152b61;
        }
        .datebox-button {
            background-color: #152b61;
        }
        .calendar-body, .calendar-menu{
            background: #050c31;
        }
        .calendar-text{
            color: #b7b5b5
        }
        .datebox-button a {
            color: #ffffff;
        }
        h2{
            margin-top:10px;
            margin-bottom:10px;
            margin-left:50px;
            text-align:center;
            font-size:25px;
            font-weight:bold;
            line-height: 30px;
            /* display:none; */
            color: #fbfbfb;
            -webkit-transition: all 1.5s ease;
            transition: all 1.5s ease;
        }

        h2 {
            color: #fbfbfb;
            text-shadow: 0 0 1px #FFFF00,
            0 0 10px #fbfbfb;
        }
        .table >tbody > tr > td {
            font-size: 17px;
            font-weight:bold;
            padding:4px;
        }
        th{
            font-size:20px
        }
        .time{
            /* color:#1D99FB; */
            background: linear-gradient(#ffffff,#04b7ff);
            -webkit-background-clip: text;
            color: transparent;
            font-size:25px;
            font-weight:bold;
        }
    </style>
</head>
<body  >
<div class="container-fluid" >
    <div class="row">
        <h2 style="">综合竞争力</h2>
    </div>
    <!-- 当前时间显示 -->
    <div id="clock" class="time" ></div>
    <div class="row" >
        <div class="b-panel b-panel-default">
            <div class="col-md-2">
                <div style="margin-top: 50px">
                    <input id="dd" type="text"style="width:150px;">
                </div>
            </div>
            <div class="col-md-2">
                <div class="b-panel b-panel-default">
                    <div class="b-panel-body" style="height: 100px;background-color: #6e94ff6b">
                        <img style="width:30%;vertical-align: text-bottom;" src="${pageContext.request.contextPath}/resources/image/medal1.png">
                        <label style="color:#13efef;font-size: 20px">综合冠军炉<br/>
                            <label id="zhchamp" style="font-size: 25px"></label></label>
                    </div>
                </div>
            </div>
            <div class="col-md-2">
                <div class="b-panel b-panel-default">
                    <div class="b-panel-body" style="height: 100px;background-color: #6e94ff6b">
                        <img style="width:30%;vertical-align: text-bottom;" src="${pageContext.request.contextPath}/resources/image/medal2.png">
                        <label style="color:#13efef;font-size: 20px">优胜炉<br/>
                            <label id="ys1champ" style="font-size: 25px">宝山4#BF</label></label>
                    </div>
                </div>
            </div>
            <div class="col-md-2">
                <div class="b-panel b-panel-default">
                    <div class="b-panel-body" style="height: 100px;background-color: #6e94ff6b">
                        <img style="width:30%;vertical-align: text-bottom;" src="${pageContext.request.contextPath}/resources/image/medal3.png">
                        <label style="color:#13efef;font-size: 20px">优胜炉<br/>
                            <label id="ys2champ" style="font-size: 25px">宝山4#BF</label></label>
                    </div>
                </div>
            </div>
            <div class="col-md-2">
                <div class="b-panel b-panel-default">
                    <div class="b-panel-body" style="height: 100px;background-color: #6e94ff6b">
                        <img style="width:30%;vertical-align:text-bottom;" src="${pageContext.request.contextPath}/resources/image/medal4.png">
                        <label style="color:#13efef;font-size: 20px">高产冠军炉<br/>
                            <label id="gcchamp" style="font-size: 25px"></label></label>
                    </div>
                </div>
            </div>
            <div class="col-md-2">
                <div class="b-panel b-panel-default">
                    <div class="b-panel-body" style="height: 100px;background-color: #6e94ff6b">
                        <img style="width:30%;vertical-align:text-bottom;" src="${pageContext.request.contextPath}/resources/image/medal5.png">
                        <label style="color:#13efef;font-size: 20px">进步最快炉<br/>
                            <label id="zbchamp" style="font-size: 25px">宝山4#BF</label></label>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--表格--%>
    <div class="row" style="margin-top: 1px">
        <div class="col-md-12">
            <table  class="table table-striped" id="tb">
                <tr style="background-color: #072351e6;border-top:0px;">
                    <th rowspan="2" style="vertical-align: middle;">基地</th>
                    <th rowspan="2" style="vertical-align: middle;">高炉</th>
                    <th>有效炉容</th>
                    <th>炉缸直径</th>
                    <th colspan="4" style="letter-spacing:50px;text-align:center;border-bottom:1px solid #13efef;border-left:5px solid #050c31;">产品效率</th>
                    <th colspan="6" style="letter-spacing:50px;text-align:center;border-bottom:1px solid #13efef;border-left:5px solid #050c31;">经济性</th>
                    <th rowspan="2" style="vertical-align: middle;border-left:5px solid #050c31;">综合竞争力得分</th>
                </tr>
                <tr style="background-color: #072351e6;border-top:0px;border-bottom:0px;">
                    <td>m3</td>
                    <td>m</td>
                    <td style="border-left:5px solid #050c31;">产量<br/>t</td>
                    <td>炉容利用系数<br/>t/m3.d</td>
                    <td>截面利用系数<br/>t/m2.d</td>
                    <td>产量效率得分</td>
                    <td style="border-left:5px solid #050c31;">综合入炉品味<br/>%</td>
                    <td>得分</td>
                    <td>总焦比</td>
                    <td>燃料比</td>
                    <td>得分</td>
                    <td>经济性得分</td>
                </tr>
                <tr style="border-top:10px solid #050c31;background:#3d80d8ba;border-top:3px;">
                    <td style="font-size:20px;color:#13efef;vertical-align: middle;background:#2e3192" rowspan="4">宝<br/><br/>山</td>
                    <td style='color:#13efef'>1BF</td>
                    <td style='color:#ece628'>4966</td>
                    <td style='color:#ece628'>14.5</td>
                    <td style='color:#07f15a' name="BG1BFcl" class="numb"></td>
                    <td style='color:#07f15a' name="BG1BFlrlyxs" class="numb"></td>
                    <td style='color:#07f15a'name="BG1BFjmlyxs" class="numb"></td>
                    <td style='color:#13efef' name="BG1BFclxldf" class="numb"></td>
                    <td style='color:#fbf300' name="BG1BFzhrlkpw" class="numb"></td>
                    <td style='color:#fbf300' name="BG1BFdf1" class="numb"></td>
                    <td style='color:#fbf300' name="BG1BFcoke" class="numb"></td>
                    <td style='color:#fbf300' name="BG1BFfuel" class="numb"></td>
                    <td style='color:#13efef' name="BG1BFdf2" class="numb"></td>
                    <td style='color:#eaafe9' name="BG1BFjjdf" class="numb"></td>
                    <td style='color:#fbfbfb' name="BG1BFzhjzldf" class="numb"></td>
                </tr>

                <tr style="background:#2871d0ba">
                    <td style='color:#13efef'>2BF</td>
                    <td style='color:#ece628'>4706</td>
                    <td style='color:#ece628'>14.5</td>
                    <td style='color:#07f15a' name="BG2BFcl" class="numb"></td>
                    <td style='color:#07f15a' name="BG2BFlrlyxs" class="numb"></td>
                    <td style='color:#07f15a'name="BG2BFjmlyxs" class="numb"></td>
                    <td style='color:#13efef' name="BG2BFclxldf" class="numb"></td>
                    <td style='color:#fbf300' name="BG2BFzhrlkpw" class="numb"></td>
                    <td style='color:#fbf300' name="BG2BFdf1" class="numb"></td>
                    <td style='color:#fbf300' name="BG2BFcoke" class="numb"></td>
                    <td style='color:#fbf300' name="BG2BFfuel" class="numb"></td>
                    <td style='color:#13efef' name="BG2BFdf2" class="numb"></td>
                    <td style='color:#eaafe9' name="BG2BFjjdf" class="numb"></td>
                    <td style='color:#fbfbfb' name="BG2BFzhjzldf" class="numb"></td>
                </tr>
                <tr style="background:#1663c7ba">
                    <td style='color:#13efef'>3BF</td>
                    <td style='color:#ece628'>4850</td>
                    <td style='color:#ece628'>14.2</td>
                    <td style='color:#07f15a' name="BG3BFcl" class="numb"></td>
                    <td style='color:#07f15a' name="BG3BFlrlyxs" class="numb"></td>
                    <td style='color:#07f15a'name="BG3BFjmlyxs" class="numb"></td>
                    <td style='color:#13efef' name="BG3BFclxldf" class="numb"></td>
                    <td style='color:#fbf300' name="BG3BFzhrlkpw" class="numb"></td>
                    <td style='color:#fbf300' name="BG3BFdf1" class="numb"></td>
                    <td style='color:#fbf300' name="BG3BFcoke" class="numb"></td>
                    <td style='color:#fbf300' name="BG3BFfuel" class="numb"></td>
                    <td style='color:#13efef' name="BG3BFdf2" class="numb"></td>
                    <td style='color:#eaafe9' name="BG3BFjjdf" class="numb"></td>
                    <td style='color:#fbfbfb' name="BG3BFzhjzldf" class="numb"></td>
                </tr>
                <tr style="background:#2854d0ba">
                    <td style='color:#13efef'>4BF</td>
                    <td style='color:#ece628'>4747</td>
                    <td style='color:#ece628'>14.2</td>
                    <td style='color:#07f15a' name="BG4BFcl" class="numb"></td>
                    <td style='color:#07f15a' name="BG4BFlrlyxs" class="numb"></td>
                    <td style='color:#07f15a'name="BG4BFjmlyxs" class="numb"></td>
                    <td style='color:#13efef' name="BG4BFclxldf" class="numb"></td>
                    <td style='color:#fbf300' name="BG4BFzhrlkpw" class="numb"></td>
                    <td style='color:#fbf300' name="BG4BFdf1" class="numb"></td>
                    <td style='color:#fbf300' name="BG4BFcoke" class="numb"></td>
                    <td style='color:#fbf300' name="BG4BFfuel" class="numb"></td>
                    <td style='color:#13efef' name="BG4BFdf2" class="numb"></td>
                    <td style='color:#eaafe9' name="BG4BFjjdf" class="numb"></td>
                    <td style='color:#fbfbfb' name="BG4BFzhjzldf" class="numb"></td>
                </tr>
                <!-- 青山 -->
                <tr style="border-top:10px solid #050c31;background:#3d80d8ba">
                    <td style="font-size:20px;color:#13efef;vertical-align: middle;background:#2e3192;  " rowspan="5">青<br/><br/>山</td>
                    <td style='color:#13efef'>4BF</td>
                    <td style='color:#ece628'>2600</td>
                    <td style='color:#ece628'>11.4</td>
                    <td style='color:#07f15a' name="QS4BFcl" class="numb"></td>
                    <td style='color:#07f15a' name="QS4BFlrlyxs" class="numb"></td>
                    <td style='color:#07f15a'name="QS4BFjmlyxs" class="numb"></td>
                    <td style='color:#13efef' name="QS4BFclxldf" class="numb"></td>
                    <td style='color:#fbf300' name="QS4BFzhrlkpw" class="numb"></td>
                    <td style='color:#fbf300' name="QS4BFdf1" class="numb"></td>
                    <td style='color:#fbf300' name="QS4BFcoke" class="numb"></td>
                    <td style='color:#fbf300' name="QS4BFfuel" class="numb"></td>
                    <td style='color:#13efef' name="QS4BFdf2" class="numb"></td>
                    <td style='color:#eaafe9' name="QS4BFjjdf" class="numb"></td>
                    <td style='color:#fbfbfb' name="QS4BFzhjzldf" class="numb"></td>
                </tr>

                <tr style="background:#2871d0ba">
                    <td style='color:#13efef'>5BF</td>
                    <td style='color:#ece628'>3200</td>
                    <td style='color:#ece628'>12.4</td>
                    <td style='color:#07f15a' name="QS5BFcl" class="numb"></td>
                    <td style='color:#07f15a' name="QS5BFlrlyxs" class="numb"></td>
                    <td style='color:#07f15a'name="QS5BFjmlyxs" class="numb"></td>
                    <td style='color:#13efef' name="QS5BFclxldf" class="numb"></td>
                    <td style='color:#fbf300' name="QS5BFzhrlkpw" class="numb"></td>
                    <td style='color:#fbf300' name="QS5BFdf1" class="numb"></td>
                    <td style='color:#fbf300' name="QS5BFcoke" class="numb"></td>
                    <td style='color:#fbf300' name="QS5BFfuel" class="numb"></td>
                    <td style='color:#13efef' name="QS5BFdf2" class="numb"></td>
                    <td style='color:#eaafe9' name="QS5BFjjdf" class="numb"></td>
                    <td style='color:#fbfbfb' name="QS5BFzhjzldf" class="numb"></td>
                </tr>
                <tr style="background:#1663c7ba">
                    <td style='color:#13efef'>6BF</td>
                    <td style='color:#ece628'>3200</td>
                    <td style='color:#ece628'>12.4</td>
                    <td style='color:#07f15a' name="QS6BFcl" class="numb"></td>
                    <td style='color:#07f15a' name="QS6BFlrlyxs" class="numb"></td>
                    <td style='color:#07f15a'name="QS6BFjmlyxs" class="numb"></td>
                    <td style='color:#13efef' name="QS6BFclxldf" class="numb"></td>
                    <td style='color:#fbf300' name="QS6BFzhrlkpw" class="numb"></td>
                    <td style='color:#fbf300' name="QS6BFdf1" class="numb"></td>
                    <td style='color:#fbf300' name="QS6BFcoke" class="numb"></td>
                    <td style='color:#fbf300' name="QS6BFfuel" class="numb"></td>
                    <td style='color:#13efef' name="QS6BFdf2" class="numb"></td>
                    <td style='color:#eaafe9' name="QS6BFjjdf" class="numb"></td>
                    <td style='color:#fbfbfb' name="QS6BFzhjzldf" class="numb"></td>
                </tr>
                <tr style="background:#2854d0ba">
                    <td style='color:#13efef'>7BF</td>
                    <td style='color:#ece628'>3200</td>
                    <td style='color:#ece628'>12.4</td>
                    <td style='color:#07f15a' name="QS7BFcl" class="numb"></td>
                    <td style='color:#07f15a' name="QS7BFlrlyxs" class="numb"></td>
                    <td style='color:#07f15a'name="QS7BFjmlyxs" class="numb"></td>
                    <td style='color:#13efef' name="QS7BFclxldf" class="numb"></td>
                    <td style='color:#fbf300' name="QS7BFzhrlkpw" class="numb"></td>
                    <td style='color:#fbf300' name="QS7BFdf1" class="numb"></td>
                    <td style='color:#fbf300' name="QS7BFcoke" class="numb"></td>
                    <td style='color:#fbf300' name="QS7BFfuel" class="numb"></td>
                    <td style='color:#13efef' name="QS7BFdf2" class="numb"></td>
                    <td style='color:#eaafe9' name="QS7BFjjdf" class="numb"></td>
                    <td style='color:#fbfbfb' name="QS7BFzhjzldf" class="numb"></td>
                </tr>
                <tr style="background:#1d50e073">
                    <td style='color:#13efef'>8BF</td>
                    <td style='color:#ece628'>4117</td>
                    <td style='color:#ece628'>13.6</td>
                    <td style='color:#07f15a' name="QS8BFcl" class="numb"></td>
                    <td style='color:#07f15a' name="QS8BFlrlyxs" class="numb"></td>
                    <td style='color:#07f15a'name="QS8BFjmlyxs" class="numb"></td>
                    <td style='color:#13efef' name="QS8BFclxldf" class="numb"></td>
                    <td style='color:#fbf300' name="QS8BFzhrlkpw" class="numb"></td>
                    <td style='color:#fbf300' name="QS8BFdf1" class="numb"></td>
                    <td style='color:#fbf300' name="QS8BFcoke" class="numb"></td>
                    <td style='color:#fbf300' name="QS8BFfuel" class="numb"></td>
                    <td style='color:#13efef' name="QS8BFdf2" class="numb"></td>
                    <td style='color:#eaafe9' name="QS8BFjjdf" class="numb"></td>
                    <td style='color:#fbfbfb' name="QS8BFzhjzldf" class="numb"></td>
                </tr>

                <!--东山  -->
                <tr style="border-top:10px solid #050c31;background:#3d80d8ba">
                    <td style="font-size:20px;color:#13efef;vertical-align: middle;background:#2e3192" rowspan="3">东<br/><br/>山</td>
                    <td style='color:#13efef'>1BF</td>
                    <td style='color:#ece628'>5050</td>
                    <td style='color:#ece628'>14.5</td>
                    <td style='color:#07f15a' name="DS1BFcl" class="numb"></td>
                    <td style='color:#07f15a' name="DS1BFlrlyxs" class="numb"></td>
                    <td style='color:#07f15a'name="DS1BFjmlyxs" class="numb"></td>
                    <td style='color:#13efef' name="DS1BFclxldf" class="numb"></td>
                    <td style='color:#fbf300' name="DS1BFzhrlkpw" class="numb"></td>
                    <td style='color:#fbf300' name="DS1BFdf1" class="numb"></td>
                    <td style='color:#fbf300' name="DS1BFcoke" class="numb"></td>
                    <td style='color:#fbf300' name="DS1BFfuel" class="numb"></td>
                    <td style='color:#13efef' name="DS1BFdf2" class="numb"></td>
                    <td style='color:#eaafe9' name="DS1BFjjdf" class="numb"></td>
                    <td style='color:#fbfbfb' name="DS1BFzhjzldf" class="numb"></td>
                </tr>

                <tr style="background:#2871d0ba">
                    <td style='color:#13efef'>2BF</td>
                    <td style='color:#ece628'>5050</td>
                    <td style='color:#ece628'>14.5</td>
                    <td style='color:#07f15a' name="DS2BFcl" class="numb"></td>
                    <td style='color:#07f15a' name="DS2BFlrlyxs" class="numb"></td>
                    <td style='color:#07f15a'name="DS2BFjmlyxs" class="numb"></td>
                    <td style='color:#13efef' name="DS2BFclxldf" class="numb"></td>
                    <td style='color:#fbf300' name="DS2BFzhrlkpw" class="numb"></td>
                    <td style='color:#fbf300' name="DS2BFdf1" class="numb"></td>
                    <td style='color:#fbf300' name="DS2BFcoke" class="numb"></td>
                    <td style='color:#fbf300' name="DS2BFfuel" class="numb"></td>
                    <td style='color:#13efef' name="DS2BFdf2" class="numb"></td>
                    <td style='color:#eaafe9' name="DS2BFjjdf" class="numb"></td>
                    <td style='color:#fbfbfb' name="DS2BFzhjzldf" class="numb"></td>
                </tr>
                <tr style="background:#1663c7ba">
                    <td style='color:#13efef'>3BF</td>
                    <td style='color:#ece628'></td>
                    <td style='color:#ece628'></td>
                    <td style='color:#07f15a' name="DS3BFcl" class="numb"></td>
                    <td style='color:#07f15a' name="DS3BFlrlyxs" class="numb"></td>
                    <td style='color:#07f15a'name="DS3BFjmlyxs" class="numb"></td>
                    <td style='color:#13efef' name="DS3BFclxldf" class="numb"></td>
                    <td style='color:#fbf300' name="DS3BFzhrlkpw" class="numb"></td>
                    <td style='color:#fbf300' name="DS3BFdf1" class="numb"></td>
                    <td style='color:#fbf300' name="DS3BFcoke" class="numb"></td>
                    <td style='color:#fbf300' name="DS3BFfuel" class="numb"></td>
                    <td style='color:#13efef' name="DS3BFdf2" class="numb"></td>
                    <td style='color:#eaafe9' name="DS3BFjjdf" class="numb"></td>
                    <td style='color:#fbfbfb' name="DS3BFzhjzldf" class="numb"></td>
                </tr>
                <!-- 梅山 -->
                <tr style="border-top:10px solid #050c31;background:#3d80d8ba">
                    <td style="font-size:20px;color:#13efef;vertical-align: middle;background:#2e3192" rowspan="3">梅<br/><br/>山</td>
                    <td style='color:#13efef'>2BF</td>
                    <td style='color:#ece628'>1280</td>
                    <td style='color:#ece628'>8.2</td>
                    <td style='color:#07f15a' name="MS2BFcl" class="numb"></td>
                    <td style='color:#07f15a' name="MS2BFlrlyxs" class="numb"></td>
                    <td style='color:#07f15a'name="MS2BFjmlyxs" class="numb"></td>
                    <td style='color:#13efef' name="MS2BFclxldf" class="numb"></td>
                    <td style='color:#fbf300' name="MS2BFzhrlkpw" class="numb"></td>
                    <td style='color:#fbf300' name="MS2BFdf1" class="numb"></td>
                    <td style='color:#fbf300' name="MS2BFcoke" class="numb"></td>
                    <td style='color:#fbf300' name="MS2BFfuel" class="numb"></td>
                    <td style='color:#13efef' name="MS2BFdf2" class="numb"></td>
                    <td style='color:#eaafe9' name="MS2BFjjdf" class="numb"></td>
                    <td style='color:#fbfbfb' name="MS2BFzhjzldf" class="numb"></td>
                </tr>

                <tr style="background:#2871d0ba">
                    <td style='color:#13efef'>4BF</td>
                    <td style='color:#ece628'>3200</td>
                    <td style='color:#ece628'>12.4</td>
                    <td style='color:#07f15a' name="MS4BFcl" class="numb"></td>
                    <td style='color:#07f15a' name="MS4BFlrlyxs" class="numb"></td>
                    <td style='color:#07f15a'name="MS4BFjmlyxs" class="numb"></td>
                    <td style='color:#13efef' name="MS4BFclxldf" class="numb"></td>
                    <td style='color:#fbf300' name="MS4BFzhrlkpw" class="numb"></td>
                    <td style='color:#fbf300' name="MS4BFdf1" class="numb"></td>
                    <td style='color:#fbf300' name="MS4BFcoke" class="numb"></td>
                    <td style='color:#fbf300' name="MS4BFfuel" class="numb"></td>
                    <td style='color:#13efef' name="MS4BFdf2" class="numb"></td>
                    <td style='color:#eaafe9' name="MS4BFjjdf" class="numb"></td>
                    <td style='color:#fbfbfb' name="MS4BFzhjzldf" class="numb"></td>
                </tr>
                <tr style="background:#1663c7ba">
                    <td style='color:#13efef'>5BF</td>
                    <td style='color:#ece628'>4070</td>
                    <td style='color:#ece628'>13.3</td>
                    <td style='color:#07f15a' name="MS5BFcl" class="numb"></td>
                    <td style='color:#07f15a' name="MS5BFlrlyxs" class="numb"></td>
                    <td style='color:#07f15a'name="MS5BFjmlyxs" class="numb"></td>
                    <td style='color:#13efef' name="MS5BFclxldf" class="numb"></td>
                    <td style='color:#fbf300' name="MS5BFzhrlkpw" class="numb"></td>
                    <td style='color:#fbf300' name="MS5BFdf1" class="numb"></td>
                    <td style='color:#fbf300' name="MS5BFcoke" class="numb"></td>
                    <td style='color:#fbf300' name="MS5BFfuel" class="numb"></td>
                    <td style='color:#13efef' name="MS5BFdf2" class="numb"></td>
                    <td style='color:#eaafe9' name="MS5BFjjdf" class="numb"></td>
                    <td style='color:#fbfbfb' name="MS5BFzhjzldf" class="numb"></td>
                </tr>
            </table>
        </div>
    </div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/echarts.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js/HM/HM01.js"></script>
</body>
</html>