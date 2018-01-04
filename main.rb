require_relative 'contact'

p pauline = Contact.create('Pauline', 'Bos', '416-123-4567', 'paulinebos@gmail.com')
p peter = Contact.create('Peter', 'Bos', '416-234-5678', 'peterbos@gmail.com')
p matt = Contact.create('Matt', 'Bos', '416-345-6789', 'mattbos@gmail.com', 'Matt from work')
p jayme = Contact.create('Jayme', 'Brown', '416-124-4567', 'jaymebrown@gmail.com', 'Dog Walker')

p Contact.all

p matt
p jayme
p pauline
p peter

p peter.update('notes', "Firefighter")
 
