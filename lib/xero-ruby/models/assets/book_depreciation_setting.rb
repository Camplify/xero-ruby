=begin
#Xero Assets API

#This is the Xero Assets API

The version of the OpenAPI document: 2.1.3
Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'time'
require 'date'

module XeroRuby::Assets
  class BookDepreciationSetting
    # The method of depreciation applied to this asset. See Depreciation Methods
    attr_accessor :depreciation_method

    # The method of averaging applied to this asset. See Averaging Methods
    attr_accessor :averaging_method

    # The rate of depreciation (e.g. 0.05)
    attr_accessor :depreciation_rate

    # Effective life of the asset in years (e.g. 5)
    attr_accessor :effective_life_years

    # See Depreciation Calculation Methods
    attr_accessor :depreciation_calculation_method

    # Unique Xero identifier for the depreciable object
    attr_accessor :depreciable_object_id

    # The type of asset object
    attr_accessor :depreciable_object_type

    # Unique Xero identifier for the effective date change
    attr_accessor :book_effective_date_of_change_id

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'depreciation_method' => :'depreciationMethod',
        :'averaging_method' => :'averagingMethod',
        :'depreciation_rate' => :'depreciationRate',
        :'effective_life_years' => :'effectiveLifeYears',
        :'depreciation_calculation_method' => :'depreciationCalculationMethod',
        :'depreciable_object_id' => :'depreciableObjectId',
        :'depreciable_object_type' => :'depreciableObjectType',
        :'book_effective_date_of_change_id' => :'bookEffectiveDateOfChangeId'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'depreciation_method' => :'String',
        :'averaging_method' => :'String',
        :'depreciation_rate' => :'Float',
        :'effective_life_years' => :'Integer',
        :'depreciation_calculation_method' => :'String',
        :'depreciable_object_id' => :'String',
        :'depreciable_object_type' => :'String',
        :'book_effective_date_of_change_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::Assets::BookDepreciationSetting` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::Assets::BookDepreciationSetting`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'depreciation_method')
        self.depreciation_method = attributes[:'depreciation_method']
      end

      if attributes.key?(:'averaging_method')
        self.averaging_method = attributes[:'averaging_method']
      end

      if attributes.key?(:'depreciation_rate')
        self.depreciation_rate = attributes[:'depreciation_rate']
      end

      if attributes.key?(:'effective_life_years')
        self.effective_life_years = attributes[:'effective_life_years']
      end

      if attributes.key?(:'depreciation_calculation_method')
        self.depreciation_calculation_method = attributes[:'depreciation_calculation_method']
      end

      if attributes.key?(:'depreciable_object_id')
        self.depreciable_object_id = attributes[:'depreciable_object_id']
      end

      if attributes.key?(:'depreciable_object_type')
        self.depreciable_object_type = attributes[:'depreciable_object_type']
      end

      if attributes.key?(:'book_effective_date_of_change_id')
        self.book_effective_date_of_change_id = attributes[:'book_effective_date_of_change_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      depreciation_method_validator = EnumAttributeValidator.new('String', ["NoDepreciation", "StraightLine", "DiminishingValue100", "DiminishingValue150", "DiminishingValue200", "FullDepreciation"])
      return false unless depreciation_method_validator.valid?(@depreciation_method)
      averaging_method_validator = EnumAttributeValidator.new('String', ["FullMonth", "ActualDays"])
      return false unless averaging_method_validator.valid?(@averaging_method)
      depreciation_calculation_method_validator = EnumAttributeValidator.new('String', ["Rate", "Life", "None"])
      return false unless depreciation_calculation_method_validator.valid?(@depreciation_calculation_method)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] depreciation_method Object to be assigned
    def depreciation_method=(depreciation_method)
      validator = EnumAttributeValidator.new('String', ["NoDepreciation", "StraightLine", "DiminishingValue100", "DiminishingValue150", "DiminishingValue200", "FullDepreciation"])
      unless validator.valid?(depreciation_method)
        fail ArgumentError, "invalid value for \"depreciation_method\", must be one of #{validator.allowable_values}."
      end
      @depreciation_method = depreciation_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] averaging_method Object to be assigned
    def averaging_method=(averaging_method)
      validator = EnumAttributeValidator.new('String', ["FullMonth", "ActualDays"])
      unless validator.valid?(averaging_method)
        fail ArgumentError, "invalid value for \"averaging_method\", must be one of #{validator.allowable_values}."
      end
      @averaging_method = averaging_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] depreciation_calculation_method Object to be assigned
    def depreciation_calculation_method=(depreciation_calculation_method)
      validator = EnumAttributeValidator.new('String', ["Rate", "Life", "None"])
      unless validator.valid?(depreciation_calculation_method)
        fail ArgumentError, "invalid value for \"depreciation_calculation_method\", must be one of #{validator.allowable_values}."
      end
      @depreciation_calculation_method = depreciation_calculation_method
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          depreciation_method == o.depreciation_method &&
          averaging_method == o.averaging_method &&
          depreciation_rate == o.depreciation_rate &&
          effective_life_years == o.effective_life_years &&
          depreciation_calculation_method == o.depreciation_calculation_method &&
          depreciable_object_id == o.depreciable_object_id &&
          depreciable_object_type == o.depreciable_object_type &&
          book_effective_date_of_change_id == o.book_effective_date_of_change_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [depreciation_method, averaging_method, depreciation_rate, effective_life_years, depreciation_calculation_method, depreciable_object_id, depreciable_object_type, book_effective_date_of_change_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(parse_date(value))
      when :Date
        Date.parse(parse_date(value))
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        XeroRuby::Assets.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

    # customized data_parser
    def parse_date(datestring)
      seconds_since_epoch = datestring.scan(/[0-9]+/)[0].to_i / 1000.0
      return Time.at(seconds_since_epoch).to_s
    end
  end
end
