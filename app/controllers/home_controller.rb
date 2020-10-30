class HomeController < ApplicationController
  def dashboard
    @sales_12_months = Sale.where(created_at:11.months.ago..Date.today)
                      .group("strftime('%m-%Y',created_at)").order(:created_at)
                      .sum(:amount)

    @quantity_12_months =Sale.where(created_at:11.months.ago..Date.today)
                        .group("strftime('%m-%Y',created_at)").order(:created_at)
                        .count

    @average_12_months = Sale.where(created_at:11.months.ago..Date.today)
                      .group("strftime('%m-%Y',created_at)").order(:created_at)
                      .average(:amount)
 
  
    @pie_chart_12_monts =   Sale.where(created_at:11.months.ago..Date.today)
                    .group(:origin)
                    .count
        
    @pie_chart_6_monts =   Sale.where(created_at:5.months.ago..Date.today)
                    .group(:origin)
                    .count
   @pie_chart_3_monts =   Sale.where(created_at:2.months.ago..Date.today)
                    .group(:origin)
                    .count
 @pie_chart_last_monts =   Sale.where(created_at:30.days.ago..Date.today)
                    .group(:origin)
                    .count   
    #blend_name                

     @pie_chart_12_monts_blend_name =   Sale.where(created_at:11.months.ago..Date.today)
                    .group(:blend_name)
                    .count
        
    @pie_chart_6_monts_blend_name  =   Sale.where(created_at:5.months.ago..Date.today)
                    .group(:blend_name)
                    .count
   @pie_chart_3_monts_blend_name  =   Sale.where(created_at:2.months.ago..Date.today)
                    .group(:blend_name)
                    .count
 @pie_chart_last_monts_blend_name  =   Sale.where(created_at:30.days.ago..Date.today)
                    .group(:blend_name)
                    .count                
  end

end
