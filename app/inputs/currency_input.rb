class CurrencyInput < SimpleForm::Inputs::Base
  def input
    "#{@builder.text_field(attribute_name, input_html_options)}<label for='login-name' class='login-field-icon fui-user'></label> ".html_safe
  end
end