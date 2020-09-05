let toggle = document.getElementById("toggle")
const navbar = document.getElementById("navbar")

/* Opens and Closes the navbar */
function toggleNavbar() {
    if (navbar.classList.contains("active")) {
        navbar.classList.remove("active");

        // adds the menu (hamburger) icon
        toggle.querySelector("a").innerHTML = "<i class=’fas fa-bars’></i>";
    } else {
        navbar.classList.add("active");

        // adds the close (x) icon
        toggle.querySelector("a").innerHTML = "<i class=’fas fa-times’></i>";
    }
}

/* Event Listener */
toggle.addEventListener("click", toggleNavbar, false);