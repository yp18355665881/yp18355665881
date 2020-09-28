define([], function () {
    return {
        init: function () {
            //品牌精选
            $.ajax({
                url: "http://localhost/h5-2/zhe800/php/ppjx.php",
                dataType: 'json'
            }).done(function (data) {
                // alert($('ppjx_middle'))
                let str = '';
                for (let i = 0; i < data.length; i++) {
                    alert
                    str += `
                <div class="img-3"> 
                    <a href="">
                    <img src="${data[i].url}" alt="">
                    </a>
                    <div class="img-3-bottom">${data[i].tittle}</div>
                </div>
                `
                }
                $('.ppjx_middle').html(str)
            })
            ////现实秒杀
            $.ajax({
                url: "http://localhost/h5-2/zhe800/php/xsms.php",
                dataType: 'json'
            }).done(function (data) {
                let str = '';
                for (let i = 0; i < data.length; i++) {
                    alert
                    str += `
                
                <li><a href="">
                <img src="${data[i].url}" alt="">
                </a></li>
                `
                }
                $('.xsms_bottom ul').html(str)
            })

            /////热销推荐
            $.ajax({
                url: "http://localhost/h5-2/zhe800/php/rxtj.php",
                dataType: 'json'
            }).done(function (data) {
                let str = '';
                for (let i = 0; i < data.length; i++) {
                    alert
                    str += `
                <li>
                    <a href="">
                    <img src="${data[i].url}" alt="">
                    </a>
                </li>
                `
                }
                $('.rxtj_bottom ul').html(str)
            })
            ////今日更新
            $.ajax({
                url: "http://localhost/h5-2/zhe800/php/jrgx.php",
                dataType: 'json'
            }).done(function (data) {
                let str = '';
                for (let i = 0; i < data.length; i++) {
                    alert
                    str += `
                <li>
                    <a href="">
                    <img src="${data[i].url}" alt="">
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
                $('.jrgx_bottom ul').html(str)
            })
        },
        // 二级菜单
        two: !function () {
            let $li = $('.lunbotu .left>ul>li')
            $li.not($('.l-list')).on('mouseover', function () {
                $('.two_wrap').eq($(this).index()).show().siblings(".two_wrap").hide();
            })
            $li.not($('.l-list')).on('mouseout', function () {
                $('.two_wrap').hide();
            })
            $('.two_wrap').on('mouseover', function () {
                $(this).show();
            })
            $('.two_wrap').on('mouseout', function () {
                $(this).hide();
            })
        }(),
        border: !function () {
            $('.img-3').on('hover', function () {

            })
        }(),
        banner_render:! function () {
            $.ajax({
                url: 'http://localhost/h5-2/zhe800/php/banner.php',
                dataType: 'json'
            }).done(function (data) {
                console.log()
                let str = '';
                $.each(data, function (index, value) {
                    let sarr = value.surl.split(';')
                    // console.log(sarr[1])
                    str += `
                    <li class="banner_li>
                        <a href="#">
                            <img src="${value.burl}" alt="">
                                <ul class="banner_inner_ul">
                                    <li>
                                         <a href="">
                                            <img src="${sarr[0]}"
                                            alt="">
                                        </a>
                                    </li> 
                                    <li>
                                        <a href="">
                                            <img src="${sarr[1]}"
                                            alt="">
                                        </a>
                                    </li>
                                </ul>
                        </a>
                    </li>
                    `
                })
                console.log(str)
                $('.banner_ul').html(str);
            })
        }(),
        banner:!function(){
            $('.yq b').on('mouseover',function(){
                $(this).addClass('active').siblings().removeClass('active');
            })
        }()
    }
});







