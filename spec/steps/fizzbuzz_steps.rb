require "./fizzbuzz.rb"

step "入力が:numberの倍数" do |n|
  @num = n * 2
end

step "入力が3の倍数でも5の倍数でもない数" do
  @num = 3 * 5 - 1
end

step "入力がnil" do
  @num = nil
end

step "出力はFizzから始まる" do
  expect(fizzbuzz(@num)).to match /^Fizz/
end

step "出力はBuzzで終わる" do
  expect(fizzbuzz(@num)).to match /Buzz$/
end

step "出力は与えられた数字" do
  expect(fizzbuzz(@num)).to eq @num
end

step "エラー" do
  expect(lambda{fizzbuzz(@num)}).to raise_error
end
