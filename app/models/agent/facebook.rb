module AutoPostSystem
  module Agent
    class Facebook

      def initialize
        conf = load_config
        @email = conf[:email]
        @password = conf[:password]
        @client = init_client
      end

      def load_config
        YAML.load_file('load file pass')
      end

      def init_client
        conn = Faraday.new(:url => 'http://hoge') do |faraday|
          faraday.request :multipart
          faraday.request :url_encoded
          faraday.adapter :net_http
        end
      end

      def login
        client.post 'http://login.url', ({email: email, password: password})
        client.get 'http://top.url'
      end
    end
  end
end
