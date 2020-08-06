require "application_system_test_case"

class JobPostsTest < ApplicationSystemTestCase
  setup do
    @job_post = job_posts(:one)
  end

  test "visiting the index" do
    visit job_posts_url
    assert_selector "h1", text: "Job Posts"
  end

  test "creating a Job post" do
    visit job_posts_url
    click_on "New Job Post"

    fill_in "Know it", with: @job_post.Know_IT
    fill_in "City", with: @job_post.city
    fill_in "Contact first", with: @job_post.contact_first
    fill_in "Contact sec", with: @job_post.contact_sec
    fill_in "Experience", with: @job_post.experience
    fill_in "Gender", with: @job_post.gender
    fill_in "Matiere", with: @job_post.matiere
    fill_in "Nb classe", with: @job_post.nb_classe
    fill_in "Nom complet", with: @job_post.nom_complet
    fill_in "Promotion", with: @job_post.promotion
    fill_in "School", with: @job_post.school
    click_on "Create Job post"

    assert_text "Job post was successfully created"
    click_on "Back"
  end

  test "updating a Job post" do
    visit job_posts_url
    click_on "Edit", match: :first

    fill_in "Know it", with: @job_post.Know_IT
    fill_in "City", with: @job_post.city
    fill_in "Contact first", with: @job_post.contact_first
    fill_in "Contact sec", with: @job_post.contact_sec
    fill_in "Experience", with: @job_post.experience
    fill_in "Gender", with: @job_post.gender
    fill_in "Matiere", with: @job_post.matiere
    fill_in "Nb classe", with: @job_post.nb_classe
    fill_in "Nom complet", with: @job_post.nom_complet
    fill_in "Promotion", with: @job_post.promotion
    fill_in "School", with: @job_post.school
    click_on "Update Job post"

    assert_text "Job post was successfully updated"
    click_on "Back"
  end

  test "destroying a Job post" do
    visit job_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Job post was successfully destroyed"
  end
end
