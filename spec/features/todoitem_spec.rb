# encoding: utf-8

require "spec_helper"

feature "Homepage displays stuff" do

  before(:each) do
    @todolist = Todolist.create!( :title => "Die Liste" )
  end

  scenario "without javascript" do
    visit todolist_path( @todolist )
    expect(page).to have_text( @todolist.title )

    fill_in :todoitem_text, with:  "Alter Punkt"
    click_button "Eintragen"

    expect(page).to have_text("Todoitem was successfully created")
    expect(page).to have_text("Alter Punkt")
    expect( find_field("Alter Punkt") ).to_not be_checked

    fill_in :todoitem_text, with:  "Neuer Punkt"
    click_button "Eintragen"

    expect(page).to have_text("Alter Punkt")
    expect(page).to have_text("Neuer Punkt")
    expect( find_field("Alter Punkt") ).to_not be_checked
    expect( find_field("Neuer Punkt") ).to_not be_checked

    page.check("Neuer Punkt")
    click_button "Speichern"

    expect( find_field("Alter Punkt") ).to_not be_checked
    expect( find_field("Neuer Punkt") ).to     be_checked

  end

  scenario "with javascript", js: true do
    visit todolist_path( @todolist )
    expect(page).to have_text( @todolist.title )

    fill_in :todoitem_text, with: "Alter Punkt\n"
    expect(page).to have_text("Alter Punkt item")
    fill_in :todoitem_text, with:  "Neuer Punkt\n"
    expect(page).to have_text("Neuer Punkt item")
  end

end
