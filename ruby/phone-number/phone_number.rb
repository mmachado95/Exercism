class PhoneNumber
  def self.clean(phone_number)
    # Removes non-numeric characters and valid international number
    clean_phone_number = phone_number.delete("^[0-9]")
    if clean_phone_number.length > 10 && clean_phone_number[0] == "1"
      clean_phone_number[0] = ""
    end


    return nil if clean_phone_number.length != 10
    return nil unless area_code_is_valid(clean_phone_number)
    return nil unless local_number_is_valid(clean_phone_number)
    clean_phone_number
  end

  def self.area_code_is_valid(phone_number)
    area_code = phone_number[0..2]

    return false unless area_code.match(/[2-9][1-9]{2}/)
    true
  end

  def self.local_number_is_valid(phone_number)
    local_number = phone_number[3..]

    return false unless local_number.match(/[2-9][0-9]{6}/)
    true
  end
end