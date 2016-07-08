require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the index path', {:type => :feature}) do
  it('lists all word entries and displays a form for new words') do
    visit('/')
    fill_in('word', :with =>'beholden')
    fill_in('definition', :with =>'to owe thanks')
    click_button('Add this entry')
    expect(page).to have_content('Thank you! Your entry is being processed')
    click_link('Home')
    expect(page).to have_content('beholden')
    click_link('beholden')
    expect(page).to have_content('to owe thanks')
    fill_in('new_definition', :with =>'to owe a duty to')
    click_button('Submit this new definition')
    expect(page).to have_content('to owe a duty to')

  end
end
