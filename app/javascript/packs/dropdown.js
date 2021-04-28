$(document).on('turbolinks:load', function () {

    console.log("This is working");

$("#menu").on("click", openMenu);

function openMenu() {

    document.getElementById("dropdown").classList.toggle("active");
 }
})