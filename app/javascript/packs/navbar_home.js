
(function() 
{
    /* Navbar de inicio */
    var nav = document.querySelector('#navbar-inicio');

    nav.classList.remove('bg-navbar', 'shadow');

    window.addEventListener('scroll', function () 
    {
        if (window.pageYOffset > 100)
          nav.classList.add('bg-navbar', 'shadow');
        else
          nav.classList.remove('bg-navbar', 'shadow');
    });

})()