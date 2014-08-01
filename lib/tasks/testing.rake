namespace :test do
  namespace :clockability do
    desc 'Run all unit tests for Clockability Plugin'
    Rake::TestTask.new(:units) do |t|
      t.test_files = FileList['vendor/plugins/chiliproject_clockability/test/unit/*.rb']
      t.verbose = true
    end

    desc 'Run all functional tests for Clockability Plugin'
    Rake::TestTask.new(:functionals) do |t|
      t.test_files = FileList['vendor/plugins/chiliproject_clockability/test/functional/*.rb']
      t.verbose = true
    end

  namespace :clockability do
    desc 'Run all integration tests for Clockability Plugin'
    Rake::TestTask.new(:integration) do |t|
      t.test_files = FileList['vendor/plugins/chiliproject_clockability/test/integration/*.rb']
      t.verbose = true
    end

  end
end