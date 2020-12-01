require 'open-uri'

# Drop tables

User.destroy_all
puts "» Users ❌"
Profession.destroy_all
puts "» Professions ❌"
Step.destroy_all
puts "» Steps ❌"
Kasi.destroy_all
puts "» KASIs ❌"
Question.destroy_all
puts "» Questions ❌"


# Create professions

file = URI.open('https://images.unsplash.com/photo-1590402494610-2c378a9114c6?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80')
pm = Profession.create!(track: 'Product Management', short_description: 'CEO of product – building the right product and building the product right')
# pm.image.attach(io: file, filename: "img_p#{pm.id}", content_type: 'image/jpeg')

file = URI.open('https://images.unsplash.com/photo-1554774853-719586f82d77?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80')
sc = Profession.create!(track: 'Strategy Consultant', short_description: 'Advising execs on high-level decisions in an unbiased fashion, using deep industry knowledge for optimal results.')
# sc.image.attach(io: file, filename: "img_p#{sc.id}", content_type: 'image/jpeg')

file = URI.open('https://images.unsplash.com/photo-1569012871812-f38ee64cd54c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
se = Profession.create!(track: 'Software Engineer', short_description: 'Research, design, and develop computer and network software.')
# se.image.attach(io: file, filename: "img_p#{se.id}", content_type: 'image/jpeg')

puts "» #{Profession.count} professions created ✅"

# Create users

file = URI.open('https://images.generated.photos/rQ3NjmDfVvwNFBNJFGBq5U1lc3nWWywi7v8gKzSv7KQ/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zLzAy/NjExNjQuanBn.jpg')
daniel = User.create!(name: 'Daniel', email: 'daniel@example.com', password: '123456', profession: pm)
# daniel.image.attach(io: file, filename: "avatar_u#{daniel.id}", content_type: 'image/jpeg')
puts "» User '#{User.last.name}' created ✅"

file = URI.open('https://uifaces.co/our-content/donated/7k6WOO8Q.png')
louis =User.create!(name: 'Louis', email: 'louis@example.com', password: '123456', profession: pm)
# louis.image.attach(io: file, filename: "avatar_u#{louis.id}", content_type: 'image/jpeg')
puts "» User '#{User.last.name}' created ✅"

file = URI.open('https://images.generated.photos/B7CJLWXHEhr73EmhhiWyTK-WT39VwobNNqwknL-vwUg/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zLzA5/NzY1NDcuanBn.jpg')
charline = User.create!(name: 'Charline', email: 'charline@example.com', password: '123456', profession: sc)
# charline.image.attach(io: file, filename: "avatar_u#{charline.id}", content_type: 'image/jpeg')
puts "» User '#{User.last.name}' created ✅"

file = URI.open('https://images.unsplash.com/photo-1506803682981-6e718a9dd3ee?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=c3a31eeb7efb4d533647e3cad1de9257')
alex = User.create!(name: 'Alex', email: 'alex@example.com', password: '123456', profession: se)
# alex.image.attach(io: file, filename: "avatar_u#{alex.id}", content_type: 'image/jpeg')
puts "» User '#{User.last.name}' created ✅"

# Create KASIs
Kasi.create!(name: "Bachelor's degree", category: 'K', icon: 'fas fa-graduation-cap')
Kasi.create!(name: "Master's degree", category: 'K', icon: 'fas fa-graduation-cap')
Kasi.create!(name: "Certification", category: 'K', icon: 'fas fa-certificate')
Kasi.create!(name: "Domain knowledge", category: 'K', icon: 'fas fa-toolbox')
math = Kasi.create!(name: "Math and Science", category: 'K', icon: 'fas fa-calculator')
Kasi.create!(name: "Engineering and Technology", category: 'K', icon: 'fas fa-cogs')
Kasi.create!(name: "Business", category: 'K', icon: 'fas fa-briefcase')
Kasi.create!(name: "Psychology", category: 'K', icon: 'fas fa-brain')
handy = Kasi.create!(name: "Hands-on experience", category: 'K', icon: 'fas fa-tools')
Kasi.create!(name: "Lean methodologies", category: 'K', icon: 'fas fa-leaf')

Kasi.create!(name: "Strategic thinking", category: 'S', icon: 'fas fa-chess')
Kasi.create!(name: "Business mindset", category: 'S', icon: 'fas fa-chart-bar')
Kasi.create!(name: "Clear communication", category: 'S', icon: 'fas fa-comment')
sales = Kasi.create!(name: "Sales", category: 'S', icon: 'fas fa-comments-dollar')
Kasi.create!(name: "Marketing", category: 'S', icon: 'fas fa-bullhorn')
Kasi.create!(name: "English", category: 'S', icon: 'fas fa-language')
Kasi.create!(name: "Programming language", category: 'S', icon: 'fas fa-code')
Kasi.create!(name: "Data structures", category: 'S', icon: 'fas fa-database')
Kasi.create!(name: "Version control", category: 'S', icon: 'fas fa-git')
Kasi.create!(name: "Problem Solving", category: 'S', icon: 'fas fa-wave-square')
Kasi.create!(name: "Operating Systems", category: 'S', icon: 'fas fa-laptop')
Kasi.create!(name: "Active Listening", category: 'S', icon: 'fas fa-assistive-listening-systems')
Kasi.create!(name: "Project management", category: 'S', icon: 'fas fa-tasks')
Kasi.create!(name: "Written comprehension", category: 'S', icon: 'fas fa-book')

leader = Kasi.create!(name: "Leadership", category: 'A', icon: 'fas fa-hand-point-up')
at = Kasi.create!(name: "Analytical thinking", category: 'A', icon: 'fas fa-brain')
amb = Kasi.create!(name: "Ambition", category: 'A', icon: 'fas fa-bullseye')
creativity = Kasi.create!(name: "Creativity", category: 'A', icon: 'fas fa-drafting-compass')
Kasi.create!(name: "Team orientation", category: 'A', icon: 'fas fa-users')
gen = Kasi.create!(name: "Generalist", category: 'A', icon: 'fas fa-mountain')
spec = Kasi.create!(name: "Specialist", category: 'A', icon: 'fas fa-search')
detail = Kasi.create!(name: "Attention to detail", category: 'A', icon: 'fas fa-asterisk')
Kasi.create!(name: "Time management", category: 'A', icon: 'fas fa-clock')
stress = Kasi.create!(name: "Stress resistance", category: 'A', icon: 'fas fa-fist-raised')
Kasi.create!(name: "Comfortable with complexity", category: 'A', icon: 'fas fa-buffer')
entre = Kasi.create!(name: "Entrepreneurial", category: 'A', icon: 'fas fa-binoculars')
crit = Kasi.create!(name: "Critical thinking", category: 'A', icon: 'fas fa-atom')
reasoning = Kasi.create!(name: "Inductive reasoning", category: 'A', icon: 'fas fa-atom')

Kasi.create!(name: "Analytical thinking", category: 'I', icon: 'fas fa-diagnoses')
Kasi.create!(name: "Integrity", category: 'I', icon: 'fas fa-angelist')
flex = Kasi.create!(name: "Flexibility", category: 'I', icon: 'fas fa-align-center')
Kasi.create!(name: "Initiative", category: 'I', icon: 'fas fa-signal')
Kasi.create!(name: "Cooperation", category: 'I', icon: 'fas fa-users')
Kasi.create!(name: "Dependability", category: 'I', icon: 'fas fa-check-double')
authority = Kasi.create!(name: "Authority", category: 'I', icon: 'fas fa-hand-point-up')
comm = Kasi.create!(name: "Communication", category: 'I', icon: 'fas fa-comments')
orga = Kasi.create!(name: "Organization", category: 'I', icon: 'fas fa-sitemap')
Kasi.create!(name: "Problem-solving", category: 'I', icon: 'fas fa-lightbulb')
frame = Kasi.create!(name: "Frameworks and methodologies", category: 'I', icon: 'fas fa-toolbox')
cust = Kasi.create!(name: "Customer-orientation", category: 'I', icon: 'fas fa-user-circle')
tech = Kasi.create!(name: "Information technology", category: 'I', icon: 'fas fa-laptop-code')
Kasi.create!(name: "Curiosity", category: 'I', icon: 'fas fa-braille')
Kasi.create!(name: "Research", category: 'I', icon: 'fas fa-researchgate')
logic = Kasi.create!(name: "Logic", category: 'I', icon: 'fas fa-not-equal')
Kasi.create!(name: "Integrity", category: 'I', icon: 'fas fa-user-shield')
investig = Kasi.create!(name: "Investigative", category: 'I', icon: 'fas fa-user-secret')
Kasi.create!(name: "Procedure and routine", category: 'I', icon: 'fas fa-project-diagram')

puts "» #{Kasi.count} KASIs created ✅"

# Category.create!(name: 'knowledge area')

# Create user kasis
# UserKasi.create!(user: , kasi: )

# Create questions
q1 = Question.create!(text: "What sounds more appealing to you?")
q2 = Question.create!(text: "What sounds more appealing to you?")
q3 = Question.create!(text: "Do you prefer to work in a creative or in a more analytical way?")
q4 = Question.create!(text: "Do you prefer specialisation in a certain area or to be more of a generalist?")
q5 = Question.create!(text: "Would you call yourself an Entrepreneurial or more of an Investigative thinker?")
q6 = Question.create!(text: "What sounds more appealing to you?")
q7 = Question.create!(text: "Are you thinking/planning things through or rather deal with problems when they come up?")
q8 = Question.create!(text: "Do you like working on one main task/product at a time or do you want to experience diversity in your worklife?")
q9 = Question.create!(text: "Please indicate your <strong>preference</strong>?")
q10 = Question.create!(text: "What sounds more interesting to you?")
q11 = Question.create!(text: "Do you want to show up or show off regarding your future Job?")

puts "» #{Question.count} questions created ✅"

# Create answers

Answer.create!(text: "Sales and communication", question: q1, kasi: sales)
Answer.create!(text: "Maths and logic", question: q1, kasi: logic)
Answer.create!(text: "Leadership", question: q2, kasi: authority)
Answer.create!(text: "IT Affinity", question: q2, kasi: tech)
Answer.create!(text: "Creativity", question: q3, kasi: creativity)
Answer.create!(text: "Convention and analysis", question: q3, kasi: at)
Answer.create!(text: "Generalist", question: q4, kasi: gen)
Answer.create!(text: "Specialist", question: q4, kasi: spec)
Answer.create!(text: "Entrepreneurial", question: q5, kasi: entre)
Answer.create!(text: "Investigative", question: q5, kasi: investig)
Answer.create!(text: "Hands-on creating", question: q6, kasi: handy)
Answer.create!(text: "Conceptualizing and advising", question: q6, kasi: reasoning)
Answer.create!(text: "Organizing", question: q7, kasi: orga)
Answer.create!(text: "Fast-pace", question: q7, kasi: stress)
Answer.create!(text: "Diversity", question: q8, kasi: flex)
Answer.create!(text: "Product-driven", question: q8, kasi: cust)
Answer.create!(text: "Frameworks and methodologies", question: q9, kasi: frame)
Answer.create!(text: "Zooming in on the details", question: q9, kasi: detail)
Answer.create!(text: "Living out of a suitcase", question: q10, kasi: flex)
Answer.create!(text: "Spending hours on finding tiny errors", question: q10, kasi: detail)
Answer.create!(text: "Work-life balance", question: q11, kasi: stress)
Answer.create!(text: "Prestige", question: q11, kasi: amb)

puts "» #{Answer.count} answers created ✅"

# Create user_answers

# Create steps
coder = Step.create!(name: "Coding proficiency", order: 0, profession: se, resource_url: 'https://www.lewagon.com')
coder2 = Step.create!(name: "Coding proficiency", order: 0, profession: pm, resource_url: 'https://www.lewagon.com')
Step.create!(name: "Analytical thinking capability", order: 0, profession: pm)
Step.create!(name: "Certification", order: 0, profession: pm)
Step.create!(name: "Customer service", order: 1, profession: pm)
Step.create!(name: "Business development manager", order: 1, profession: pm)
Step.create!(name: "Program manager", order: 1, profession: pm)
Step.create!(name: "Marketing manager", order: 1, profession: pm)
Step.create!(name: "Project manager", order: 1, profession: pm)
Step.create!(name: "Engineer", order: 1, profession: pm)
Step.create!(name: "Associate product manager", order: 2, profession: pm)
Step.create!(name: "Product manager", order: 3, profession: pm)
Step.create!(name: "Director of product management", order: 4, profession: pm)
Step.create!(name: "Senior product manager", order: 4, profession: pm)
Step.create!(name: "VP of PM", order: 5, profession: pm)
Step.create!(name: "Chief product officer", order: 6, profession: pm)

puts "» Steps for PM track created ✅"

coder3 = Step.create!(name: "Internship", order: 1, profession: se)
Step.create!(name: "Software engineer trainee", order: 2, profession: se)
Step.create!(name: "Software engineer I", order: 3, profession: se)
Step.create!(name: "Software engineer II", order: 4, profession: se)
Step.create!(name: "Senior software engineer I", order: 5, profession: se)
Step.create!(name: "Software engineer II", order: 6, profession: se)
Step.create!(name: "Principal software Engineer", order: 7, profession: se)
# Step.create!(name: "Technical team lead", order: 7, profession: se)
# Step.create!(name: "Software engineering manager", order: 8, profession: se) # dependency missing, only one track possible

puts "» Steps for SE track created ✅"

ba = Step.create!(name: "Business analyst", order: 1, profession: sc)
Step.create!(name: "Junior consultant", order: 2, profession: sc)
Step.create!(name: "Senior consultant", order: 3, profession: sc)
Step.create!(name: "Manager", order: 4, profession: sc)
Step.create!(name: "Principle", order: 5, profession: sc)
Step.create!(name: "Partner", order: 6, profession: sc)

puts "» Steps for SC track created ✅"

# Create user_completed_steps
UserCompletedStep.create!(user: daniel, step: coder)
UserCompletedStep.create!(user: daniel, step: coder2)
UserCompletedStep.create!(user: daniel, step: coder3)
UserCompletedStep.create!(user: daniel, step: ba)

puts "» Had user #{daniel.name} complete #{UserCompletedStep.where(user: daniel).count} steps  ✅"



