class TestController < ApplicationController
  def index
    @clients = Client.all
    puts @clients
    if @clients.present? == false
      @client = Client.new(name: "Client Name")
    end
    puts @client
    @sales_order = SalesOrder.new(client: @client.id,sales_order_date: Date.today, delivery_date: Date.today)
    puts @sales_order
  end
end
