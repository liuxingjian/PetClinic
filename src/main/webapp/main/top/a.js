window.onload=function(){//页面加载事件
    setInterval(function(){
        showtime();},1000);
//1000==1秒，方法延迟1s后执行
}
function showtime(){
    var time=new Date();//通过构造函数创建Date方法
    var hours=time.getHours();//小时
    var minute=time.getMinutes();//分钟
    var second=time.getSeconds();//秒数
    //当时间<=9就在前面添加0
    hours=hours<=9?"0"+hours:hours;//条件运算符,如果条件成立则执行A语句:不成立则执行B语句
    minute=minute<=9?"0"+minute:minute;
    second=second<=9?"0"+second:second;
    document.getElementById("hours").innerHTML=hours;
    document.getElementById("minute").innerHTML=minute;
    document.getElementById("second").innerHTML=second;
    //属性设置或返回元素的innerHTML
}
