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
            ////热销推荐
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
            /////今日已更新 
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
            ////
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
                        <span style="color:#666;font-size=12px">${data[i].tittle}</span>
                        <span style="color:#999;font-szie=12px">剩余${data[i].date}天</span>
                    </div>
                    <div calss="jrgx_bottom" >
                        <span style="color:#ec1611;font-size=14px">${data[i].zhekou}</span>
                        <span>收藏品牌</span>
                    </div>
                    </a>
                </li>
                `
                }
                $('.jrgx_bottom ul').html(str)
            })
        },
        // ul:!function(){
        //     let $li = $('.lunbotu .left>ul>li').not(".l-list");
        //     let str ='';
        //     $li.each(function(){
        //         let $a = $(this).not(".l-list").children();
        //         str += `
        //         <div class="two">
        //             <div class="two_left">
        //                 <div class="pop_second">${$a.eq(0).html()}</div>
        //                 <ul class="ul">
        //                     <li>
        //                         <a href="">${$(this).index()}</a>
        //                         <a href="">${$(this).index()}</a>
        //                     </li>
        //                     <li>
        //                         <a href="">${$(this).index()}</a>
        //                         <a href="">${$(this).index()}</a>
        //                     </li>
        //                     <li>
        //                         <a href="">${$(this).index()}</a>
        //                         <a href="">${$(this).index()}</a>
        //                     </li>
        //                     <li>
        //                         <a href="">${$(this).index()}</a>
        //                         <a href="">${$(this).index()}</a>
        //                     </li>
        //                 </ul>
        //                 <div class="pop_second">${$a.eq(1).html()}</div>
        //                 <ul class="ul">
        //                     <li>
        //                         <a href="">${$(this).index()}</a>
        //                         <a href="">${$(this).index()}</a>
        //                     </li>
        //                     <li>
        //                         <a href="">${$(this).index()}</a>
        //                         <a href="">${$(this).index()}</a>

        //                     </li>
        //                     <li>
        //                         <a href="">${$(this).index()}</a>
        //                         <a href="">${$(this).index()}</a>

        //                     </li>
        //                     <li>
        //                         <a href="">${$(this).index()}</a>
        //                         <a href="">${$(this).index()}</a>

        //                     </li>
        //                 </ul>
        //             </div>
        //             <div class="two_right">
        //                 <a href=""><img src="./img/300x200.b73bd819d04d5643af41c514f73a5d23.300x.jpg" alt="" class="img1"></a>
        //                 <a href=""><img src="./img/300x200.b73bd819d04d5643af41c514f73a5d23.300x.jpg" alt=""class="img2"></a>
        //                 <a href=""><img src="./img/150x100.6436e2d02912e3d1010f2a94a6d7d279.150x.png" alt=""class="img3"></a>
        //             </div>
        //         </div>
        //     </div>
        //         `
        //         // console.log(str)
        //         // console.log($('.two_wrap'))
        //     })
        //     $('.two_wrap').html(str);
            
       
        // }(),
        two:!function(){
            let $li = $('.lunbotu .left>ul>li')
            $li.not($('.l-list')).on('mouseover',function(){
                $('.two_wrap').eq($(this).index()).show().siblings(".two_wrap").hide();
            })
            $li.not($('.l-list')).on('mouseout',function(){
                $('.two_wrap').hide();
            })
            $('.two_wrap').on('mouseover',function(){
                $(this).show();
            })
            $('.two_wrap').on('mouseout',function(){
                $(this).hide();
            })
        }(),
        border:!function(){
            $('.img-3').on('hover',function(){
                
            })
        }()
    }
});







