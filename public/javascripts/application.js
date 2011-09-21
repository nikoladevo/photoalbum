var go = true;
$(document).ready(function() {
    $("a.group").fancybox({
                'hideOnContentClick': true,
                'transitionIn' : 'elastic',
                'transitionOut' : 'elastic',
                'titleFormat' : function(title, currentArray, currentIndex) {
                    if (currentIndex == 0)
                      go = true;                      
                    if (currentIndex == currentArray.length - 1)
                      go = false;                                       
                    if (go == true)
                      setTimeout('$.fancybox.next();', 3000);
                    else
                      setTimeout('$.fancybox.prev();', 3000);                    
                    return '<span id="fancybox-title-over" >' + title + '</span>';
                 }
      });
      
});  
