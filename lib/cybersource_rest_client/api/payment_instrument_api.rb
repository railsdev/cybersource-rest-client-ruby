=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'uri'

module CyberSource
  class PaymentInstrumentApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
	  @api_client.set_configuration(config)
    end
    # Create a Payment Instrument
    # @param profile_id The id of a profile containing user specific TMS configuration.
    # @param v_c_merchant_id CyberSource merchant id.
    # @param v_c_correlation_id The mandatory correlation id passed by upstream (calling) system.
    # @param create_payment_instrument_request Specify the customer&#39;s payment details for card or bank account.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :client_application Client application name
    # @return [TmsV1PaymentinstrumentsPatch200Response]
    def create_payment_instrument(profile_id, v_c_merchant_id, v_c_correlation_id, create_payment_instrument_request, opts = {})
      data, status_code, headers = create_payment_instrument_with_http_info(profile_id, v_c_merchant_id, v_c_correlation_id, create_payment_instrument_request, opts)
      return data, status_code, headers
    end

    # Create a Payment Instrument
    # @param profile_id The id of a profile containing user specific TMS configuration.
    # @param v_c_merchant_id CyberSource merchant id.
    # @param v_c_correlation_id The mandatory correlation id passed by upstream (calling) system.
    # @param create_payment_instrument_request Specify the customer&#39;s payment details for card or bank account.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :client_application Client application name
    # @return [Array<(TmsV1PaymentinstrumentsPatch200Response, Fixnum, Hash)>] TmsV1PaymentinstrumentsPatch200Response data, response status code and response headers
    def create_payment_instrument_with_http_info(profile_id, v_c_merchant_id, v_c_correlation_id, create_payment_instrument_request, opts = {})
      
	  if @api_client.config.debugging
	  	begin
			raise
				@api_client.config.logger.debug 'Calling API: PaymentInstrumentApi.create_payment_instrument ...'
			rescue
				puts 'Cannot write to log'
			end
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling PaymentInstrumentApi.create_payment_instrument"
      end
      if @api_client.config.client_side_validation && profile_id.to_s.length > 36
        fail ArgumentError, 'invalid value for "profile_id" when calling PaymentInstrumentApi.create_payment_instrument, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && profile_id.to_s.length < 36
        fail ArgumentError, 'invalid value for "profile_id" when calling PaymentInstrumentApi.create_payment_instrument, the character length must be great than or equal to 36.'
      end

      # verify the required parameter 'v_c_merchant_id' is set
      if @api_client.config.client_side_validation && v_c_merchant_id.nil?
        fail ArgumentError, "Missing the required parameter 'v_c_merchant_id' when calling PaymentInstrumentApi.create_payment_instrument"
      end
      if @api_client.config.client_side_validation && v_c_merchant_id.to_s.length > 32
        fail ArgumentError, 'invalid value for "v_c_merchant_id" when calling PaymentInstrumentApi.create_payment_instrument, the character length must be smaller than or equal to 32.'
      end

      if @api_client.config.client_side_validation && v_c_merchant_id.to_s.length < 5
        fail ArgumentError, 'invalid value for "v_c_merchant_id" when calling PaymentInstrumentApi.create_payment_instrument, the character length must be great than or equal to 5.'
      end

      # verify the required parameter 'v_c_correlation_id' is set
      if @api_client.config.client_side_validation && v_c_correlation_id.nil?
        fail ArgumentError, "Missing the required parameter 'v_c_correlation_id' when calling PaymentInstrumentApi.create_payment_instrument"
      end
      if @api_client.config.client_side_validation && v_c_correlation_id.to_s.length > 36
        fail ArgumentError, 'invalid value for "v_c_correlation_id" when calling PaymentInstrumentApi.create_payment_instrument, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && v_c_correlation_id.to_s.length < 36
        fail ArgumentError, 'invalid value for "v_c_correlation_id" when calling PaymentInstrumentApi.create_payment_instrument, the character length must be great than or equal to 36.'
      end

      # verify the required parameter 'create_payment_instrument_request' is set
      if @api_client.config.client_side_validation && create_payment_instrument_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_payment_instrument_request' when calling PaymentInstrumentApi.create_payment_instrument"
      end
      if @api_client.config.client_side_validation && !opts[:'client_application'].nil? && opts[:'client_application'].to_s.length > 30
        fail ArgumentError, 'invalid value for "opts[:"client_application"]" when calling PaymentInstrumentApi.create_payment_instrument, the character length must be smaller than or equal to 30.'
      end

      if @api_client.config.client_side_validation && !opts[:'client_application'].nil? && opts[:'client_application'].to_s.length < 3
        fail ArgumentError, 'invalid value for "opts[:"client_application"]" when calling PaymentInstrumentApi.create_payment_instrument, the character length must be great than or equal to 3.'
      end

      #if @api_client.config.client_side_validation && !opts[:'client_application'].nil? && opts[:'client_application'] !~ Regexp.new(/^[a-zA-Z0-9\\\\-_]{3,30}|$/)
        #fail ArgumentError, "invalid value for 'opts[:\"client_application\"]' when calling PaymentInstrumentApi.create_payment_instrument, must conform to the pattern /^[a-zA-Z0-9\\\\-_]{3,30}|$/."
      #end

      # resource path
      local_var_path = 'tms/v1/paymentinstruments'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['*/*'])
      header_params[:'profile-id'] = profile_id
      header_params[:'v-c-merchant-id'] = v_c_merchant_id
      header_params[:'v-c-correlation-id'] = v_c_correlation_id
      header_params[:'Client-Application'] = opts[:'client_application'] if !opts[:'client_application'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(create_payment_instrument_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TmsV1PaymentinstrumentsPatch200Response')
      if @api_client.config.debugging
		begin
		raise
			@api_client.config.logger.debug "API called: PaymentInstrumentApi#create_payment_instrument\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
		rescue
			puts 'Cannot write to log'
		end
	  end
      return data, status_code, headers
    end
    # Delete a Payment Instrument
    # @param profile_id The id of a profile containing user specific TMS configuration.
    # @param v_c_merchant_id CyberSource merchant id.
    # @param v_c_correlation_id The mandatory correlation id passed by upstream (calling) system.
    # @param token_id The TokenId of a Payment Instrument.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :client_application Client application name
    # @return [nil]
    def delete_payment_instrument(profile_id, v_c_merchant_id, v_c_correlation_id, token_id, opts = {})
      data, status_code, headers = delete_payment_instrument_with_http_info(profile_id, v_c_merchant_id, v_c_correlation_id, token_id, opts)
      return data, status_code, headers
    end

    # Delete a Payment Instrument
    # @param profile_id The id of a profile containing user specific TMS configuration.
    # @param v_c_merchant_id CyberSource merchant id.
    # @param v_c_correlation_id The mandatory correlation id passed by upstream (calling) system.
    # @param token_id The TokenId of a Payment Instrument.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :client_application Client application name
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_payment_instrument_with_http_info(profile_id, v_c_merchant_id, v_c_correlation_id, token_id, opts = {})
      
	  if @api_client.config.debugging
	  	begin
			raise
				@api_client.config.logger.debug 'Calling API: PaymentInstrumentApi.delete_payment_instrument ...'
			rescue
				puts 'Cannot write to log'
			end
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling PaymentInstrumentApi.delete_payment_instrument"
      end
      if @api_client.config.client_side_validation && profile_id.to_s.length > 36
        fail ArgumentError, 'invalid value for "profile_id" when calling PaymentInstrumentApi.delete_payment_instrument, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && profile_id.to_s.length < 36
        fail ArgumentError, 'invalid value for "profile_id" when calling PaymentInstrumentApi.delete_payment_instrument, the character length must be great than or equal to 36.'
      end

      # verify the required parameter 'v_c_merchant_id' is set
      if @api_client.config.client_side_validation && v_c_merchant_id.nil?
        fail ArgumentError, "Missing the required parameter 'v_c_merchant_id' when calling PaymentInstrumentApi.delete_payment_instrument"
      end
      if @api_client.config.client_side_validation && v_c_merchant_id.to_s.length > 32
        fail ArgumentError, 'invalid value for "v_c_merchant_id" when calling PaymentInstrumentApi.delete_payment_instrument, the character length must be smaller than or equal to 32.'
      end

      if @api_client.config.client_side_validation && v_c_merchant_id.to_s.length < 5
        fail ArgumentError, 'invalid value for "v_c_merchant_id" when calling PaymentInstrumentApi.delete_payment_instrument, the character length must be great than or equal to 5.'
      end

      # verify the required parameter 'v_c_correlation_id' is set
      if @api_client.config.client_side_validation && v_c_correlation_id.nil?
        fail ArgumentError, "Missing the required parameter 'v_c_correlation_id' when calling PaymentInstrumentApi.delete_payment_instrument"
      end
      if @api_client.config.client_side_validation && v_c_correlation_id.to_s.length > 36
        fail ArgumentError, 'invalid value for "v_c_correlation_id" when calling PaymentInstrumentApi.delete_payment_instrument, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && v_c_correlation_id.to_s.length < 36
        fail ArgumentError, 'invalid value for "v_c_correlation_id" when calling PaymentInstrumentApi.delete_payment_instrument, the character length must be great than or equal to 36.'
      end

      # verify the required parameter 'token_id' is set
      if @api_client.config.client_side_validation && token_id.nil?
        fail ArgumentError, "Missing the required parameter 'token_id' when calling PaymentInstrumentApi.delete_payment_instrument"
      end
      if @api_client.config.client_side_validation && token_id.to_s.length > 32
        fail ArgumentError, 'invalid value for "token_id" when calling PaymentInstrumentApi.delete_payment_instrument, the character length must be smaller than or equal to 32.'
      end

      if @api_client.config.client_side_validation && token_id.to_s.length < 16
        fail ArgumentError, 'invalid value for "token_id" when calling PaymentInstrumentApi.delete_payment_instrument, the character length must be great than or equal to 16.'
      end

      if @api_client.config.client_side_validation && !opts[:'client_application'].nil? && opts[:'client_application'].to_s.length > 30
        fail ArgumentError, 'invalid value for "opts[:"client_application"]" when calling PaymentInstrumentApi.delete_payment_instrument, the character length must be smaller than or equal to 30.'
      end

      if @api_client.config.client_side_validation && !opts[:'client_application'].nil? && opts[:'client_application'].to_s.length < 3
        fail ArgumentError, 'invalid value for "opts[:"client_application"]" when calling PaymentInstrumentApi.delete_payment_instrument, the character length must be great than or equal to 3.'
      end

      #if @api_client.config.client_side_validation && !opts[:'client_application'].nil? && opts[:'client_application'] !~ Regexp.new(/^[a-zA-Z0-9\\\\-_]{3,30}|$/)
        #fail ArgumentError, "invalid value for 'opts[:\"client_application\"]' when calling PaymentInstrumentApi.delete_payment_instrument, must conform to the pattern /^[a-zA-Z0-9\\\\-_]{3,30}|$/."
      #end

      # resource path
      local_var_path = 'tms/v1/paymentinstruments/{tokenId}'.sub('{' + 'tokenId' + '}', token_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['*/*'])
      header_params[:'profile-id'] = profile_id
      header_params[:'v-c-merchant-id'] = v_c_merchant_id
      header_params[:'v-c-correlation-id'] = v_c_correlation_id
      header_params[:'Client-Application'] = opts[:'client_application'] if !opts[:'client_application'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
		begin
		raise
			@api_client.config.logger.debug "API called: PaymentInstrumentApi#delete_payment_instrument\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
		rescue
			puts 'Cannot write to log'
		end
	  end
      return data, status_code, headers
    end
    # Retrieve a Payment Instrument
    # @param profile_id The id of a profile containing user specific TMS configuration.
    # @param v_c_merchant_id CyberSource merchant id.
    # @param v_c_correlation_id The mandatory correlation id passed by upstream (calling) system.
    # @param token_id The TokenId of a Payment Instrument.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :client_application Client application name
    # @return [TmsV1PaymentinstrumentsPatch200Response]
    def get_payment_instrument(profile_id, v_c_merchant_id, v_c_correlation_id, token_id, opts = {})
      data, status_code, headers = get_payment_instrument_with_http_info(profile_id, v_c_merchant_id, v_c_correlation_id, token_id, opts)
      return data, status_code, headers
    end

    # Retrieve a Payment Instrument
    # @param profile_id The id of a profile containing user specific TMS configuration.
    # @param v_c_merchant_id CyberSource merchant id.
    # @param v_c_correlation_id The mandatory correlation id passed by upstream (calling) system.
    # @param token_id The TokenId of a Payment Instrument.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :client_application Client application name
    # @return [Array<(TmsV1PaymentinstrumentsPatch200Response, Fixnum, Hash)>] TmsV1PaymentinstrumentsPatch200Response data, response status code and response headers
    def get_payment_instrument_with_http_info(profile_id, v_c_merchant_id, v_c_correlation_id, token_id, opts = {})
      
	  if @api_client.config.debugging
	  	begin
			raise
				@api_client.config.logger.debug 'Calling API: PaymentInstrumentApi.get_payment_instrument ...'
			rescue
				puts 'Cannot write to log'
			end
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling PaymentInstrumentApi.get_payment_instrument"
      end
      if @api_client.config.client_side_validation && profile_id.to_s.length > 36
        fail ArgumentError, 'invalid value for "profile_id" when calling PaymentInstrumentApi.get_payment_instrument, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && profile_id.to_s.length < 36
        fail ArgumentError, 'invalid value for "profile_id" when calling PaymentInstrumentApi.get_payment_instrument, the character length must be great than or equal to 36.'
      end

      # verify the required parameter 'v_c_merchant_id' is set
      if @api_client.config.client_side_validation && v_c_merchant_id.nil?
        fail ArgumentError, "Missing the required parameter 'v_c_merchant_id' when calling PaymentInstrumentApi.get_payment_instrument"
      end
      if @api_client.config.client_side_validation && v_c_merchant_id.to_s.length > 32
        fail ArgumentError, 'invalid value for "v_c_merchant_id" when calling PaymentInstrumentApi.get_payment_instrument, the character length must be smaller than or equal to 32.'
      end

      if @api_client.config.client_side_validation && v_c_merchant_id.to_s.length < 5
        fail ArgumentError, 'invalid value for "v_c_merchant_id" when calling PaymentInstrumentApi.get_payment_instrument, the character length must be great than or equal to 5.'
      end

      # verify the required parameter 'v_c_correlation_id' is set
      if @api_client.config.client_side_validation && v_c_correlation_id.nil?
        fail ArgumentError, "Missing the required parameter 'v_c_correlation_id' when calling PaymentInstrumentApi.get_payment_instrument"
      end
      if @api_client.config.client_side_validation && v_c_correlation_id.to_s.length > 36
        fail ArgumentError, 'invalid value for "v_c_correlation_id" when calling PaymentInstrumentApi.get_payment_instrument, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && v_c_correlation_id.to_s.length < 36
        fail ArgumentError, 'invalid value for "v_c_correlation_id" when calling PaymentInstrumentApi.get_payment_instrument, the character length must be great than or equal to 36.'
      end

      # verify the required parameter 'token_id' is set
      if @api_client.config.client_side_validation && token_id.nil?
        fail ArgumentError, "Missing the required parameter 'token_id' when calling PaymentInstrumentApi.get_payment_instrument"
      end
      if @api_client.config.client_side_validation && token_id.to_s.length > 32
        fail ArgumentError, 'invalid value for "token_id" when calling PaymentInstrumentApi.get_payment_instrument, the character length must be smaller than or equal to 32.'
      end

      if @api_client.config.client_side_validation && token_id.to_s.length < 16
        fail ArgumentError, 'invalid value for "token_id" when calling PaymentInstrumentApi.get_payment_instrument, the character length must be great than or equal to 16.'
      end

      if @api_client.config.client_side_validation && !opts[:'client_application'].nil? && opts[:'client_application'].to_s.length > 30
        fail ArgumentError, 'invalid value for "opts[:"client_application"]" when calling PaymentInstrumentApi.get_payment_instrument, the character length must be smaller than or equal to 30.'
      end

      if @api_client.config.client_side_validation && !opts[:'client_application'].nil? && opts[:'client_application'].to_s.length < 3
        fail ArgumentError, 'invalid value for "opts[:"client_application"]" when calling PaymentInstrumentApi.get_payment_instrument, the character length must be great than or equal to 3.'
      end

      #if @api_client.config.client_side_validation && !opts[:'client_application'].nil? && opts[:'client_application'] !~ Regexp.new(/^[a-zA-Z0-9\\\\-_]{3,30}|$/)
        #fail ArgumentError, "invalid value for 'opts[:\"client_application\"]' when calling PaymentInstrumentApi.get_payment_instrument, must conform to the pattern /^[a-zA-Z0-9\\\\-_]{3,30}|$/."
      #end

      # resource path
      local_var_path = 'tms/v1/paymentinstruments/{tokenId}'.sub('{' + 'tokenId' + '}', token_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['*/*'])
      header_params[:'profile-id'] = profile_id
      header_params[:'v-c-merchant-id'] = v_c_merchant_id
      header_params[:'v-c-correlation-id'] = v_c_correlation_id
      header_params[:'Client-Application'] = opts[:'client_application'] if !opts[:'client_application'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TmsV1PaymentinstrumentsPatch200Response')
      if @api_client.config.debugging
		begin
		raise
			@api_client.config.logger.debug "API called: PaymentInstrumentApi#get_payment_instrument\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
		rescue
			puts 'Cannot write to log'
		end
	  end
      return data, status_code, headers
    end
    # Update a Payment Instrument
    # @param profile_id The id of a profile containing user specific TMS configuration.
    # @param v_c_merchant_id CyberSource merchant id.
    # @param v_c_correlation_id The mandatory correlation id passed by upstream (calling) system.
    # @param token_id The TokenId of a Payment Instrument.
    # @param update_payment_instrument_request Specify the customer&#39;s payment details.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :client_application Client application name
    # @return [TmsV1PaymentinstrumentsPatch200Response]
    def update_payment_instrument(profile_id, v_c_merchant_id, v_c_correlation_id, token_id, update_payment_instrument_request, opts = {})
      data, status_code, headers = update_payment_instrument_with_http_info(profile_id, v_c_merchant_id, v_c_correlation_id, token_id, update_payment_instrument_request, opts)
      return data, status_code, headers
    end

    # Update a Payment Instrument
    # @param profile_id The id of a profile containing user specific TMS configuration.
    # @param v_c_merchant_id CyberSource merchant id.
    # @param v_c_correlation_id The mandatory correlation id passed by upstream (calling) system.
    # @param token_id The TokenId of a Payment Instrument.
    # @param update_payment_instrument_request Specify the customer&#39;s payment details.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :client_application Client application name
    # @return [Array<(TmsV1PaymentinstrumentsPatch200Response, Fixnum, Hash)>] TmsV1PaymentinstrumentsPatch200Response data, response status code and response headers
    def update_payment_instrument_with_http_info(profile_id, v_c_merchant_id, v_c_correlation_id, token_id, update_payment_instrument_request, opts = {})
      
	  if @api_client.config.debugging
	  	begin
			raise
				@api_client.config.logger.debug 'Calling API: PaymentInstrumentApi.update_payment_instrument ...'
			rescue
				puts 'Cannot write to log'
			end
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling PaymentInstrumentApi.update_payment_instrument"
      end
      if @api_client.config.client_side_validation && profile_id.to_s.length > 36
        fail ArgumentError, 'invalid value for "profile_id" when calling PaymentInstrumentApi.update_payment_instrument, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && profile_id.to_s.length < 36
        fail ArgumentError, 'invalid value for "profile_id" when calling PaymentInstrumentApi.update_payment_instrument, the character length must be great than or equal to 36.'
      end

      # verify the required parameter 'v_c_merchant_id' is set
      if @api_client.config.client_side_validation && v_c_merchant_id.nil?
        fail ArgumentError, "Missing the required parameter 'v_c_merchant_id' when calling PaymentInstrumentApi.update_payment_instrument"
      end
      if @api_client.config.client_side_validation && v_c_merchant_id.to_s.length > 32
        fail ArgumentError, 'invalid value for "v_c_merchant_id" when calling PaymentInstrumentApi.update_payment_instrument, the character length must be smaller than or equal to 32.'
      end

      if @api_client.config.client_side_validation && v_c_merchant_id.to_s.length < 5
        fail ArgumentError, 'invalid value for "v_c_merchant_id" when calling PaymentInstrumentApi.update_payment_instrument, the character length must be great than or equal to 5.'
      end

      # verify the required parameter 'v_c_correlation_id' is set
      if @api_client.config.client_side_validation && v_c_correlation_id.nil?
        fail ArgumentError, "Missing the required parameter 'v_c_correlation_id' when calling PaymentInstrumentApi.update_payment_instrument"
      end
      if @api_client.config.client_side_validation && v_c_correlation_id.to_s.length > 36
        fail ArgumentError, 'invalid value for "v_c_correlation_id" when calling PaymentInstrumentApi.update_payment_instrument, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && v_c_correlation_id.to_s.length < 36
        fail ArgumentError, 'invalid value for "v_c_correlation_id" when calling PaymentInstrumentApi.update_payment_instrument, the character length must be great than or equal to 36.'
      end

      # verify the required parameter 'token_id' is set
      if @api_client.config.client_side_validation && token_id.nil?
        fail ArgumentError, "Missing the required parameter 'token_id' when calling PaymentInstrumentApi.update_payment_instrument"
      end
      if @api_client.config.client_side_validation && token_id.to_s.length > 32
        fail ArgumentError, 'invalid value for "token_id" when calling PaymentInstrumentApi.update_payment_instrument, the character length must be smaller than or equal to 32.'
      end

      if @api_client.config.client_side_validation && token_id.to_s.length < 16
        fail ArgumentError, 'invalid value for "token_id" when calling PaymentInstrumentApi.update_payment_instrument, the character length must be great than or equal to 16.'
      end

      # verify the required parameter 'update_payment_instrument_request' is set
      if @api_client.config.client_side_validation && update_payment_instrument_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_payment_instrument_request' when calling PaymentInstrumentApi.update_payment_instrument"
      end
      if @api_client.config.client_side_validation && !opts[:'client_application'].nil? && opts[:'client_application'].to_s.length > 30
        fail ArgumentError, 'invalid value for "opts[:"client_application"]" when calling PaymentInstrumentApi.update_payment_instrument, the character length must be smaller than or equal to 30.'
      end

      if @api_client.config.client_side_validation && !opts[:'client_application'].nil? && opts[:'client_application'].to_s.length < 3
        fail ArgumentError, 'invalid value for "opts[:"client_application"]" when calling PaymentInstrumentApi.update_payment_instrument, the character length must be great than or equal to 3.'
      end

      #if @api_client.config.client_side_validation && !opts[:'client_application'].nil? && opts[:'client_application'] !~ Regexp.new(/^[a-zA-Z0-9\\\\-_]{3,30}|$/)
        #fail ArgumentError, "invalid value for 'opts[:\"client_application\"]' when calling PaymentInstrumentApi.update_payment_instrument, must conform to the pattern /^[a-zA-Z0-9\\\\-_]{3,30}|$/."
      #end

      # resource path
      local_var_path = 'tms/v1/paymentinstruments/{tokenId}'.sub('{' + 'tokenId' + '}', token_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['*/*'])
      header_params[:'profile-id'] = profile_id
      header_params[:'v-c-merchant-id'] = v_c_merchant_id
      header_params[:'v-c-correlation-id'] = v_c_correlation_id
      header_params[:'Client-Application'] = opts[:'client_application'] if !opts[:'client_application'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(update_payment_instrument_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TmsV1PaymentinstrumentsPatch200Response')
      if @api_client.config.debugging
		begin
		raise
			@api_client.config.logger.debug "API called: PaymentInstrumentApi#update_payment_instrument\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
		rescue
			puts 'Cannot write to log'
		end
	  end
      return data, status_code, headers
    end
  end
end