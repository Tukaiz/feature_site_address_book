module FeatureSiteAddressBook
  class Railtie < Rails::Railtie

    initializer "my_railtie.configure_rails_initialization" do |app|
      FeatureBase.register(app, FeatureSiteAddressBook)
      FeatureBase.register_autoload_path(app, "feature_site_address_book")
    end

    config.after_initialize do
      FeatureBase.inject_feature_record("Global Site Address Book",
        "FeatureSiteAddressBook",
        "Enables a global address book."
      )
      FeatureBase.inject_permission_records(
        FeatureSiteAddressBook,
        FeatureSiteAddressBookFeatureDefinition.new.permissions
      )
    end

  end
end
