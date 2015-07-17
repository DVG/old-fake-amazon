class App
  include Capybara::DSL
  include MiscHelpers
  # Page Object Accessors
  # Converts a method call to a page object class and establishes a new instance
  # @app.my_access  # => MyAccess
  # @app.asset_edit # => AssetEdit
  def method_missing(name)
    klass = name.to_s.camelize
    create_page_object_or_raise_error(klass)
  end

  # Navigation
  # Accepts a PageObejct class and an optional list of parameters to pass to the url
  # @app.navigate_to(AssetNew)
  # @app.navigate_to(AssetEdit, id: Requestable::Asset.last.id)
  def navigate_to(page_klass, options=nil)
    if page_klass.is_a?(Symbol)
      page_klass = constantize(page_klass)
    end
    page = page_klass.new
    if options
      page.load(options)
      wait_for_ajax if options[:wait_for_ajax]
    else
      page.load
    end
    page
  end

  def login_as(user)
    self.navigate_to(:login_page).login_as(user)
  end

  def on(page_klass, navigate: false)
    yield create_page_object_or_raise_error(page_klass.to_s.camelize)
  end

private

  def constantize(symbol)
    symbol.to_s.camelize.constantize
  end

  def constant_exists?(klass_string)
    Object.const_defined? klass_string
  end

  def create_page_object_or_raise_error(klass_string)
    if constant_exists? klass_string
      return klass_string.constantize.new
    else
      raise StandardError, "There's no page object currently defined called #{klass_string}. Create one under features/support/pages"
    end
  end
end