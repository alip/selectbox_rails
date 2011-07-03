# jQuery selectbox plugin
For use with Rails 3.1 asset pipeline

## Install

```ruby
gem 'jquery-rails'
gem 'selectbox_rails'
```

Edit app/assets/javascripts/application.js and add

```javascript
//= require jquery
//= require selectbox
```


and in app/assets/stylesheets/application.css add

```css
/*
*= require_self
*= require selectbox
*/
```

## Usage

```javascript
$('select').selectbox();

### Credits

The jQuery code was written by Dimitar Ivanov

Project links
http://code.google.com/p/select-box/
http://www.bulgaria-web-developers.com/projects/javascript/selectbox/
