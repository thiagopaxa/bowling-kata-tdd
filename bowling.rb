require 'bundler'
Bundler.require :default, (ENV['RACK_ENV'] ||= 'development')

Dir['./lib/**/*.rb'].each {|file| require file}

Bowling::Score.new.evaluate