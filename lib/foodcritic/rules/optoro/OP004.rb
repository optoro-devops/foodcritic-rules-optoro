rule 'OP004', 'Use kitchen-ec2 version 0.10.0 or higher' do
  tags %w(optoro)
  Bundler.locked_gems.specs.each do |gem_spec|
    g = gem_spec.to_s.split(' ')
    gem = g[0]
    version = g[1].tr('()', '')
    if gem == 'kitchen-ec2' && Gem::Version.new(version) < Gem::Version.new('0.10.0')
      cookbook do |filename|
        [file_match(File.join(filename, 'Gemfile'))]
      end
    end
  end
end
