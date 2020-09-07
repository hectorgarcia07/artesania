/*---- will be used to give navbar the collapse/expand event -----*/
const navBarEvent = () => {
    let toggle = document.getElementById("toggle")
    let navbar = document.getElementById("navbar")
    
    //toggles the navbar open/close
    const addEvent = () => {
        if(toggle && navbar){
            toggle.addEventListener("click", toggleNavBar)
        }
    }

    const toggleNavBar = () => {
        // otherwise, remove menu icon, add X icon and close menu
        if (navbar.classList.contains("active")) {
            navbar.classList.remove("active")
            toggle.querySelector("a").innerHTML = `<i class="fas fa-bars"></i>`
        } else {
            navbar.classList.add("active")
            toggle.querySelector("a").innerHTML = `<i class="fas fa-times"></i>`
        }
    }

    return { addEvent }
}

document.addEventListener("turbolinks:load", (e) => {
    navBarEvent().addEvent()
})
