SpreeGlobalization
==================

Spree intergation for translation using Globalize3
The model translated are: PRODUCT, PROMOTION, IMAGE, OPTION_TYPE, OPTION_VALUE, TAXONOMY, TAXON, SHIPPING_METHOD


Basic Installation
------------------

1. Add the following to your Gemfile
<pre>
  gem 'spree_globalization', :github => 'damianogiacomello/spree_globalization', :branch => '1-3-stable
</pre>
2. Run `bundle install`
3. To copy and apply migrations run:
<pre>
	rails g spree_globalization:install
</pre>

WORK IN PROGRESS

Copyright (c) 2012 [Damiano Giacomello], released under the New BSD License
