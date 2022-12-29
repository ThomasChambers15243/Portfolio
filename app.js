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
 
 const hiddenElements_Project = document.querySelectorAll('.hidden');
 hiddenElements_Project.forEach((el) => observer.observe(el));

 const hiddenElements_AboutMe = document.querySelectorAll('.hiddenAboutMe');
 hiddenElements_AboutMe.forEach((el) => observer.observe(el));