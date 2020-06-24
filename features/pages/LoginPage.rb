class LoginPage < SitePrism::Page

    element :email_field, '#login-form-email'
    element :password_field, '#login-form-password'
    element :sign_in_button , '.medium-size-button'
    element :forgot_password, '.forgot-password-wrapper'

    def make_sign_in(email, password)
        self.email_field.set email
        self.password_field.set password
        self.sign_in_button.click
    end

end
