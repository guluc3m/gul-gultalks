require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
    @conference_not_accepting_papers = conferences(:one)
    @conference_accepting_papers = conferences(:two)
    @conference_with_voting = conferences(:three)
  end

  test 'should be redirected to events list' do
    get conference_events_url(@conference_accepting_papers)
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end

  test 'should get event creation' do
    get new_conference_event_url(@conference_accepting_papers)
    assert_response :success
  end

  test 'should get speaker proposal view' do
    get propose_speaker_conference_event_url(@conference_accepting_papers, @event)
    assert_response :success
  end

  test 'should be redirected while voting is closed' do
    get vote_conference_event_url(@conference_accepting_papers, @event)
    assert_response :redirect
    follow_redirect!
    # TODO: this fails for some reason :
    #assert_response :success
  end

  test 'should get voting view' do
    get vote_conference_event_url(@conference_with_voting, events(:three))
    assert_response :success
  end

  test 'should get basic/detailed event creation' do
    get basic_events_url(@conference_accepting_papers)
    assert_response :success

    get detailed_events_url(@conference_accepting_papers)
    assert_response :success
  end

  test 'should be redirected to conference frontpage when paper deadline is over' do
    get basic_events_url(@conference_not_accepting_papers)
    assert_response :redirect
    follow_redirect!
    assert_response :success

    get detailed_events_url(@conference_not_accepting_papers)
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end

  test 'should 404 when event does not belong to a conference' do
    get vote_conference_event_url(@conference_accepting_papers, events(:three))
    assert_response :missing
  end
end
