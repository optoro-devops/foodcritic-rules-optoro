rule 'OP006', 'Thor must be in Gemfile' do
  tags %w(optoro)
  cookbook do |filename|
    filepath = File.join(filename, 'Gemfile')
    if open(filepath).grep(/gem\ 'thor'/).length == 0
      [file_match(filepath)]
    end
  end
end
