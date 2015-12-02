rule "OP010", "Thorfile food critic test must include -G" do
  tags %w{optoro}
  cookbook do |filename|
    filepath = File.join(filename, 'Thorfile')
    unless open(filepath).grep(/bundle\ exec\ foodcritic/)[0].include?('-G')
      [file_match(filepath)]
    end
  end
end
