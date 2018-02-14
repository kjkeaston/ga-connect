
User.destroy_all
# User.create(name: "John", role: "Engineer", skills: "HTML, CSS, Javascript, React, Express", portfolio: "https://www.google.com", linkedin: "https://www.linkedin.com", email: "john@email.com", photo: "https://www.sparklabs.com/forum/styles/comboot/theme/images/default_avatar.jpg")


def random_role
  ["WDI", "UXDI", "DSI", "iOS"].sample
end

def get_skills(role)
  skills = {
    WDI: ["HTML", "CSS", "Javascript","Node.js", "Express"],
    UXDI: ["Adobe Suite", "Sketch", "Zeplin", "Invision"],
    DSI: ["Python", "Modeling", "Calculus", "SQL"],
    iOS: ["Xcode", "Swift", "Javascript", "React"]
  }
  return skills[role]
end

# Users
users_data = []
10.times do
  first = FFaker::Name.first_name
  last = FFaker::Name.last_name
  role_assigned = random_role
  users_data << {
    first_name: first,
    last_name: last,
    role: role_assigned,
    skills: get_skills(role_assigned.to_sym),
    portfolio: "https://github.com/",
    linkedin: "https://www.linkedin.com",
    email: "#{first[0]}_#{last}@example.com".downcase,
    photo: "https://www.sparklabs.com/forum/styles/comboot/theme/images/default_avatar.jpg"
  }
end

users = User.create(users_data)
