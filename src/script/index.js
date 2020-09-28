!function(){
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
            <img  class="img" src="${data[i].url}" alt="">
            </a>
            <div class="img-3-bottom">${data[i].tittle}</div>
        </div>
        `
        }
        $('.ppjx_middle').html(str)
    })
    // $('.img-3').on('mouseover','.img',function(event){
        
    //     $(event.target).stop(true).animate({
    //         boxShadow: '#ccc 0px 0px 5px 5px'
    //     })
    // })
    ////现实秒杀
    

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
            <img  class ='lazy' data-original="${data[i].url}" alt="">
            </a>
        </li>
        `
        }
        $('.rxtj_bottom ul').html(str);
        $(function() { //和拼接的元素放在一起。
            $("img.lazy").lazyload({
                effect: "fadeIn" //图片显示方式
            });
        });
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
        $(function() { //和拼接的元素放在一起。
            $("img.lazy").lazyload({
                effect: "fadeIn" //图片显示方式
            });
        });
    })
}();

!function(){
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
}();

//边框效果
!function(){
    console.log($('.img-3').size())
   
}()

!function(){
    $.ajax({
        url: 'http://localhost/h5-2/zhe800/php/banner.php',
        dataType: 'json'
    }).done(function (data) {
        let str = '';
        $.each(data, function (index, value) {
            let sarr = value.surl.split(';')
            str += `
            <li class="banner_li">
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
        // console.log(str)
        $('.banner_ul').html(str);
    })
}();

///轮播图
!function(){
    let $b =  $('.yq b');
    let index = 0;
    let timer = null;
    //ceshi
    
    //鼠标经过远点切换图片
    $b.on('mouseover',function(){
        $(this).addClass('active').siblings().removeClass('active');
        $('.banner_li').eq($(this).index()).stop(true).animate({
            opacity:1,
            zIndex:1
        }).siblings().animate({
            opacity:0,
            zIndex:0
        })
        index = $(this).index();
        clearInterval(timer)
    });
    // console.log(index);
    //自动轮播图片
    // $('.banner_ul').on('mouseover','.banner_li',    function(){
    //         // alert(1)
    //         clearInterval(timer)
    // });
    

    timer = setInterval(() => {
        if(index===5){
            index =0;
        }
        $('.banner_li').eq(index).stop(true).animate({
            opacity:1,
            zIndex:1
        }).siblings().stop(true).animate({
            opacity:0,
            zIndex:0
        })
        $b.eq(index).addClass('active').siblings().removeClass('active')
        index++;
    }, 500);
    // setI();

    $('.banner_ul').on('mouseover','.banner_li',function(){
        clearInterval(timer)
    })
    $('.banner_ul').on('mouseout','.banner_li',function(){
        timer = setInterval(() => {
            if(index===5){
                index =0;
            }
            $('.banner_li').eq(index).stop(true).animate({
                opacity:1,
                zIndex:1
            }).siblings().stop(true).animate({
                opacity:0,
                zIndex:0
            })
            $b.eq(index).addClass('active').siblings().removeClass('active')
            index++;
        }, 3000);
    })
    
}();

//限时秒杀
!function(){
    let $ul = $('.xsms_bottom>ul');
    let $li = $ul.find('li');
    let $bottom = $('.xsms_bottom');
    let $l = $('.xsms_left');
    let $r = $('.xsms_right');
    console.log($li)
    let index= 0;
    let liCount = 0
    $.ajax({
        url: "http://localhost/h5-2/zhe800/php/xsms.php",
        dataType: 'json'
    }).done(function (data) {
        let str = '';
        for (let i = 0; i < data.length; i++) {
            alert
            str += `
        <li><a href="">
        <img class ='lazy' data-original="${data[i].url}" alt="">
        </a></li>
        `
        }
        $('.xsms_bottom ul').html(str); 
        liCount = data.length;
        qiehuan(liCount);
        $(function() { //和拼接的元素放在一起。
            $("img.lazy").lazyload({
                effect: "fadeIn" //图片显示方式
            });
        });
    })
    function qiehuan(liCount){
        $r.on('click',function(){
            index++;
            $ul.stop(true).animate({
                left:-(index * $bottom.outerWidth())
            })
        })
       
        $l.on('click',function(){
            index--;
            $ul.stop(true).animate({
                left:-(index * $bottom.outerWidth())
            })
        }) 
    }
}();

!function(){
    $(window).on('scroll',function(){
        if($(window).scrollTop()>300){
            $('.dbxf').stop(true).animate({
                left:0,
                top:0
            })
        }else{
            $('.dbxf').stop(true).animate({
                left:0,
                top:-80
            })
        }
    })
}()

// !function(){
//     const img = $('img').not('.middle_bottom img')
//     img.addClass('lazy');
//     img.attr('')
// }()