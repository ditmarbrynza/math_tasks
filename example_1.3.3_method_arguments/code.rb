# frozen_string_literal: true

require 'pry'

def my_method(a, b, *c)
  puts "a = #{a}"
  puts "b = #{b}"
  puts "c = #{c}"
end

my_method(1, 2, 3, 4, 5)

def my_method_2(name: 'default', date:, gender:, options: {})
  options.merge!(name: name, date: date, gender: gender)
  some_action_with(options)
end

def some_action_with(options)
  puts "options = #{options}"
end

my_method_2(name: 'Ditmar', date: 10, gender: 'm')

def my_method_3(_arg1, _arg2, opts = {})
  opts.to_s
  puts "opts = #{opts}"
end

my_method_3(1, 2, truncate: true, redirect_to: '/')
