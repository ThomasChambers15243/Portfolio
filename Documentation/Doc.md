
  

# Portfolio Site

  

The website is a portfolio of my professional self. It involves current and prior work, projects and contact details. I took a minimalist approach to the site, using CSS animations to create smooth-flowing pages.

  

  

- Who Am I
  - Detailing who I am, brief of hobbies and some contact links
- Teaching
  - A description of my experience tutoring and teaching.
- Projects
  - A collection of some of my previous projects
- Contact Me
  - A simple contact form if the user wanted direct email communication

  

### Front-End Functionality

  

CSS Grids are used to style and organise the main content of the site. CSS animations are used to slide and fade in sections. The home page does this discreetly, with the main content gently coming into view as you scroll down. A JavaScript function runs to check whether the section has come in or out of the user's view. If it's in, the animations start. Once the content has left the user's view, it hides again, so that the animation will work again without reloading.

  

For the nav bar, rather than repeating the code, a JS function loads in the nav bar from "nav.html". The function is the first element to run in the body tag, placing the nav above every other element in the page.

  

### Back-End Functionality

  

The script, app.js, is used at the backend to check which elements are in the user's view. Its checks whether the element has a certain class. If the class is "hidden" or some substrate there off, it will add the correct "show" class, activating the CSS animation. It works bi-directionally, removing the added class once the element has left the user's view.

  

User's form data in the "Contact me" page is sent using the HTTP POST method to the file ContactMe.php. Here, if the database was connected, the users detials and message are inserted into the ContactMe table.

```
$sqlquery = 'INSERT INTO ContactMe VALUES

($_POST["name"], $_POST["email"], $_POST["message"])'
```

  

### Database Use

  

All content and articles are stored in the main database. There are 3 tables, Content, ContactMe and Projects.

- Content holds content for all the articles within the site, such as who am I and teaching.

- Projects holds the content for the projects page. This is separate from the content table as there as different details unique to the projects.

- ContactMe is used to store user information from the contact form.

<img width="296" alt="DB Tables" src="DB design.jpg">

Currently, the database connection isn't working, so raw html is shown. However, in a live deployment, all html article text, including the projects page,

would be called from the main database. Doing this allows you to easily find any content for anywhere on the page and to edit it in one space.

  

### HCI Analyse

  

HCI (Human-computer interaction) analyse investigates how users interact with the software. I put together a form and gave it out to students, along with the website, for review. From their responses, the main criticisms were the lack of content on the teaching page and cohesion across the site. To fix this, INSERT ABIYOT TEACHING. I also removed the background image from projects to keep inline with the minimalist approach. 

The site also didn't properly scale with different viewport sizes, as was brought up also in the questionnaire. This has been fixed in an effort to ensure accessibility, as seen by a 100% score in the lighthouse reports. Actions taken:
- Viewport, device width and scale are described in a meta tag at the top of every page.
- Images have alt tags for areas with poor internet or to be accessible to screen readers. 
- HTML element has a valid language attribute
- Pages contain headers and landmark regions, allowing keyboard users to navigate the page more efficiently.
- Each page has a title, optimizing the page for search engines, and improving the user experience.

### Performance Analyse

  

Using google's analytical performance tools, I produced a lighthouse analyse for each page.

  

From these and other tools, it was shown that the loading of JavaScript files was delaying the Time to Interactive. TTI is how long the page takes from loading to being able to handle user input efficiently. The scripts caused what's known as a Long Task. Their loading was taking too long and bottlenecking the main thread.

  

One script was a short function, but the other was a third-party script, so optimizing that wasn't an option. The solution was to defer them both at the top of the page. This means that the script will only load once the HTML parsing is completely finished. Therefore, the long task no longer delays the loading and usage of the site.

  

### Security

  

Content Security Policy reduces the risk of Cross Site Scripting and ClickJacking. XSS is when a user stores malicious scripts in data loaded from another source. ClickJacking is when an attacker hides a malicious link under multiple UI layers, tricking the user into clicking the link.

  

Adding a CPS ensures that scripts can only be loaded from certain sources and that the page is loaded in the frame.[CPS](https://content-security-policy.com/)
