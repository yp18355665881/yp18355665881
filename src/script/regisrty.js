!function(){
    let call = true;
    let password = true;
    let apassword = true;
    let checkbox = true;
    $('#phone').on('focus',function(){
        console.log(1)
        $('.phone').find('.info').html('为了您的账户安全，请填写常用手机号');
        $('.phone').find('.info').css({
            'color':'#ccc',
            'display':'block'
        })
    })
    //手机号码
    $('#phone').on('blur',function(){
        var re1 = /^1[35789]\d{9}$/;
            if($(this).prop('value')!==''){
                    if(re1.test($(this).prop('value'))){
                        $('.phone em').html('√');
                        $('.phone em').css({
                            'color':'green'});
                            $('.phone').find('.info').css({
                                'display':'none'
                            })
                        call = true;
                    }else{
                        $('.phone').find('.info').css({
                            'color':'red',
                        }) 
                        $('.phone').find('.info').html('手机号码格式错误');
                        
                        call = false;
                    }
            }else{
                $('.phone').find('.info').html('请输入手机号码');
                $('.phone').find('.info').css({
                    'color':'red'
                })
                call = false;
            }
    })
    //密码
    $('#password').on('focus',function(){
        $('.password').find('.info').html('6-24位字母数字或下划线');
                $('.password').find('.info').css({
                    'color':'red',
                    'display':'block'
                })
                password = false;
    })
    $('#password').on('input',function(){
        console.log($(this).prop('value').length)
        if($(this).prop('value').length>=6 && $(this).prop('value').        length<=24){
            var re1 = /\d+/ //数字
            var re2 = /[a-z]+/ //小写字母
            var re3 = /[A-Z]+/ //大写字母
            var re4 = /[\W\_]+/  //特殊字符
            var value = $(this).prop('value')
            var num = 0;
            if(re1.test(value)){
                num++
            }
            if(re2.test(value)){
                num++
            }
            if(re3.test(value)){
                num++
            }
            if(re4.test(value)){
                num++
            }
            $('.password').find('.info').css('display','none')
            // $('.password em').css('display','block')
            switch(num){
                case 1: $('.password em').html('弱'); 
                        password = false; 
                        $('.password em').css('color','red')
                        break;
                case 2:
                case 3: $('.password em').html('中');
                        $('.password em').css('color','green');
                        $('.password').find('.info').css({
                            'display':'none'
                        })
                        password = true;  
                        break;
                case 4: $('.password em').html('强');
                        password = true;
                        $('.password').find('.info').css({
                            'display':'none'
                        })
                        $('.password em').css('color','green');
                        break;
            }
        }
    })
    $('#password').on('blur',function(){
        if(this.value!==''){
            $('.password em').css('display','block')
            }else{
                // $('.password em').css('display','none')
                $('.password').find('.info').html('请输入密码');
                $('.password').find('.info').css({
                    'color':'red'
                })
                password = false; 
            }
    }) 

    //确认密码
    $('#apassword').on('focus',function(){
        $('.apassword').find('.info').css({
            'display':'block',
            'color':'#ccc'
        })
        $('.apassword .info').html('请再次输入你的密码')
    })
    $('#apassword').on('blur',function(){
        if($('#apassword').prop('value') !==''){
            if($('#apassword').prop('value') ===$('#password').prop('value')){
                $('.apassword em').html('√');
                $('.apassword em').css({
                    'color':'green'});
                    $('.apassword').find('.info').css({
                        'display':'none'
                    })
                apassword = true;
            }else{
                $('.apassword').find('.info').css({
                    'display':'block',
                    'color':'red'
                })
                $('.apassword .info').html('两次输入密码不一致');
                apassword = false;
            }
        }else{
            $('.apassword').find('.info').css({
                'display':'block',
                'color':'red'
            })
            $('.apassword .info').html('请再次输入你的密码');
            apassword = false;
        }
    })

    //受否勾选
    $('.select').on('click',function(){
        if($('input:checked').size() ===1){
            checkbox = true;
        }else{
            checkbox = false;
        };
    });


    $('form').on('submit',function() {
        alert(3)
        if ($('#phone').prop('value') === '') {
            $('.phone').find('.info').html('请输入手机号码');
            $('.phone').find('.info').css({
                'display':'block',
                'color':'red'
            })
            call = false;
        }
        if ($('#password').prop('value') === '') {
            $('.password').find('.info').html('请输入密码');
                $('.password').find('.info').css({
                    'display':'block',
                    'color':'red'
                })
                pw = false; 
        }
        if ($('#apassword').prop('value') === '') {
            $('.apassword').find('.info').css({
                'display':'block',
                'color':'red'
            })
            $('.apassword .info').html('请再次输入你的密码');
            apw = false;
        }
       
        if (!call || !password || !apassword ||!checkbox) {
            return false; //阻止默认行为
        }
    });
}();

!function(){
    $('#phone').on('blur',function(){
        $.ajax({
            type:'POST',
            url:'http://localhost/h5-2/zhe800/php/registry.php',
            dataType:'json',
            data:{
                username:$('#phone').val()
            }
        }).done(function(data){
            if(!data){
                $('.phone em').html('√');
                $('.phone em').css({
                    'color':'green'});
                    $('.phone').find('.info').css({
                        'display':'none'
                    })
                call = true;
            }else{
                console.log(data)
                $('.phone').find('.info').html('用户名已经注册');
                $('.phone').find('.info').css({
                    'color':'red',
                    'display':'block'
                })
                $('.phone em').css({
                    'display':'none'});
                    }
        }) 
    })

    
}()