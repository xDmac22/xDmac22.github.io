const aboutMe = document.getElementById('nav-aboutme');
const aboutSection = document.querySelector('.about');
const skills = document.getElementById('nav-skills');
const skillsSection = document.querySelector('.skills');
const projects = document.getElementById('nav-projects');
const projectsSection = document.querySelector('.projects');
const contacts = document.getElementById('nav-contacts');
const contactsSection = document.querySelector('.contacts');
const contactBtn = document.getElementById('btn-contacts');

aboutMe.addEventListener('click', (e) => {
  aboutSection.scrollIntoView({
    behavior: "smooth",
    block: "start",
    inline: "start"
  });
  e.preventDefault();
})

skills.addEventListener('click', (e) => {
  skillsSection.scrollIntoView({
    behavior: "smooth",
    block: "start",
    inline: "start"
  });
  e.preventDefault();
})

projects.addEventListener('click', (e) => {
  projectsSection.scrollIntoView({
    behavior: "smooth",
    block: "center",
    inline: "start"
  });
  e.preventDefault();
})

contacts.addEventListener('click', (e) => {
  contactsSection.scrollIntoView({
    behavior: "smooth",
    block: "center",
    inline: "start"
  });
  e.preventDefault();
})

contactBtn.addEventListener('click', (e) => {
  contactsSection.scrollIntoView({
    behavior: "smooth",
    block: "center",
    inline: "start"
  });
  e.preventDefault();
})