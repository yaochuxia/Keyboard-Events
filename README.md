
# 设置键盘快捷方式

新建js文件，添加控制键盘的js插件

#### 定义Mac command+r 刷新iframe 框架
 返回false，将屏蔽浏览器默认的command+r快捷事件
        hotkeys('command+r', function(){
            console.log('停止刷新!');
            return false
        })        
        hotkeys('command+r',function(event,handler){
            iframe.contentWindow.location.reload() 
        })        
定义s快捷键   

       hotkeys('s',function(event,handler){
           if(event.target==='input'){
              alert('你在输入框中按下 s!')
            }
           alert('你按下 s!')
       })

定义多个快捷键   

       hotkeys('ctrl+a,ctrl+r,b,f',function(event,handler){
           switch(handler.key){
             case "ctrl+a":alert("你按下ctrl+a");break;
             case "ctrl+r":alert("你按下ctrl+r");break;
             case "b":alert("你按下b");break;
             case "f":alert("你按下f");break;
            }
       })



