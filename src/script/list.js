;
!function(){
    $.ajax({
        url:'http://192.168.13.66/projectname/php/listdata.php',
        dataType:'json'
    }).done(function(data){
        let str = '<ul>';
        array_default = []; //排序前的li数组
        array = []; //排序中的数组
        prev = null;
        next = null;
        $.each(data,function(index,value){
            str+= `
            <li>
            <a href="detail.html?sid=${value.sid}" target="_blank">
                <img class="lazy" data-original="${value.url}" width="178" height="200"/>
                <p>${value.sid}${value.title}</p>
                <span class="price">￥${value.price}</span>
                <span>${value.sailnumber}</span>
            </a>
        </li>
            `
        })
        str += '</ul>'
        $('.list').html(str)
        $(function() { //和拼接的元素放在一起。
            $("img.lazy").lazyload({
                effect: "fadeIn" //图片显示方式
            });
        });
        $('.list li').each(function(index,ele){
            array[index] = $(ele);
            array_default[index] = $(ele);
        })
    })
   

    $('.page').pagination({
        pageCount: 3, //总的页数 - 后端传入的。
        jump: true, //是否开启跳转到指定的页数，布尔值。
        //coping: true, //是否开启首页和尾页，布尔值。
        prevContent: '上一页',
        nextContent: '下一页',
        
        callback: function(api) {
            console.log(api.getCurrent()); //获取的页码给后端
            $.ajax({
                url: 'http://192.168.13.66/projectname/php/listdata.php',
                data: {
                    page: api.getCurrent() //传输页面
                },
                dataType: 'json'
            }).done(function(data) {
                let $strhtml = '<ul>';
                $.each(data, function(index, value) {
                    $strhtml += `
                        <li>
                            <a href="detail.html?sid=${value.sid}" target="_blank">
                                <img src="${value.url}"/>
                                <p>${value.sid}${value.title}</p>
                                <span class="price">￥${value.price}</span>
                                <span>${value.sailnumber}</span>
                            </a>
                        </li>
                    `;
                });
                $strhtml += '</ul>';
                $('.list').html($strhtml);

                //重置数组
                array_default = []; //排序前的li数组
                array = []; //排序中的数组
                prev = null;
                next = null;
                //将页面的li元素追加到两个数组中。
                $('.list li').each(function(index, element) {
                    array[index] = $(this);
                    array_default[index] = $(this);
                });
            });
        }
    });



    $('button').eq(0).on('click', function() {
        //array_default = [li,li,li,li......]
        $.each(array_default, function(index, value) {
            $('.list ul').append(value);
        });
        return;
    });

    //升序
    $('button').eq(1).on('click', function() {
        for (let i = 0; i < array.length - 1; i++) {
            for (let j = 0; j < array.length - i - 1; j++) {
                prev = parseFloat(array[j].find('.price').html().substring(1)); //获取上一个价格
                next = parseFloat(array[j + 1].find('.price').html().substring(1)); //获取下一个价格
                //通过价格的判断，改变的是li的位置。
                if (prev > next) {
                    let temp = array[j];
                    array[j] = array[j + 1];
                    array[j + 1] = temp;
                }
            }
        }
        $.each(array, function(index, value) {
            $('.list ul').append(value);
        });
    });
}()

!function(){
    $('button').on('click',function(){
        $(this).addClass('active').siblings().removeClass('active');
    })
    // $('button').on('mouseover',function(){
    //     $(this).css('color','red')
    // })
    // $('button').on('mouseout',function(){
    //     $(this).css('color','#red')
    // })
}()