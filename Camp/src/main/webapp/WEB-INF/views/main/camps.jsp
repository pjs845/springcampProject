<%@ page contentType="text/html; charset=UTF-8" %>
{% for camp in camps%}
<div class="items hand " onclick="">
    <div class="photo">       
            <img src="{{camp.img}}" alt="{{camp.name}}" class="tm" width="150" height="150">
                                    <span class="distance"></span>
        <span class="cat" style="color:#91ee6c">유료캠핑장</span>
    </div>
    <div class="cont">
        <p class="tt">{{camp.name}}</p>
        <p class="mcont">{{camp.addr}}</p>
    </div>
</div>    
{% endfor %}                           

