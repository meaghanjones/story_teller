require 'rails_helper'

describe "the add a story process" do
  it "adds a new story" do
    visit stories_path
    click_link 'New Story'
    fill_in 'Image URL', :with => 'url'
    fill_in 'Content', :with => 'One rainy night'
    click_on 'Create Story'
    expect(page).to have_content 'Stories'
  end
end

describe "the add a sentence to the story" do
  it 'adds a new sentence to the story' do
    visit stories_path
    click_link 'New Story'
    fill_in 'Image URL', :with => 'url'
    fill_in 'Content', :with => 'One rainy night'
    click_on 'Create Story'
    click_link 'One rainy night'
    click_on 'New Sentence'
    fill_in 'Username', :with => 'Katie'
    fill_in 'Content', :with => 'bla bla'
    click_on 'Create Sentence'
    expect(page).to have_content 'by Katie'
  end
end

describe "the add a sentence to the story" do
  it 'adds a new sentence to the story' do
    visit stories_path
    test_story = Story.new({:imgURL => 'url', :content => 'text'})
    test_story.save()
    click_on 'text'
    click_on 'New Sentence'
    fill_in 'Username', :with => 'Katie'
    fill_in 'Content', :with => 'bla bla'
    click_on 'Create Sentence'
    expect(page).to have_content 'by Katie'
  end
end
