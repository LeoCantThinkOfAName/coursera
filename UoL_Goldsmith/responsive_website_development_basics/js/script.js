window.onload = function () {
    var paragraphs = document.querySelector("#content").getElementsByTagName("p"),
        
        backward_btn = document.querySelector("#backward"),
        forward_btn = document.querySelector("#forward");

        alert("The paragraphs will change in every 5s, you can also change it yourself by using the bars with little arrow sign on it aside the paragraph!")

    function changePage () {
        var counter = 0,
            timer = null;

        timer = setInterval(function () {
            if (counter < 4) {
                counter += 1;
                paragraphs[counter].className = "show";
                paragraphs[counter - 1].className = "hide";
            }else {
                paragraphs[counter].className = "hide";
                counter = 0;
                paragraphs[counter].className = "show";
            }
        }, 5000);
        
        forward_btn.onclick = function() {
            paragraphs[counter].className = "hide";

            if (counter < 4) {
                counter += 1;
            }else {
                counter = 0;
            }
            paragraphs[counter].className = "show";
        }

        backward_btn.onclick = function () {
            paragraphs[counter].className = "hide";

            if(counter > 0 ){
                counter -= 1;
            }else {
                counter = 4;
            }

            paragraphs[counter].className = "show";
        }
    }

    changePage();
}