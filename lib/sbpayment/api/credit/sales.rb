require_relative '../../request'
require_relative '../../response'

module Sbpayment
  module API
    module Credit
      class SalesRequest < Request
        class PayOptionManage
          include ParameterDefinition

          tag 'pay_option_manage'
          key :amount
        end

        tag 'sps-api-request', id: 'ST02-00201-101'
        key :merchant_id, default: -> { Sbpayment.config.merchant_id }
        key :service_id,  default: -> { Sbpayment.config.service_id }
        key :sps_transaction_id
        key :tracking_id
        key :processing_datetime
        key :request_date, default: -> { TimeUtil.format_current_time }
        key :limit_second
        key :sps_hashcode
      end

      class SalesResponse < Response
      end
    end
  end
end
