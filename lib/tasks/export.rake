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
    Talk.order(:id).all.each do |talk|
      puts "Talk.create(
      :title => '#{talk.title}',
      :brief_description => '#{talk.brief_description}',
      :description => '#{talk.description}',
      :speaker => '#{talk.speaker}',
      :room => '#{talk.room}',
      :location => '#{talk.location}',
      :date => '#{talk.date}',
      :start_time => '#{talk.start_time}',
      :end_time => '#{talk.end_time}',
      :assisted_by => '#{talk.assisted_by}',
      :speaker_contact_info => '#{talk.speaker_contact_info}',
      :votes => #{talk.votes},
      :comments => '#{talk.comments}',
      :level => #{talk.level},
      :tags => '#{talk.tags}',
      :content_url => '#{talk.content_url}',
      :active => #{talk.active},
      :conference_id => #{talk.conference_id})"
    end      
  end
end
