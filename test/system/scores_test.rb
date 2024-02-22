require "application_system_test_case"

class ScoresTest < ApplicationSystemTestCase
  setup do
    @score = scores(:one)
  end

  test "visiting the index" do
    visit scores_url
    assert_selector "h1", text: "Scores"
  end

  test "should create score" do
    visit scores_url
    click_on "New score"

    fill_in "Date", with: @score.Date
    fill_in "Description", with: @score.Description
    fill_in "Logoa", with: @score.LogoA
    fill_in "Logob", with: @score.LogoB
    fill_in "Resulta", with: @score.ResultA
    fill_in "Resultb", with: @score.ResultB
    fill_in "Teama", with: @score.TeamA
    fill_in "Teamb", with: @score.TeamB
    click_on "Create Score"

    assert_text "Score was successfully created"
    click_on "Back"
  end

  test "should update Score" do
    visit score_url(@score)
    click_on "Edit this score", match: :first

    fill_in "Date", with: @score.Date
    fill_in "Description", with: @score.Description
    fill_in "Logoa", with: @score.LogoA
    fill_in "Logob", with: @score.LogoB
    fill_in "Resulta", with: @score.ResultA
    fill_in "Resultb", with: @score.ResultB
    fill_in "Teama", with: @score.TeamA
    fill_in "Teamb", with: @score.TeamB
    click_on "Update Score"

    assert_text "Score was successfully updated"
    click_on "Back"
  end

  test "should destroy Score" do
    visit score_url(@score)
    click_on "Destroy this score", match: :first

    assert_text "Score was successfully destroyed"
  end
end
