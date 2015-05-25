require_relative 'config/application'

# puts "Put your application code in #{File.expand_path(__FILE__)}"


# input = ARGV
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
      if task.complete == true
        box = "[X]"
      else
        box = "[ ]"
      end
      p "#{index+1}. #{box} #{task.task}"

  end

  when "add"
    new_task = Task.create(task: parameters)

  when "delete"

    index = (parameters.to_i - 1)
    Task.all[index].destroy

  when 'complete'

    index = (parameters.to_i - 1)
    task = Task.all[index]
    task.complete = true
    task.save

  when 'done'
    list_done = Task.where(complete: true)
    box = "[X]"
    list_done.each do |ld|
      puts "#{box} #{ld.task}"
    end


  when 'not_done'
    list_not_done = Task.where(complete: false)
    box = "[ ]"
    list_not_done.each do |lnd|
      puts "#{box} #{lnd.task}"
    end

  when 'uncomplete'

    index = (parameters.to_i - 1)
    task = Task.all[index]
    task.complete = false
    task.save

end

#******************************************************************

  # def sen_state(state)
  #   sen = Congressman.where(title: "Sen", state: state)
  #   sen.order(:lastname)

  #  sen.each do |sen|
  #     puts "#{sen.title} #{sen.name} #{sen.state} (#{sen.party})"
  #   end
#******************************************************************
# irb(main):001:0> Task.all
# => #<ActiveRecord::Relation [#<Task id: 2, task: "Quam aut dolor ex odit ad sequi labore magnam.", created_at: "2015-05-25 03:11:57", updated_at: "2015-05-25 03:11:57">, #<Task id: 3, task: "Dolor perspiciatis hic eos.", created_at: "2015-05-25 03:11:59", updated_at: "2015-05-25 03:11:59">, #<Task id: 13, task: "something here", created_at: "2015-05-25 04:26:47", updated_at: "2015-05-25 04:26:47">]>
# irb(main):002:0> Task.all[2]
# => #<Task id: 13, task: "something here", created_at: "2015-05-25 04:26:47", updated_at: "2015-05-25 04:26:47">
# irb(main):003:0> Task.all[2].destroy
# => #<Task id: 13, task: "something here", created_at: "2015-05-25 04:26:47", updated_at: "2015-05-25 04:26:47">
# task = Task.all[3]
# task.update(task: 'huhuhuhuy')
#******************************************************************

# irb(main):003:0> task = Task.find(11)
# \=> #<Task id: 11, task: "[\"ths\", \"is\", \"new\", \"task\"]", created_at: "2015-05-25 03:34:40", updated_at: "2015-05-25 03:34:40">
# irb(main):004:0> task = Task.find(11)
# => #<Task id: 11, task: "[\"ths\", \"is\", \"new\", \"task\"]", created_at: "2015-05-25 03:34:40", updated_at: "2015-05-25 03:34:40">
# irb(main):005:0> task.destroy
# => #<Task id: 11, task: "[\"ths\", \"is\", \"new\", \"task\"]", created_at: "2015-05-25 03:34:40", updated_at: "2015-05-25 03:34:40">

#******************************************************************

