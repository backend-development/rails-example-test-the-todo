# encoding: utf-8

require "spec_helper"

feature "Homepage displays stuff" do

  scenario "without javascript" do
    visit "/"
    expect(page).to have_text("Todolists")

    fill_in :title, :with => "Neue Liste"
    click_link "Liste anlegen"

    expect(page).to have_text("Home / Neue Liste")
  end

  scenario "with javascript", :js => true do
    visit "/"
  end

end
