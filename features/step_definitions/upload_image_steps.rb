Given /^I visit the new image page$/ do
  visit '/images/new'
end

When /^I complete the form with a valid image$/ do
  fill_in('image_name', :with => "TestImageName")
  attach_file(:image_source, File.join(Rails.root, 'features', 'upload-files', 'test_image.jpg'))
  find('input[name="commit"]').click
end
 
When /^I complete the form with a wrong image$/ do
  fill_in('image_name', :with => "TestImageName")
  attach_file(:image_source, File.join(Rails.root, 'features', 'upload-files', 'test_text.txt'))
  find('input[name="commit"]').click
end

Then /^I should be sent to the index page$/ do
  assert page.has_content?("Images")
end

Then /^I should see the new image page again$/ do
  assert page.has_content?("New Image")
end