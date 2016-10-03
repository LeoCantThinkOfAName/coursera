// put your javascript code here

document.addEventListener("DOMContentLoaded", function () {
    var source = document.querySelector("#animal-category").innerHTML;
    var template = Handlebars.compile(source);
    var html = template(animals_data);

    document.querySelector("#content").innerHTML = html;

    //jumbotron slide//
});

Handlebars.registerHelper('toLowerCase', function(str) {
    return str.toLowerCase();
});
