class PasswordListProcessor
    def initialize(passwords)
      @passwords = passwords
    end
  
    def validate_passwords
      valid_passwords = @passwords.select { |pass| PasswordValidator.new(pass).valid? }
      valid_passwords.length
    end
  end
  
  class PasswordValidator
    def initialize(password)
      @pass = password
    end
  
    def length_rule
      @pass.length > 4
    end
  
    def order_rule
      @pass.chars.sort.join == @pass
    end
  
    def repetition_rule
      repeated_chars = @pass.chars.each_cons(2).any? { |a, b| a == b }
      repeated_chars
    end
  
    def valid?
      length_rule && order_rule && !repetition_rule
    end
  end
  