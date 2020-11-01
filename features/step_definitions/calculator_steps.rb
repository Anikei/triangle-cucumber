Given /^the sides where a is "([^"]*)"$/ do |a|
  @a = a
end

Given /^b is "([^"]*)"$/ do |b|
  @b = b
end

Given /^c is "([^"]*)"$/ do |c|
  @c = c
end

When /^the check is run$/ do
  @output = `ruby calc.rb #{@a} #{@b} #{@c}`
  raise('Command failed') unless $?.success?
end

Then /^the output should be "([^"]*)"$/ do |expected_output|
  @output.should == expected_output
end
