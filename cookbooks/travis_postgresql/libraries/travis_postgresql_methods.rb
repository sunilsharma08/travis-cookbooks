module TravisPostgresqlMethods
  def pg_versions(node)
    values = [node['travis_postgresql']['default_version']]
    Array(node['travis_postgresql']['alternate_versions']).each do |pg_version|
      values << pg_version
    end
    values
  end

  module_function :pg_versions
end
