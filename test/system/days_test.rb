require "application_system_test_case"

class DaysTest < ApplicationSystemTestCase
  setup do
    @day = days(:one)
  end

  test "visiting the index" do
    visit days_url
    assert_selector "h1", text: "Days"
  end

  test "should create day" do
    visit days_url
    click_on "New day"

    fill_in "Date", with: @day.date
    fill_in "Event", with: @day.event
    fill_in "Expense", with: @day.expense
    fill_in "Memo", with: @day.memo
    click_on "Create Day"

    assert_text "Day was successfully created"
    click_on "Back"
  end

  test "should update Day" do
    visit day_url(@day)
    click_on "Edit this day", match: :first

    fill_in "Date", with: @day.date
    fill_in "Event", with: @day.event
    fill_in "Expense", with: @day.expense
    fill_in "Memo", with: @day.memo
    click_on "Update Day"

    assert_text "Day was successfully updated"
    click_on "Back"
  end

  test "should destroy Day" do
    visit day_url(@day)
    click_on "Destroy this day", match: :first

    assert_text "Day was successfully destroyed"
  end
end
