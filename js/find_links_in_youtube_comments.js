$(document).ready(() => {
    let comments = document.getElementsByClassName("style-scope yt-formatted-string");
    for (comment in comments) {
        let commentText = comment.innerHTML;
        if (isValidUrl(commentText)) {
            console.log("Found: " + commentText);
            if (commentText.includes("vk.com")) {
                echo ("Found vk-link: " + commentText);
            }
        }
    }
});

function isValidUrl(string) {
    let result = string.match("/(http(s)?:\/\/.)?(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)/g");
    return result !== null;
}

//function classesMatch(domElem) {
//    if (domElem.classList.contains())
//}

let spans = document.getElementsByTagName("span");
for (span in spans) {
    //span.classList;
    //console.log(span);
    for (cl in span.classList) {
        if (cl == "style-scope" || cl == "yt-formatted-string") {
            console.log(span);
        }
    }
}