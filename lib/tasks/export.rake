namespace :export do
  desc "Generate seed.rb from current database contents"
  task :gen_seeds => :environment do
    puts "# ruby encoding: utf-8" # Use utf-8 encoding
    Conference.order(:id).all.each do |con|
      puts "Conference.create(
      :title => '#{con.title}',
      :description => '#{con.description}',
      :location => '#{con.location}',
      :start_date => '#{con.start_date}',
      :end_date => '#{con.end_date}',
      :coordinator => '#{con.coordinator}',
      :active => #{con.active},
      :call_for_papers_enabled => #{con.call_for_papers_enabled},
      :voting_enabled => #{con.voting_enabled},
      :call_for_papers_start_date => '#{con.call_for_papers_start_date}',
      :call_for_papers_end_date => '#{con.call_for_papers_end_date}',
      :voting_start_date => '#{con.voting_start_date}',
      :voting_end_date => '#{con.voting_end_date}')"
    end
    Event.order(:id).all.each do |event|
      puts "Event.create(
      :title => '#{event.title}',
      :brief_description => '#{event.brief_description}',
      :description => '#{event.description}',
      :speaker => '#{event.speaker}',
      :room => '#{event.room}',
      :location => '#{event.location}',
      :date => '#{event.date}',
      :start_time => '#{event.start_time}',
      :end_time => '#{event.end_time}',
      :assisted_by => '#{event.assisted_by}',
      :speaker_contact_info => '#{event.speaker_contact_info}',
      :votes => #{event.votes},
      :comments => '#{event.comments}',
      :level => #{event.level},
      :tags => '#{event.tags}',
      :content_url => '#{event.content_url}',
      :active => #{event.active},
      :conference_id => #{event.conference_id})"
    end      
  end
end
