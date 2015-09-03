rule 'OP003', 'maintainer_email must be set to devops@optoro.com in metadata' do
  tags %w(optoro metadata style)
  metadata do |ast|
    ast.xpath(%Q(//command[ident/@value='maintainer_email']/descendant::tstring_content[@value != 'devops@optoro.com']))
  end
end

