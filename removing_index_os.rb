require 'opensearch'

# If you want to use authentication credentials
client = OpenSearch::Client.new(
  host: 'https://admin:admin@localhost:9200',    # For testing only. Don't store credentials in code.
  transport_options: { ssl: { verify: false } }  # For testing only. Use certificate for validation.
)

index_name = 'example-index'

# Delete the index.
response = client.indices.delete(
  index: index_name
)

puts 'Deleting index:'
puts response
