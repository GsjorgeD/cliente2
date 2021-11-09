
(function() 
{
    /* Boton ir hacia arriba */
    const buttonTop = document.querySelector('.botonArriba');

    window.onscroll = () => 
    {
        if (document.documentElement.scrollTop > 100)
            buttonTop.classList.add('shows')
        else {
            buttonTop.classList.remove('shows')
        }
        buttonTop.addEventListener('click', () => 
        {
            window.scrollTo({
                top: 0,
                behavior: 'smooth'
            })
        })
    }

})()