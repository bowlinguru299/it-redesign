class ThreadController < ActionController::Base
  
  layout 'application'
  
  before_action 'create_threads'
  
  def show
    @thread = @threads[params[:id]]
  end
  
  private
  
  def create_threads
    @threads = {
      "thread-one" => {
            :title => 'Example Thread',
        		:next_thread => 'thread-two',
            :hidden_post_count => 133,
            :initial_post => {
                              :author => 'Alex',
                              :content => 'Check out this Example Thread',
                              :date => DateTime.new(2001,2,3),
                              :vote_count => 10
                             },
            :posts => [
                {
                  :author => 'Alex',
                  :content => 'This is a poast',
                  :date => DateTime.new(2001,2,3),
                  :vote_count => 10
                },
                {
                  :author => 'Alex',
                  :content => 'This is a poast',
                  :date => DateTime.new(2001,2,3),
                  :vote_count => 4,
                  :flagged => true
                },
                {
                  :author => 'Alex',
                  :content => 'This is a poast',
                  :date => DateTime.new(2001,2,3),
                  :vote_count => 4
                },
                {
                  :author => 'Alex',
                  :content => 'This is a poast',
                  :date => DateTime.new(2001,2,3),
                  :vote_count => 4
                },
                {
                  :author => 'Alex',
                  :content => 'This is a poast',
                  :date => DateTime.new(2001,2,3),
                  :vote_count => 4,
                  :new => true
                },
                {
                  :author => 'Alex',
                  :content => 'This is a poast',
                  :date => DateTime.new(2001,2,3),
                  :vote_count => 4,
                  :new => true
                },
                {
                  :author => 'Alex',
                  :content => 'This is a poast',
                  :date => DateTime.new(2001,2,3),
                  :vote_count => 4,
                  :new => true
                }
              ]
           },
      "thread-two" =>{
            :title => 'Thread Two',
            :hidden_post_count => 133,
            :next_thread => 'home',
            :initial_post => {
                              :author => 'Alex',
                              :content => 'Check out this Example Thread',
                              :date => DateTime.new(2001,2,3),
                              :vote_count => 10
                             },
            :posts => [
                {
                  :author => 'Alex',
                  :content => 'This is a poast',
                  :date => DateTime.new(2001,2,3),
                  :vote_count => 10
                },
                {
                  :author => 'Alex',
                  :content => 'This is a poast',
                  :date => DateTime.new(2001,2,3),
                  :vote_count => 4
                },
                {
                  :author => 'Alex',
                  :content => 'This is a poast',
                  :date => DateTime.new(2001,2,3),
                  :vote_count => 4
                },
                {
                  :author => 'Alex',
                  :content => 'This is a poast',
                  :date => DateTime.new(2001,2,3),
                  :vote_count => 4,
                  :new => true
                },
                {
                  :author => 'Alex',
                  :content => 'This is a poast',
                  :date => DateTime.new(2001,2,3),
                  :vote_count => 4,
                  :new => true
                }
              ]
           }
     }
  end
  
end
