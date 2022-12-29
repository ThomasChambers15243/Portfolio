
// Script to add the class 'show' and 'showAboutMe' to any element with the class 
// 'hidden' or 'hiddenAboutMe' when it appears in the view frame
// Removes the class 'show' and 'showAboutMe' once the element has left the view frame

// Since the animations are only activated on elements with the 'show' and 'showAboutMe' classes,
// added these classes creates an effect of the elements sliding into view

const observer = new IntersectionObserver((entries) => {
     entries.forEach((entry) => {
         console.log(entry.target.className);
        if (entry.isIntersecting) {
          if (entry.target.className == 'hidden'){
               entry.target.classList.add('show'); 
          } else if (entry.target.className == 'hiddenAboutMe'){
               entry.target.classList.add('showAboutMe'); 
          }
        } else {
             entry.target.classList.remove('show');
             entry.target.classList.remove('showAboutMe');
          }
     });
 });
 
 // Gets all elements with 'hidden' or 'hiddenAboutMe' classes and then uses 
 // the method about to add or remove the 'show' and 'showAboutMe' class
 
 const hiddenElements_Project = document.querySelectorAll('.hidden');
 hiddenElements_Project.forEach((el) => observer.observe(el));

 const hiddenElements_AboutMe = document.querySelectorAll('.hiddenAboutMe');
 hiddenElements_AboutMe.forEach((el) => observer.observe(el));