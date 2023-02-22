class ApplicationController < ActionController::Base
  layout(false)
  def homepage
render({:template =>"game_templates/rules.html.erb" })
  end
  # Add your actions below this line
  # ================================
  def play_rock
    # Write ton of codes
    #redirect_to("https://www.wikipedia.com")
    #render({ :plain => rand(100) })
    #render({:html =>"<h1> Hello, World!<h1>".html_safe})
    render({:template => "game_templates/user_rock.html.erb" })
  end
  def play_paper
    @comp_move= ["rock","paper","scissors"].sample
    

     if @comp_move == "rock" 
      @outcome ="won"
    elsif @comp_move == "paper" 
       @outcome = "tied"
     elsif @comp_move =="scissors" 
        @outcome = "lost"
      end 
    

    render({:template =>"game_templates/user_paper.html.erb" })
      end
end
