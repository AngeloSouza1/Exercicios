require "application_system_test_case"

class AnnotationsTest < ApplicationSystemTestCase
  setup do
    @annotation = annotations(:one)
  end

  test "visiting the index" do
    visit annotations_url
    assert_selector "h1", text: "Annotations"
  end

  test "should create annotation" do
    visit annotations_url
    click_on "New annotation"

    fill_in "Body", with: @annotation.body
    click_on "Create Annotation"

    assert_text "Annotation was successfully created"
    click_on "Back"
  end

  test "should update Annotation" do
    visit annotation_url(@annotation)
    click_on "Edit this annotation", match: :first

    fill_in "Body", with: @annotation.body
    click_on "Update Annotation"

    assert_text "Annotation was successfully updated"
    click_on "Back"
  end

  test "should destroy Annotation" do
    visit annotation_url(@annotation)
    click_on "Destroy this annotation", match: :first

    assert_text "Annotation was successfully destroyed"
  end
end
