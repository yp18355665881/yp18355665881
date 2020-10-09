define([], function () {
    return {
        init: function () {
            $.ajax({
                // url: "http://192.168.13.22/h5-2/zhe800/php/ppjx.php",
                url: "http://192.168.13.22/h5-2/zhe800/php/ppjx.php",
        
                dataType: 'json'
            }).done(function (data) {
                // alert($('ppjx_middle'))
                let str = '';
                for (let i = 0; i < data.length; i++) {
                    alert
                    str += `
                <div class="img-3"> 
                    <a href="">
                    <img  class="img" src="${data[i].url}" alt="">
                    </a>
                    <div class="img-3-bottom">${data[i].tittle}</div>
                </div>
                `
                }
                $('.ppjx_middle').html(str)
            })
           
        
            /////热销推荐
            $.ajax({
                url: "http://192.168.13.22/h5-2/zhe800/php/rxtj.php",
        
                // url: "http://192.168.13.22/h5-2/zhe800/php/rxtj.php",
                dataType: 'json'
            }).done(function (data) {
                let str = '';
                for (let i = 0; i < data.length; i++) {
                    alert
                    str += `
                <li>
                    <a href="">
                    <img  class ='lazy' data-original="${data[i].url}" alt="">
                    </a>
                </li>
                `
                }
                $('.rxtj_bottom ul').html(str);
                $(function () { //和拼接的元素放在一起。
                    $("img.lazy").lazyload({
                        effect: "fadeIn" //图片显示方式
                    });
                });
            })
            ////今日更新
            $.ajax({
                url: "http://192.168.13.22/h5-2/zhe800/php/jrgx.php",
                // url: "http://192.168.13.22/h5-2/zhe800/php/jrgx.php",
                dataType: 'json'
            }).done(function (data) {
                console.log(data)
                let str = '';
                for (let i = 0; i < data.length; i++) {
        console.log(data[i].tittle)
        
                    str += `
                <li>
                    <a href="">
                    <img class ='lazy' data-original="${data[i].url}" alt="">
                    <div calss="jrgx_middle">
                        <span style="color:#666;font-size:12px;">${data[i].tittle}</span>
                        <span style="color:#999;font-size:12px;">剩余${data[i].day}天</span>
                    </div>
                    <div calss="jrgx_bottom" >
                        <span style="color:#ec1611;font-size:14px">${data[i].zhekou}</span>
                        <span style="font-size:12px">收藏品牌</span>
                    </div>
                    </a>
                </li>
                `
                }
                $('.jrgx_bottom ul').html(str);
                $(function () { //和拼接的元素放在一起。
                    $("img.lazy").lazyload({
                        effect: "fadeIn" //图片显示方式
                    });
                });
            });
            //分页
            $('.page').pagination({
                pageCount: 2, //总的页数 - 后端传入的。
                jump: true, //是否开启跳转到指定的页数，布尔值。
                //coping: true, //是否开启首页和尾页，布尔值。
                prevContent: '上一页',
                nextContent: '下一页',
        
                callback: function (api) {
                    console.log(api.getCurrent()); //获取的页码给后端
                    $.ajax({
                        // url: 'http://192.168.13.22/h5-2/zhe800/php/jrgx.php',
                        url: 'http://192.168.13.22/h5-2/zhe800/php/jrgx.php',
        
                        data: {
                            page: api.getCurrent() //传输页面
                        },
                        dataType: 'json'
                    }).done(function (data) {
                        let $strhtml = '<ul>';
                        $.each(data, function (index, value) {
                            console.log(value.url)
                            $strhtml += `
                            <li>
                            <a href="">
                            <img class ='lazy' data-original="${value.url}" alt="">
                            <div calss="jrgx_middle">
                                <span style="color:#666;font-size:12px;">${value.tittle}</span>
                                <span style="color:#999;font-size:12px;">剩余${value.day}天</span>
                            </div>
                            <div calss="jrgx_bottom" >
                                <span style="color:#ec1611;font-size:14px">${value.zhekou}</span>
                                <span style="font-size:12px">收藏品牌</span>
                            </div>
                            </a>
                        </li>
                            `;
                        });
                        $strhtml += '</ul>';
                        $('.jrgx_bottom ul').html($strhtml);
                        $(function () { //和拼接的元素放在一起。
                            $("img.lazy").lazyload({
                                effect: "fadeIn" //图片显示方式
                            });
                        });
                    });
                }
            });
        //------
        }
        
        
    }
});







