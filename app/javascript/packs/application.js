// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
require('jquery')
require('packs/search')
require('packs/railway_stations')
require('packs/routes')
require('packs/trains')
require('packs/cars')
require('packs/dropdown')
// require('packs/tickets')
require('packs/test')
Rails.start()
Turbolinks.start()
ActiveStorage.start()
