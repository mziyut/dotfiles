#!/usr/bin/env ruby

require 'uri'

class MakeRubyDict
  def initialize
    @methods = []
    @version_system = if rbenv?
                        'rbenv'
                      else
                        p 'rbenv not installed...'
                        exit 1
                      end
  end

  def make
    send("make_#{@version_system}")
    put_methods
  end

  private

  def put_methods
    @methods.uniq!.sort.each do |method|
      puts method
    end
  end

  def make_rbenv
    rbenv_list_doc_dirs.each do |file_path|
      Dir.glob(File.expand_path(file_path) + "/**/*.ri").each do |file|
        method = URI.decode(File.basename(file))
        @methods << $1 if /^(.*)-\w*\.ri$/ =~ method
      end
    end
  end

  # @return []
  def rbenv_list_doc_dirs
    `rbenv exec ri --list-doc-dirs`.split("\n")
  end

  # @return [true, false]
  def rbenv?
    `rbenv --version`
  rescue
    false
  end
end


MakeRubyDict.new.make
