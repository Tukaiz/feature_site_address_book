require "feature_site_address_book/version"

module FeatureSiteAddressBook
  class FeatureSiteAddressBookFeatureDefinition
    include FeatureSystem::Provides
    def permissions
      []
    end
  end

  module Authorization
    module Permissions
    end
  end
end
require 'feature_site_address_book/railtie' if defined?(Rails)
