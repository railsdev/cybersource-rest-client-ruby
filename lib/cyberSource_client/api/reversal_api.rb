=begin
#CyberSource Flex API

#Simple PAN tokenization service

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'uri'

module CyberSource
  class ReversalApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Process an Authorization Reversal
    # Include the payment ID in the POST request to reverse the payment amount.
    # @param id The payment ID returned from a previous payment request.
    # @param auth_reversal_request 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2011]
    def auth_reversal(id, auth_reversal_request, opts = {})
      data, _status_code, _headers = auth_reversal_with_http_info(id, auth_reversal_request, opts)
      return data, _status_code, _headers
    end

    # Process an Authorization Reversal
    # Include the payment ID in the POST request to reverse the payment amount.
    # @param id The payment ID returned from a previous payment request.
    # @param auth_reversal_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2011, Fixnum, Hash)>] InlineResponse2011 data, response status code and response headers
    def auth_reversal_with_http_info(id, auth_reversal_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReversalApi.auth_reversal ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ReversalApi.auth_reversal"
      end
      # verify the required parameter 'auth_reversal_request' is set
      if @api_client.config.client_side_validation && auth_reversal_request.nil?
        fail ArgumentError, "Missing the required parameter 'auth_reversal_request' when calling ReversalApi.auth_reversal"
      end
      # resource path
      local_var_path = 'pts/v2/payments/{id}/reversals'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(auth_reversal_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2011')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReversalApi#auth_reversal\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve an Authorization Reversal
    # Include the authorization reversal ID in the GET request to retrieve the authorization reversal details. 
    # @param id The authorization reversal ID returned from a previous authorization reversal request.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2003]
    def get_auth_reversal(id, opts = {})
      data, _status_code, _headers = get_auth_reversal_with_http_info(id, opts)
      return data, _status_code, _headers
    end

    # Retrieve an Authorization Reversal
    # Include the authorization reversal ID in the GET request to retrieve the authorization reversal details. 
    # @param id The authorization reversal ID returned from a previous authorization reversal request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2003, Fixnum, Hash)>] InlineResponse2003 data, response status code and response headers
    def get_auth_reversal_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReversalApi.get_auth_reversal ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ReversalApi.get_auth_reversal"
      end
      # resource path
      local_var_path = 'pts/v2/reversals/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json'])

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
        :return_type => 'InlineResponse2003')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReversalApi#get_auth_reversal\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end