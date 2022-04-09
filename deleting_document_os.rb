require 'opensearch'

# If you want to use authentication credentials
client = OpenSearch::Client.new(
  host: 'https://admin:admin@localhost:9200',    # For testing only. Don't store credentials in code.
  transport_options: { ssl: { verify: false } }  # For testing only. Use certificate for validation.
)

# If you don't want to use authentication credentials
# client = OpenSearch::Client.new url: 'http://localhost:9200', log: true

index_name = 'example-index'
id = '1'

# Delete the document.
response = client.delete(
  index: index_name,
  id: id
)

puts 'Deleting document:'
puts response
