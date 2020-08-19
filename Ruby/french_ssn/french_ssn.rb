require 'date'
require 'yaml'

# CHALLENGE SPECS
  # Write a #french_ssn_info method extracting infos from French SSN (Social Security Number) using RegExp.

# WHAT DO WE GOT FROM THE SPECS?
  # INPUT: STRING
  # OUTPUT: STRING
  # RULES:
    # Gender (1 == man, 2 == woman)
    # Year of birth (84)
    # Month of birth (12)
    # Department of birth (76, basically included between 01 and 99)
    # 6 random digits (451 089)
    # A 2 digits key (46, equal to the remainder of the division of (97 - ssn_without_key) by 97.)

SSN_PATTERN = /^(?<gender>[12])\s?(?<year>\d{2})\s?(?<month>0[1-9]|1[0-2])\s?(?<zip>\d{2}|2[AB])\s?(\d{3})\s?(\d{3})\s?(?<key>\d{2})$/

def french_ssn_info(ssn)
  # Extract the information from the SSN and store it into a hash
  match_data = ssn.match(SSN_PATTERN)

  # Check if the hash exists and if it has a valid key
  if match_data && valid_key?(ssn, match_data[:key])

    # Store every value in the correct format in a variable
    gender = gender(match_data[:gender])
    month = month(match_data[:month])
    year = "19#{match_data[:year]}"
    department = department(match_data[:zip])

    # Return the result string in the desired format
    return "a #{gender}, born in #{month}, #{year} in #{department}."
  else
    # Return the corresponding message if the number is invalid or empty
    return "The number is invalid"
  end
end

# Function to transform the gender from "1" to the proper string ("man")
def gender(code)
  return code == "1" ? "man" : "woman"
end

# Function to transform the month from "03" to the proper string ("march")
def month(code)
  # We use the helper method from 'date' to give us the month name as a string
  return Date::MONTHNAMES[code.to_i]
end

# Function to transform the department from "76" to the proper string ("Seine-Maritime")
def department(code)
  # We use the helper method from 'YAML' to load the file and return a hash, then we access the name of the code with the key of that hash
  return YAML.load_file('data/french_departments.yml')[code]
end

# Function to validate that the key of the SSN satisfies the rules
def valid_key?(ssn, key)
  return (97 - ssn.delete(' ')[0..12].to_i) % 97 == key.to_i
end

