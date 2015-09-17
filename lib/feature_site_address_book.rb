require "feature_site_address_book/version"

module FeatureSiteAddressBook
  # This will be executed in the ability class, by defalut, if the Feature is enabled.
  class Default
    def self.permissions
      [
        "can_access_global_site_address_book"
      ]
    end
  end
  class FeatureSiteAddressBookFeatureDefinition
    include FeatureSystem::Provides
    def permissions
      [
        {
          can: false,
          callback_name: 'cannot_access_global_site_address_book',
          name: 'Cannot View The Site Global Address Book'
        }
      ]
    end
  end

  module Authorization
    module Permissions

      def can_access_global_site_address_book
        can :access_global_site_address_book, Address
      end

      def cannot_access_global_site_address_book
        cannot :access_global_site_address_book, Address
      end

    end
  end
end
require 'feature_site_address_book/railtie' if defined?(Rails)
