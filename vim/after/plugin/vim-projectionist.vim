let g:projectionist_heuristics = {
      \ "spec/*": {
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
