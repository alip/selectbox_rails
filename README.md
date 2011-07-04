# jQuery selectbox plugin
For use with Rails 3.1 asset pipeline

## Install

Add to your Gemfile

```ruby
gem 'jquery-rails'
gem 'selectbox_rails'
```

bundle install

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

You don't have to use the stylesheet provided by this plugin. Selectbox rewrites the
select element as an unordered list that looks like something like this...

```html
<div class='sbHolder'>
  <ul class='sbOptions'>
    <li>
      <a></a>
    </li>
  </ul>
</div>
```

So it's very easy to style.

## Usage

```javascript
// default
$('select').selectbox();

// with options
$("#country_id").selectbox({
  onOpen: function (inst) {
    //console.log("open", inst);
  },
  onClose: function (inst) {
    //console.log("close", inst);
  },
  onChange: function (val, inst) {
    $.ajax({
      type: "GET",
      data: {country_id: val},
      url: "ajax.php",
      success: function (data) {
        $("#boxCity").html(data);
        $("#city_id").selectbox();
      }
    });
  },
  effect: "slide"
});


$(".nova").selectbox({
  effect: "fade"
});

$("#vehicle_id").selectbox({
  speed: 400
});
```

Examples found <http://www.bulgaria-web-developers.com/projects/javascript/selectbox/>

### Credits

The jQuery code was written by Dimitar Ivanov

Project links:
<http://code.google.com/p/select-box/>
