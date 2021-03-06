## This is the rakegem gemspec template. Make sure you read and understand
## all of the comments. Some sections require modification, and others can
## be deleted if you don't need them. Once you understand the contents of
## this file, feel free to delete any comments that begin with two hash marks.
## You can find comprehensive Gem::Specification documentation, at
## http://docs.rubygems.org/read/chapter/20
Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.rubygems_version = '1.3.5'

  ## Leave these as is they will be modified for you by the rake gemspec task.
  ## If your rubyforge_project name is different, then edit it and comment out
  ## the sub! line in the Rakefile
  s.name              = 'trinidad_logging_extension'
  s.version           = '1.0.1'
  s.date              = '2011-08-18'
  s.rubyforge_project = 'trinidad_logging_extension'

  ## Make sure your summary is short. The description may be as long
  ## as you like.
  s.summary     = "Logging extension for Trinidad"
  s.description = "Configure logging service for Trinidad"

  ## List the primary authors. If there are a bunch of authors, it's probably
  ## better to set the email to an email list or something. If you don't have
  ## a custom homepage, consider using your GitHub URL or the like.
  s.authors  = ["David Calavera"]
  s.email    = 'calavera@apache.org'
  s.homepage = 'http://github.com/calavera/trinidad_logging_extension'

  ## This gets added to the $LOAD_PATH so that 'lib/NAME.rb' can be required as
  ## require 'NAME.rb' or'/lib/NAME/file.rb' can be as require 'NAME/file.rb'
  s.require_paths = %w[lib]

  ## Specify any RDoc options here. You'll want to add your README and
  ## LICENSE files to the extra_rdoc_files list.
  s.rdoc_options = ["--charset=UTF-8"]
  s.extra_rdoc_files = %w[README LICENSE]

  ## List your runtime dependencies here. Runtime dependencies are those
  ## that are needed for an end user to actually USE your code.
  s.add_dependency('trinidad', '>=0.9.1')

  ## List your development dependencies here. Development dependencies are
  ## those that are only needed during development
  s.add_development_dependency('rspec')
  s.add_development_dependency('mocha')

  ## Leave this section as-is. It will be automatically generated from the
  ## contents of your Git repository via the gemspec task. DO NOT REMOVE
  ## THE MANIFEST COMMENTS, they are used as delimiters by the task.
  # = MANIFEST =
  s.files = %w[
    History.txt
    LICENSE
    README
    Rakefile
    lib/trinidad_logging_extension.rb
    lib/trinidad_logging_extension/jars.rb
    trinidad-libs/jcl-over-slf4j-1.6.1.jar
    trinidad-libs/jul-to-slf4j-1.6.1.jar
    trinidad-libs/juli-adapters.jar
    trinidad-libs/log4j-1.2.16.jar
    trinidad-libs/logback-classic-0.9.29.jar
    trinidad-libs/logback-core-0.9.29.jar
    trinidad-libs/slf4j-api-1.6.1.jar
    trinidad-libs/slf4j-jdk14-1.6.1.jar
    trinidad-libs/slf4j-log4j12-1.6.1.jar
    trinidad_logging_extension.gemspec
  ]
  # = MANIFEST =

  ## Test files will be grabbed from the file list. Make sure the path glob
  ## matches what you actually use.
  s.test_files = s.files.select { |path| path =~ /^test\/test_.*\.rb/ }
end
