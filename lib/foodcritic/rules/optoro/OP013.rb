rule 'OP013', 'Use chef-zero version 4.4.0 or higher' do
  tags %w(optoro)
  Bundler.locked_gems.specs.each do |gem_spec|
    g = gem_spec.to_s.split(' ')
    gem = g[0]
    version = g[1].tr('()', '')
    if gem == 'chef-zero' && Gem::Version.new(version) < Gem::Version.new('4.4.0')
      cookbook do |filename|
        [file_match(File.join(filename, 'Gemfile'))]
      end
    end
  end
end
