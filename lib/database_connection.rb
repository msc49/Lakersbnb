# frozen_string_literal: true

require 'pg'

class DatabaseConnection
  def self.setup
    dbname = if ENV['ENVIRONMENT'] == 'test'
               'Lakersbnb_test'
             else
               'Lakersbnb'
             end
    @connection = PG.connect(dbname: dbname)
  end

  class << self
    attr_reader :connection
  end

  def self.query(sql, params = [])
    setup
    @connection.exec_params(sql, params)
  end
end
