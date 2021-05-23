# frozen_string_literal: true

require_relative "find_promo_app/version"
require_relative "find_promo_app/cli"
require_relative "find_promo_app/promos"

##called from within promo
require_relative "find_promo_app/scraper"

require "nokogiri"
require "open-uri"
# require "httparty"
require "byebug"
require "pry"