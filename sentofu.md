
[ ] Sentifi.on_response(res)
    Sentifi.common.on_response(res)
    Sentifi.company.on_response(res)

[x] Sentifi.on_request(req) ??? turn ISINs into topic_ids...
    NO

[x] ```
    <head><title>404 Not Found</title></head>
    <body bgcolor="white">
    <center><h1>404 Not Found</h1></center>
    <hr><center>nginx</center>
    </body>
    </html>
    ':
      json/ext/Parser.java:236:in `parse'
	  /Users/jmettraux/.rubies/jruby-9.2.5.0/lib/ruby/stdlib/json/common.rb:156:in `parse'
	  /Users/jmettraux/w/sentofu/lib/sentofu/http.rb:50:in `get_and_parse'
	  /Users/jmettraux/w/sentofu/lib/sentofu/api.rb:184:in `query'
    ```
    deal with errors, here, for example, 404

[o] time (monotonous) requests
[o] point to
    https://api.swaggerhub.com/apis/sentifi-api-docs/sentifi-intelligence_company_api/
    instead of
    https://api.swaggerhub.com/apis/sentifi-api-docs/sentifi-intelligence_company_api/1.0.0/
    or even, point to
    https://api.swaggerhub.com/apis/sentifi-api-docs/
[x] look at the
    https://api.swaggerhub.com/apis/sentifi-api-docs/
    structure, beware stacks of apis version (for instance company 1.0.0 vs
    company 1.1.0)...

## src

