require_relative 'config/application'

# puts "Put your application code in #{File.expand_path(__FILE__)}"


input = ARGV
# p input
# input.delete_at(0)
command = ARGV[0]
parameters = ARGV[1..-1].join(" ")

# list_array = []
# Task.each do |list|
# list_array << list
# p list_array
# end

p command

case command
  when "list"
    all_tasks = Task.all
    all_tasks.each_with_index do |task,index|
      # array=[]
      # array << task.task
      # array_arr=[]
      # array_arr << array
      # array_arr.each_with_index do |str,index|
      # p "#{index} #{array_arr}"
      p "#{index+1}. #{task.task}"
    # p Task.all(:id)
    # contact_array = []
    # Task.each do |result|
    #   contact_array << Task.new(id: result[0], task: result[1])
    #   p contact_array
    # end
    # end
  end

  when "add"
    new_task = Task.create(task: parameters)

  when "delete"
    # all_tasks = Task.all
    # all_tasks.each_with_index do |task,index|
    # parameters = index + 1
    # parameters = Task.find()
    # del_task = Task.destroy(task: parameters)
    # Task.all
    # index = parameters.to_i+1
    index = (parameters.to_i - 1)
    Task.all[index].destroy

  when 'complete'
    index = (parameters.to_i - 1)
    Task.all[index].gsub!
  # end
end


# irb(main):001:0> Task.all
# => #<ActiveRecord::Relation [#<Task id: 2, task: "Quam aut dolor ex odit ad sequi labore magnam.", created_at: "2015-05-25 03:11:57", updated_at: "2015-05-25 03:11:57">, #<Task id: 3, task: "Dolor perspiciatis hic eos.", created_at: "2015-05-25 03:11:59", updated_at: "2015-05-25 03:11:59">, #<Task id: 13, task: "something here", created_at: "2015-05-25 04:26:47", updated_at: "2015-05-25 04:26:47">]>
# irb(main):002:0> Task.all[2]
# => #<Task id: 13, task: "something here", created_at: "2015-05-25 04:26:47", updated_at: "2015-05-25 04:26:47">
# irb(main):003:0> Task.all[2].destroy
# => #<Task id: 13, task: "something here", created_at: "2015-05-25 04:26:47", updated_at: "2015-05-25 04:26:47">




# when "list"
#     all_tasks = Task.all
#     all_tasks.each do |task|
#
#       puts task.task


# irb(main):003:0> task = Task.find(11)
# \=> #<Task id: 11, task: "[\"ths\", \"is\", \"new\", \"task\"]", created_at: "2015-05-25 03:34:40", updated_at: "2015-05-25 03:34:40">
# irb(main):004:0> task = Task.find(11)
# => #<Task id: 11, task: "[\"ths\", \"is\", \"new\", \"task\"]", created_at: "2015-05-25 03:34:40", updated_at: "2015-05-25 03:34:40">
# irb(main):005:0> task.destroy
# => #<Task id: 11, task: "[\"ths\", \"is\", \"new\", \"task\"]", created_at: "2015-05-25 03:34:40", updated_at: "2015-05-25 03:34:40">



# del_task = Task.destroy(task: (parameters))
