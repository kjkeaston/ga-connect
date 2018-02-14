
User.destroy_all
# User.create(name: "John", role: "Engineer", skills: "HTML, CSS, Javascript, React, Express", portfolio: "https://www.google.com", linkedin: "https://www.linkedin.com", email: "john@email.com", photo: "https://www.sparklabs.com/forum/styles/comboot/theme/images/default_avatar.jpg")


def random_role
  ["WDI", "UXDI", "DSI", "iOS"].sample
end

# Users
users_data = []
10.times do
  first = FFaker::Name.first_name
  last = FFaker::Name.last_name
  users_data << {
    first_name: first,
    last_name: last,
    role: random_role,
    skills: "HTML, CSS, Javascript, Bootstrap, Zeplin, Jira, Invision, Adobe Suite, Node.js, Express, Sketch, React, Python",
    portfolio: "https://github.com/",
    linkedin: "https://www.linkedin.com",
    email: "#{first[0]}_#{last}@example.com".downcase,
    photo: "https://www.sparklabs.com/forum/styles/comboot/theme/images/default_avatar.jpg"
  }
end

users = User.create(users_data)
