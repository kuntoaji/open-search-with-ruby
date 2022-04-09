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

# Add a document to the index.
document = {
  'title': 'Moneyball',
  'director': 'Bennett Miller',
  'year': '2011'
}

response = client.index(
  index: index_name,
  body: document,
  id: id,
  refresh: true
)

puts 'Adding document:'
puts response
