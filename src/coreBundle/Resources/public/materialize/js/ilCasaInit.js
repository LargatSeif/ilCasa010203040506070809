$(document).ready(function(){
            
            
             $('.slider').slider({full_width: true});
            
            $('.tooltipped').tooltip({delay: 50});
            
            $('.modal-trigger').leanModal({
              dismissible: true, // Modal can be dismissed by clicking outside of the modal
              opacity: .5, // Opacity of modal background
              in_duration: 300, // Transition in duration
              out_duration: 200, // Transition out duration
              starting_top: '10%', // Starting top style attribute
              ending_top: '10%', // Ending top style attribute
              ready: function() {  }, // Callback for Modal open
              complete: function() {
              Materialize.toast('Votre message à été envoyé !', 4000);
              } // Callback for Modal close
            }
          );
            
            $(window).scroll(function(){
                if($(document).scrollTop() > 0){
                    $('#searchBar').fadeIn();
                }
                if($(document).scrollTop() == 0){
                    $('#searchBar').hide();
                }
                
              if($(document).scrollTop() > 0){
                $('#myNav').hide();
              }
                if($(document).scrollTop() == 0){
                  $('#myNav').show();
              }
            });
            
        // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
        $('.modal-trigger').leanModal();
            
             
           
            $(".img").hover(function(){
                $(this).next().fadeIn(1000);
            });
            
            $(".overlay ").on('mouseleave',function(){
                $(this).fadeOut(500);
            });
            
        //Huge menu subnav --------------------------------------------------------------------->
            var hovered = '';
             
        $('#myNav a').on('mouseover',function(){
            
            if(  $(this).hasClass('hovered') == false ){
                hovered = $(this);
                $("[id^='hoverMenu']").hide();
                $('#hoverMenu'+hovered.attr('id')).show();                
                            
            }else{
                
                hovered = $(this);                
            }            
        });
            
            
        $("[id^='hoverMenu']").on('mouseover',function(){
            
            $('#hoverMenu').show();
            hovered.addClass('hovered');
            hovered.css('color','#FFF');
        });
        
           
            
      $("[id^='hoverMenu']").on('mouseleave',function(){
            
            $("[id^='hoverMenu']").hide();
            hovered.removeClass('hovered');
            hovered.css('color','#6b7781');
        });
    
        /*$(".no-pad-bot ").on('mouseleave',function(){
            
            $("[id^='hoverMenu']").hide();
            //hovered.removeClass('hovered');
            hovered.css('color','#6b7781');
        });
    
        
    
         
    
 /* starts *****/
        var i=1;
        var note=3;
        for(i=1;i < note+1;i++){
             $('#stars i:nth-child('+i+') ').css('color','#E9C752');
        }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
});
































