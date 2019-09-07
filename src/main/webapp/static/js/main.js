/*!
 * DoktorN - theswedoc
 */
  var callback = function () {
     var h = $(window).height();
     var k = 0;
     $('.full').height(h-k);
  };
  $(document).ready(callback);
  $(window).resize(callback);







$(function() {
   
  $(".s_1").bind('click', { id: '#index' }, scroller);
  $(".s_2").bind('click', { id: '#products' }, scroller);
  $(".s_3").bind('click', { id: '#history' }, scroller);
  $(".s_4").bind('click', { id: '#company' }, scroller);
  $(".s_5").bind('click', { id: '#contact' }, scroller);

  
  function scroller(event){
    var scrollYPos = $(event.data.id).offset().top;
    event.preventDefault();
    TweenLite.to(window, 2, {scrollTo:{y:scrollYPos, autoKill:false, x:0}, ease:Power2.easeOut})
    } 
  
});