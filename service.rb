class Service
  attr_accessor :config, :logger, :client

  def initialize(config, logger, client = nil)
    @config = config
    @logger = logger
    @client = client
  end

  def call
    raise NotImplementedError
  end

  def self.call(config, logger, client = nil)
    new(config, logger, client).call
  end

  def self.[](config, logger, client = nil)
    new(config, logger, client)
  end

  def self.[]=(config, logger, client = nil)
    new(config, logger, client)
  end
end
