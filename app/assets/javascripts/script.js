/*---- will be used to give navBar the collapse/expand event -----*/
const navBarEvent = () => {
    let toggle = document.getElementById("toggle")
    let navTag = document.getElementById("navTag")
    let navBar = document.getElementById("navbar")
    let navBarContainer = document.getElementById("nav-container")
    
    //toggles the navBar open/close
    const addEvent = () => {
        if (toggle && navTag && navBarContainer && navBar){
            toggle.addEventListener("click", togglenavBar)
        }
    }

    const togglenavBar = () => {
        // otherwise, remove menu icon, add X icon and close menu
        if (navTag.classList.contains("active")){
            navTag.classList.remove("active")
            toggle.querySelector("a").innerHTML = `<i class="fas fa-bars"></i>`
            navTag.classList.add("hideNav")
        } else {
            navTag.classList.add("active")
            toggle.querySelector("a").innerHTML = `<i class="fas fa-times"></i>`

            navTag.classList.remove("hideNav")
            navBarContainer.classList.add("navColumn")
            navBar.classList.add("navColumn")
        }
    }
    return { addEvent }
}

document.addEventListener("turbolinks:load", (e) => {
    navBarEvent().addEvent()

    window.addEventListener("resize", function () {
        if (window.innerWidth > 935){
            navTag.classList.remove("active")
            toggle.querySelector("a").innerHTML = `<i class="fas fa-bars"></i>`
            navTag.classList.add("hideNav")
        }
    });
})
