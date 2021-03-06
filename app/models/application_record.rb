class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  # 判断一个属性是否可行
  # 参考： https://github.com/KevinBongart/valid_attribute/blob/master/lib/valid_attribute.rb
  def valid_attribute?(*attributes)
    errors.clear

    attributes.flatten!
    attributes = attributes.first if attributes.first.is_a?(Hash)

    attributes.each do |attribute, validator_types|
      validators = self.class.validators_on(attribute)

      if validator_types.present?
        validator_types = Array(validator_types)
        validators.select! { |validator| validator.kind.in?(validator_types) }
      end

      validators.each { |validator| validator.validate(self) }
    end

    errors.empty?
  end
end
