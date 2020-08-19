const authorization = "Bearer sk_4b8953b344634dc53901ce19a0aa417c";
const form = document.getElementById("clearbitForm");
const user_tag = document.getElementById("userName");
const email_tag = document.getElementById("userEmail");
const blog_tag = document.getElementById("userWeb");
const loc_tag = document.getElementById("userLocation");

// 3. Send an AJAX request to the Clearbit API using fetch
const callClearbitApi = (email) => {
  const url = `https://person.clearbit.com/v1/people/email/${email}`;
  fetch(url, { headers: { Authorization: authorization }})
    .then(response => response.json())
    .then((data) => {
      // 4. Parse the response and display the results
      // Getting the name
      const user_name = data.name.fullName;
      // Displaying it
      user_tag.innerText = user_name

      // Getting the email
      const user_email = data.email;
      // Displaying it
      email_tag.innerText = user_email;

      // Getting the web
      const user_blog = data.github.blog;
      // Displaying it
      blog_tag.innerText = user_blog;

      // Getting the Loc
      const user_loc = data.location;
      // Displaying it
      loc_tag.innerText = user_loc;
    })
}

// 1. Listen to the form

form.addEventListener('submit', () => {
  // 2. Get the input value from the form
  const email = document.getElementById("clearbitEmail").value;
  callClearbitApi(email);
})
