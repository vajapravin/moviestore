require 'rubygems'
require 'terminal-table'
require 'yaml'
require 'skype'

# RubyGarage Skype Bot
class SkypeBot
  def initialize
    @config = YAML.load_file('config.yml')

    Skype.config app_name: 'RubyGarageBot'
  end

  def run
    @chat = Skype.chats.find { |chat| chat.id.include? @config['token'] }

    return puts 'The chat does not found' unless @chat

    watcher
  end

  def list
    table = Terminal::Table.new
    table.title = 'Available Chats'
    table.headings = ['Chat Token', 'Topic', 'Members Count']

    Skype.chats.each do |chat|
      token = chat.id.match(%r{^(?<id>(.*))(;|\/)})[:id]
      table.add_row [token, chat.topic, chat.members.count]
    end

    puts table
    puts
  end

  private

  def watcher
    last_message_id = 0

    loop do
      @chat.messages.last(25).each do |message|
        next unless last_message_id < message.id

        last_message_id = message.id

        process message
      end

      sleep @config['delay']
    end
  end

  def process(message)
    if valid?(message)
      @chat.post @config['message']
      print '*'
    else
      print '.'
    end
  end

  def valid?(message)
    message.user == @config['victim'] &&
      message.body.include?(@config['substring']) &&
      Time.now - message.time < @config['delay'] * 2
  end
end

begin
  bot = SkypeBot.new
  bot.list
  bot.run
rescue Interrupt
  puts "\n\nBye-bye! ¯\\_(ツ)_/¯\n\n"
end