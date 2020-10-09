!function(){
    let datasid = location.search.substring(1).split('=')[1];
    if (!datasid) { //如果sid不存在，设置1
        datasid = 1;
    }
    
    $.ajax({
        // url:'http://192.168.13.22/h5-2/zhe800/php/detail.php',
        url:'http://192.168.13.22/h5-2/zhe800/php/detail.php',

        data:{
            sid:datasid
        },
        dataType:'json'
    }).done(function(data){
        // alert(1)
        // console.log(data.url)
        $('strong').html(data.price)
        $('.title').html(data.title);
        $('.img-responsive').prop('src',data.url);
        $('.img-responsive').attr('sid',data.sid); //存储sid
        $('.img11').prop('src',data.url)
        // $('.picList')
        let picList = data.piclisturl.split(',');
        let str = ''
        $.each(picList,function(index,value){
            str += `
                <li>
                    <img src="${value}" />
                </li>
            `
        })
        
        $('.picList').html(str)
        $('.picList img').on('mouseover',function(){
            $(this).addClass('cur').parents().siblings().find('img').removeClass('cur');
            $('.img-responsive').prop('src',$(this).attr('src'))
        })
    })
}();

!function(){
    let pc=0;
    $('.fh_r').on('click',function(){
        pc = parseInt($('.num_count').prop('value'));
        pc++;
        if(pc>80||pc===80){
            pc=80;
        }
        color(pc);
        $('.num_count').prop('value',pc)
    })

    $('.fh_l').on('click',function(){
        pc = parseInt($('.num_count').prop('value'));
        pc--;
        if(pc<0||pc===0){
            pc=0;
            console.log(pc)
        }
        $('.num_count').prop('value',pc);
        color(pc)
    })
    
    pc = parseInt($('.num_count').prop('value'));
    
    //给变换颜色
    function color(pc){
        if(pc>1){
            $('.fh_l').css({
                'backgroundPosition':'-1px -210px',
            })
        }else{
            $('.fh_l').css({
                'backgroundPosition':'-1px -179px',
            })
        }
    }
}();

//购物车

!function(){
    let arrsid = []; //存商品编号
    let arrnum = [];//存商品数量

    //判断是否第一次点击s
    function cookieIs() {
        if ($.cookie('cookiesid') && $.cookie('cookienum')) {
            arrsid = $.cookie('cookiesid').split(','); //获取cookie 同时转换成数组。
            arrnum = $.cookie('cookienum').split(','); //获取cookie 同时转换成数组。
            console.log(1)
        } else {
            arrsid = [];
            arrnum = [];
            console.log(2)
        }
    }

    $('.bt2').on('click', function() {
        alert('1');
        let $sid = $(this).parents('.content').find('.img-responsive').attr('sid');
        
        cookieIs();
        if ($.inArray($sid, arrsid) != -1) { //$sid存在，商品列表存在，数量累加
            //先取出cookie中存在的数量+当前添加的数量，一起添加到cookie中。
            let $num = parseInt(arrnum[$.inArray($sid, arrsid)]) + parseInt($('.num_count').val()); //取值
            console.log(arrnum);
            arrnum[$.inArray($sid, arrsid)] = $num; //赋值
            $.cookie('cookienum', arrnum, { expires: 10, path: '/' });
            console.log(3)

        } else {
            //第一次点击按钮,将商品的sid和商品的数量放到数组里面，然后将数组传入cookie.
            console.log(4)//测试执行顺序
            arrsid.push($sid); //将编号$sid push到arrsid数组中
            $.cookie('cookiesid', arrsid, { expires: 10, path: '/' });
            arrnum.push($('.num_count').val()); //将数量push到arrnum数组中
            $.cookie('cookienum', arrnum, { expires: 10, path: '/' });
        }
       
    })
}()