class StaticPagesController < ApplicationController


  def home
    @useragents = Useragent.all
    @result = request.user_agent
    @useragent = Useragent.new(agent: @result, counter: 0)

    respond_to do |format|
      if @useragent.save
        format.html { redirect_to root_url }
        format.js
      elsif @existing_agent = Useragent.find_by(agent: @result)
        format.html { Useragent.increment_counter(:counter, @existing_agent.id, touch: true) }
        format.js { Useragent.increment_counter(:counter, @existing_agent.id, touch: true) }
        format.json { render 'json: @existing_agent.counter'}
      else
        render 'home'
      end
    end
  end  
end

