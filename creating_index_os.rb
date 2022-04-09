require 'opensearch'

# If you want to use authentication credentials
client = OpenSearch::Client.new(
  host: 'https://admin:admin@localhost:9200',    # For testing only. Don't store credentials in code.
  transport_options: { ssl: { verify: false } }  # For testing only. Use certificate for validation.
)

# If you don't want to use authentication credentials
# client = OpenSearch::Client.new url: 'http://localhost:9200', log: true

# Create an index with non-default settings.
index_name = 'example-index'
index_body = {
  'settings': {
    'index': {
      'number_of_shards': 4
    }
  }
}

response = client.indices.create(
  index: index_name,
  body: index_body
)

puts 'Creating index:'
puts response
