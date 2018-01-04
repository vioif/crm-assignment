require_relative 'contact'

class CRM

  def initialize(name)
    @name = name

  end

  def main_menu
    while true # repeat indefinitely
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
  end

  def print_main_menu
    puts '[1] Add a new contact'
    puts '[2] Modify an existing contact'
    puts '[3] Delete a contact'
    puts '[4] Display all the contacts'
    puts '[5] Search by attribute'
    puts '[6] Exit'
    puts 'Enter a number: '
  end

  def call_option
    case user_selected
    when 1 then add_new_contact
    when 2 then modify_existing_contact
    when 3 then delete_contact
    when 4 then display_all_contacts
    when 5 then search_by_attribute
    when 6 then exit_program
    # Finish off the rest for 3 through 6
    # To be clear, the methods add_new_contact and modify_existing_contact
    # haven't been implemented yet
    end
  end

  def add_new_contact
    p 'Enter First Name:'
    first_name = gets.chomp

    p 'Enter Last Name:'
    last_name  = gets.chomp

    p 'Enter Email Address:'
    email      = gets,chomp

    p 'Enter a Note: '
    note       = gets.chomp

    contact.create(first_name, last_name, email, note)

    p 'Contact is now added'
  end

  def modify_existing_contact
    p "Which contact would you like to modify?"
    id = gets.to_i

    p "Wat would you like to modify?"
    attribute = gets.chomp

    p "Please enter new information"
    new_info = gets.chomp
  end

  def delete_contact
    p "Which contact would you like to delete"
    id = gets.to_i

    Contact.delete(id)

    p "Your contact is now deleted!"
  end

  def display_all_contacts
    p contact.all
  end

  def search_by_attribute
    p 'Attribute'
    attribute = gets.chomp

    p "What is the #{attribute}?"
    value = gets.chomp

    p Comtact.find_by(attribute,value)
  end

  end


end
