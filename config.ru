
require 'rack/contrib/try_static'

use Rack::TryStatic,
:root => "\_site",
:urls => %w[/blog],
:try => ['.html', 'index.html', '/index.html']

run lambda { |env|
return [404, {'Content-Type' => 'text/html'}, ['Not Found']]
}
