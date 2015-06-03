# Kelisto Contentful

Query your contentful data very easily.
This gem is a wrapper for [Ruby Contenful Gem project](https://github.com/contentful/contentful.rb).

## Setup
Follow these steps for setup the gem.

### Initializer
Run this generator to copy the initializer on your project:
```bash
$ rails generate kelisto_contentful:initializer
```

then review the copied file to configure your keys and spaces:

```ruby
KelistoContentful.connect! access_token: "YOUR_ACCESS_TOKEN",
						   space: "YOUR_SPACE_ID"
```

## Usage

### Content types
Access to any of your content types (defined on your space) with it's name.
For example, if your content type is 'Product Details' your may access to that content_type as

```ruby
KelistoContentful.product_details
```

You can also list your content types by

```ruby
KelistoContentful.content_types
```

### Entries
To query and order entries from your content types you can use:

- ```where``` to query any **symbol** field defined on the content_type
- ```order_by``` to order by a field name

Then use ```run!``` to execute the query.

For example, let's say we want all the product details about 'CocaCola' cans ordered by release year.

```ruby
KelistoContentful.product_details.where(name: 'CocaCola', type: 'can').order_by('year').run!
```


## License
This project uses [*MIT-LICENSE*](http://en.wikipedia.org/wiki/MIT_License).
