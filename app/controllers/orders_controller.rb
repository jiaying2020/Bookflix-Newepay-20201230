class OrdersController < ApplicationController

    current_cart.items.each do |item|
    order.order_items << OrderItem.new(product: item.product,
                                       quantity: item.quantity)
      end
      order.save
  
      # 付錢
     
      if result.success?
        # 清空購物車
        session[:cart9527] = nil
  
        # 訂單改狀態
        order.pay!
  
        # 走！
        redirect_to root_path, notice: '感謝大爺'
      else
        redirect_to root_path, notice: '發生錯誤'
      end
    end
  
    private
    def order_params
      params.require(:order).permit(:username, :tel, :address)
    end
end
