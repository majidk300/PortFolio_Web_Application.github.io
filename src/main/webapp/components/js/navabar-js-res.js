function toggleMenu() {
  var menu = document.querySelector('.navbar .home-features');
  var barsIcon = document.querySelector('.bars-icon-res');
  if (menu.style.display === 'none') {
    menu.style.display = 'block';
    menu.style.background ='#0f0f0f';
     menu.style.position ='absolute';
     menu.style.right ='0';
     menu.style.top ='0';
     menu.style.padding ='70px 0 0 0 ';
     

     barsIcon.style.right ='30px';
     barsIcon.style.top ='35px';
     
  } else {
    menu.style.display = 'none';
  }
}