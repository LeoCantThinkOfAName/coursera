window.onload = function () {
    var main = document.getElementById('main'),
        btn = document.getElementById('menu-btn'),
        switcher = true;
        timer = null,
        t = 80;

    function slidedown () {
        clearInterval(timer);
        timer = setInterval(function () {
            if(t < 220 && switcher) {
                t += 10;
                main.style.top = t + 'px';
                if(t == 220) {
                    clearInterval(timer);
                    switcher = false;
                }
            } else if(!switcher) {
                if(t > 80) {
                    t -= 10;
                    main.style.top = t + 'px';
                    if(t == 80) {
                        clearInterval(timer);
                        switcher = true;
                    }
                }
            }
        }, 10)
    }

    btn.onclick = slidedown;
}