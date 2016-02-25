# # Wipe the database
# Job.destroy_all
# Let's create a bunch of records
Job.create([
  {
    title: "Web Developer",
    location: "San Francisco, CA",
    description: "Has an opening for a Web Developer in San Francisco, CA. Experience with the development or deployment of Mobile Web and/or Native Applications as enterprise...",
    salary: 90000,
    email: "careers@businessemail.com"
  },
  {
    title: "Front End Developer",
    location: "Menlo Park, CA",
    description: "Front End Developer, Engaging UX Design, Contract-to-hire or Full-time. Collaborates with designers, developers and product owners to implement scalable and...",
    salary: 120000,
    email: "hi@thisbusiness.com"
  },
  {
    title: "Senior Software Engineer",
    location: "Mountain View, CA",
    description: "Model-View-Controller Pattern Web Programming Experience. If you describe yourself as a Software Engineer, and not a web developer, we want to meet you....",
    salary: 100000,
    email: "hr@businessname.com"
  }
])