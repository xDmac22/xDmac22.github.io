document.getElementById('f-fname').addEventListener('blur', validateFname);
document.getElementById('f-lname').addEventListener('blur', validateLname);
document.getElementById('f-email').addEventListener('blur', validateEmail);
document.getElementById('f-zip').addEventListener('blur', validateZip);
document.getElementById('f-pnumber').addEventListener('blur', validatePnumber);
document.getElementById('f-message').addEventListener('blur', validateMessage);
document.getElementById('f-btn').addEventListener('click', (e) => {
  validateFname();
  validateLname();
  validateEmail();
  validatePnumber();
  validateZip();
  validateMessage();
  e.preventDefault();
});

function validateFname() {
  const fname = document.getElementById('f-fname');
  const re = /^[a-zA-Z]{2,15}$/;

  if(!re.test(fname.value)) {
    fname.classList.add('is-invalid');
  }else {
    fname.classList.remove('is-invalid')
  }
}

function validateLname() {
  const lname = document.getElementById('f-lname');
  const re = /^[a-zA-Z]{2,10}$/;

  if(!re.test(lname.value)) {
    lname.classList.add('is-invalid');
  }else {
    lname.classList.remove('is-invalid')
  }
}

function validateZip() {
  const zip = document.getElementById('f-zip');
  const re = /^[0-9]{4}$/;

  if(!re.test(zip.value)) {
    zip.classList.add('is-invalid');
  }else {
    zip.classList.remove('is-invalid')
  }
}

function validateEmail() {
  const email = document.getElementById('f-email');
  const re = /^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,3})$/;

  if(!re.test(email.value)) {
    email.classList.add('is-invalid');
  }else {
    email.classList.remove('is-invalid')
  }
}

function validatePnumber() {
  const pnumber = document.getElementById('f-pnumber');
  const re = /^[0-9]{10}$/;

  if(!re.test(pnumber.value)) {
    pnumber.classList.add('is-invalid');
  }else {
    pnumber.classList.remove('is-invalid')
  }
}

function validateMessage() {
  const message = document.getElementById('f-message');
  const re = /^[a-zA-Z0-9]{5,2000}$/;

  if(!re.test(message.value)) {
    message.classList.add('is-invalid');
  }else {
    message.classList.remove('is-invalid')
  }
}
