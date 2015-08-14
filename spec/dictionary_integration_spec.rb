require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the dictionary path', {:type => :feature}) do
  it('takes the user to the index where a list of words are displayed') do
    visit('/')
save_and_open_page
    expect(page).to have_content()
  end
end

# visit('/')
# fill_in('title', :with => 'green eggs and ham')
# click_button('Send')
