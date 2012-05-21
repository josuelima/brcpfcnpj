# -*- encoding: utf-8 -*-
require File.join(File.dirname(__FILE__), "lib", "brcpfcnpj", "version")

Gem::Specification.new do |s|
  s.name = "brcpfcnpj"
  s.summary = "brcpfcnpj é uma das gems que compoem o Brazilian Rails"
  s.description = %q{brcpfcnpj é uma das gems que compoem o Brazilian Rails}
  s.version = BrCpfCnpj::VERSION::STRING

  s.authors = ["Marcos Tapajós", "Celestino Gomes", "Andre Kupkosvki", "Vinícius Teles", "Felipe Barreto", "Rafael Walter", "Cassio Marques"]
  s.email = %w"tapajos@gmail.com tinorj@gmail.com kupkovski@gmail.com vinicius.m.teles@gmail.com felipebarreto@gmail.com rafawalter@gmail.com cassiommc@gmail.com"
  s.rubyforge_project = "brcpfcnpj"
  s.homepage = "http://www.improveit.com.br/software_livre/brazilian_rails"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency("actionpack", ">= 3.0.0")
  s.add_dependency("activesupport", ">= 3.0.0")
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec", ">= 2.4.0"
end