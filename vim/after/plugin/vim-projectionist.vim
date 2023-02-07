let g:projectionist_heuristics = {
      \ "app/components/*": {
      \   "app/components/application_component.rb": {
      \     "type": "source",
      \     "template": [
      \       "class ApplicationComponent < ViewComponent::Base",
      \       "end",
      \     ],
      \   },
      \   "app/components/*_component.rb": {
      \     "type": "source",
      \     "template": [
      \       "class {basename|camelcase|capitalize}Component < ApplicationComponent",
      \       "  def initialize(*)",
      \       "  end",
      \       "end",
      \     ],
      \     "alternate": "app/components/{}.html.erb"
      \   },
      \   "app/components/*.html.erb": {
      \     "alternate": "app/components/{}.rb"
      \   },
      \ },
      \ "app/models/*": {
      \   "app/models/application_record.rb": {
      \     "type": "source",
      \     "template": [
      \       "class ApplicationRecord < ActiveRecord::Base",
      \       "end",
      \     ],
      \   },
      \   "app/models/concerns/*.rb": {
      \     "type": "source",
      \     "template": [
      \       "module {basename|camelcase|capitalize}",
      \       "  extend ActiveSupport::Concern",
      \       "",
      \       "  included do",
      \       "  end",
      \       "",
      \       "  class_methods do",
      \       "  end",
      \       "end",
      \     ],
      \   },
      \   "app/models/*.rb": {
      \     "type": "source",
      \     "template": [
      \       "class {basename|camelcase|capitalize} < ApplicationRecord",
      \       "end",
      \     ],
      \   },
      \ },
      \ "app/jobs/*": {
      \   "app/jobs/*.rb": {
      \     "type": "source",
      \     "template": [
      \       "class {basename|camelcase|capitalize} < ApplicationJob",
      \       "end",
      \     ],
      \   },
      \ },
      \ "app/controllers/*": {
      \   "app/controllers/*.rb": {
      \     "type": "source",
      \     "template": [
      \       "class {basename|camelcase|capitalize} < ApplicationController",
      \       "end",
      \     ],
      \   },
      \   "app/controllers/concerns/*.rb": {
      \     "type": "source",
      \     "template": [
      \       "module {basename|camelcase|capitalize}",
      \       "  extend ActiveSupport::Concern",
      \       "",
      \       "  included do",
      \       "  end",
      \       "",
      \       "  class_methods do",
      \       "  end",
      \       "end",
      \     ],
      \   },
      \   "app/mailers/*.rb": {
      \     "type": "source",
      \     "template": [
      \       "class {basename|camelcase|capitalize} < ApplicationMailer",
      \       "end",
      \     ],
      \   },
      \ },
      \ "app/javascript/*": {
      \   "app/javascript/controllers/*_controller.js": {
      \     "type": "source",
      \     "template": [
      \       "import {open} Controller {close} from \"@hotwired/stimulus\"",
      \       "",
      \       "export default class extends Controller {",
      \       "  connect() {",
      \       "  }",
      \       "",
      \       "  disconnect() {",
      \       "  }",
      \       "}",
      \     ],
      \   },
      \ },
      \ "test/*": {
      \   "test/system/*_test.rb": {
      \     "type": "test",
      \     "template": [
      \       "require \"application_system_test_case\"",
      \       "",
      \       "class {basename|colons|camelcase|capitalize}Test < ApplicationSystemTestCase",
      \       "  test \"{blank}\" do",
      \       "  end",
      \       "end",
      \     ],
      \   },
      \   "test/controllers/*.rb": {
      \     "type": "test",
      \     "template": [
      \       "require \"test_helper\"",
      \       "",
      \       "class {basename|colons|camelcase|capitalize} < ActionDispatch::IntegrationTest",
      \       "  test \"{blank}\" do",
      \       "  end",
      \       "end",
      \     ],
      \   },
      \   "test/integration/*.rb": {
      \     "type": "test",
      \     "template": [
      \       "require \"test_helper\"",
      \       "",
      \       "class {basename|colons|camelcase|capitalize} < ActionDispatch::IntegrationTest",
      \       "  test \"{blank}\" do",
      \       "  end",
      \       "end",
      \     ],
      \   },
      \   "test/jobs/*.rb": {
      \     "type": "test",
      \     "template": [
      \       "require \"test_helper\"",
      \       "",
      \       "class {basename|colons|camelcase|capitalize} < ActiveJob::TestCase",
      \       "  test \"{blank}\" do",
      \       "  end",
      \       "end",
      \     ],
      \   },
      \   "test/models/*.rb": {
      \     "type": "test",
      \     "template": [
      \       "require \"test_helper\"",
      \       "",
      \       "class {basename|colons|camelcase|capitalize} < ActiveSupport::TestCase",
      \       "  test \"{blank}\" do",
      \       "  end",
      \       "end",
      \     ],
      \   },
      \ },
      \ "spec/*": {
      \   "spec/system/*_spec.rb": {
      \     "type": "test",
      \     "template": [
      \       "require \"rails_helper\"",
      \       "",
      \       "RSpec.describe \"{basename|blank|capitalize}\", type: :system do",
      \       "end",
      \     ],
      \   },
      \   "spec/models/*_spec.rb": {
      \     "type": "test",
      \     "template": [
      \       "require \"rails_helper\"",
      \       "",
      \       "RSpec.describe {basename|colons|camelcase|capitalize}, type: :model do",
      \       "end",
      \     ],
      \   },
      \   "spec/requests/*_spec.rb": {
      \     "type": "test",
      \     "template": [
      \       "require \"rails_helper\"",
      \       "",
      \       "RSpec.describe \"{basename|colons|camelcase|capitalize}\", type: :request do",
      \       "end",
      \     ],
      \   },
      \   "spec/mailers/*_spec.rb": {
      \     "type": "test",
      \     "template": [
      \       "require \"rails_helper\"",
      \       "",
      \       "RSpec.describe \"{basename|colons|camelcase|capitalize}\", type: :mailer do",
      \       "end",
      \     ],
      \   },
      \   "spec/components/*_spec.rb": {
      \     "type": "test",
      \     "template": [
      \       "require \"rails_helper\"",
      \       "",
      \       "RSpec.describe \"{basename|colons|camelcase|capitalize}\", type: :component do",
      \       "end",
      \     ],
      \   },
      \   "spec/support/api/schemas/*.json": {
      \     "type": "json",
      \     "template": [
      \       "{",
      \       "  \"type\": \"object\",",
      \       "  \"required\": [",
      \       "  ],",
      \       "  \"properties\": {",
      \       "  },",
      \       "  \"additionalProperties\": false",
      \       "}",
      \     ]
      \   }
      \ },
      \ "ember-cli-build.js": {
      \   "app/routes/*.js": {
      \     "type": "route",
      \     "template": [
      \       "import Ember from 'ember';",
      \       "",
      \       "export default Ember.Route.extend({",
      \       "});",
      \     ],
      \     "alternate": "app/templates/{}.hbs"
      \   },
      \   "app/controllers/*.js": {
      \     "type": "controller",
      \     "template": [
      \       "import Ember from 'ember';",
      \       "",
      \       "export default Ember.Controller.extend({",
      \       "});",
      \     ],
      \     "alternate": "app/templates/{}.hbs"
      \   },
      \   "app/templates/components/*.hbs": {
      \     "alternate": "tests/integration/components/{}-test.js"
      \   },
      \   "app/components/*.js": {
      \     "type": "component",
      \     "template": [
      \       "import Ember from 'ember';",
      \       "",
      \       "export default Ember.Component.extend({",
      \       "});",
      \     ],
      \     "alternate": "app/templates/components/{}.hbs"
      \   },
      \   "app/templates/*.js": {
      \     "type": "template",
      \     "template": [
      \       "{{outlet}}",
      \     ]
      \   },
      \   "app/mixins/*.js": {
      \     "type": "mixin",
      \     "template": [
      \       "import Ember from 'ember';",
      \       "",
      \       "export default Ember.Mixin.create({",
      \       "});",
      \     ],
      \   },
      \   "app/models/*.js": {
      \     "type": "model",
      \     "template": [
      \       "import DS from 'ember-data';",
      \       "",
      \       "export default DS.Model.extend({",
      \       "});",
      \     ],
      \     "alternate": "app/adapters/{}.js"
      \   },
      \   "app/adapters/*.js": {
      \     "type": "adapter",
      \     "template": [
      \       "import ApplicationAdapter from './application';",
      \       "",
      \       "export default ApplicationAdapter.extend({",
      \       "});",
      \     ],
      \     "alternate": "app/serializers/{}.js"
      \   },
      \   "app/services/*.js": {
      \     "type": "service",
      \     "template": [
      \       "import Ember from 'Ember';",
      \       "",
      \       "export default Ember.Service.extend({",
      \       "});",
      \     ],
      \   },
      \   "app/serializers/*.js": {
      \     "type": "serializer",
      \     "template": [
      \       "import ApplicationSerializer from './application';",
      \       "",
      \       "export default ApplicationSerializer.extend({",
      \       "});",
      \     ],
      \     "alternate": "app/models/{}.js"
      \   },
      \   "app/mirage/factories/*.js": {
      \     "type": "factory",
      \     "template": [
      \       "import Mirage from 'ember-cli-mirage';",
      \       "",
      \       "export default Mirage.Factory.extend({",
      \       "});",
      \     ],
      \     "alternate": "app/models/{}.js"
      \   },
      \   "tests/unit/models/*-test.js": {
      \     "alternate": "app/models/{}.js"
      \   },
      \   "tests/integration/components/*-test.js": {
      \     "alternate": "app/components/{}.js"
      \   },
      \ },
      \}
