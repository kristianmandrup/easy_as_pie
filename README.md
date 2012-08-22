Easy as pie
==============

A little Rails wrapper for [easy-pie-chart](https://github.com/rendro/easy-pie-chart) which adds the assets to the asset pipeline and adds some useful Rails helpers.

Usage
-----------

In Gemfile:

`gem 'easy_as_pie'`

Configuration
-----------

In `application.css` manifest file:

```css
/*
 * require jquery.easy-pie-chart
*/
```

Using Compass, f.ex in `application.css.scss.erb`

```
@import 'jquery.easy-pie-chart';
```

In `application.js` manifest file:

```javascript
//= require jquery.easy-pie-chart
```

Optionally include `excanvas` as well, which can be used if/when canvas is not available!

Easy pie chart
-----------

Easy pie chart is a jQuery plugin that uses the canvas element to render simple pie charts for single values.
These chars are highly customizable and very easy to implement.

![](https://github.com/rendro/easy-pie-chart/raw/master/img/easy-pie-chart.png)

Get started
-----------

Follow Configuration instructions above and also include jQuery 1.7+.

The second step is to add a element to your site to represent chart and add the `data-percent` attribute with the percent number the pie chart should have:

    <div class="chart" data-percent="73">73%</div>

The engine adds a view helper `easy_as_pie(percent, label = nil)` to all Rails views ;)

```haml
= easy_as_pie 73
```

Or with a custom label:

```erb
<%= easy_as_pie (6/24.0 * 100), '6 done' %>
```

6 out of 24 done is 25% :)

Finally you have to initialize the plugin with your desired configuration:

```javascript
$(document).ready(function() {
    $('.chart').easyPieChart({
        //your configuration goes here
    });
});
```

Configuration parameter
-----------------------

You can pass a set of these options to the initialize function to set a custom behaviour and look for the plugin.

<table>
    <tr>
        <th>Property (Type)</th>
        <th>Default</th>
        <th>Description</th>
    </tr>
    <tr>
        <td><strong>barColor</strong></td>
        <td>#ef1e25</td>
        <td>The color of the curcular bar. You can pass either a css valid color string like rgb, rgba hex or string colors. But you can also pass a function that accepts the current percentage as a value to return a dynamically generated color.</td>
    </tr>
    <tr>
        <td><strong>trackColor</strong></td>
        <td>#f2f2f2</td>
        <td>The color of the track for the bar, false to disable rendering.</td>
    </tr>
    <tr>
        <td><strong>scaleColor</strong></td>
        <td>#dfe0e0</td>
        <td>The color of the scale lines, false to disable rendering.</td>
    </tr>
    <tr>
        <td><strong>lineCap</strong></td>
        <td>round</td>
        <td>Defines how the ending of the bar line looks like. Possible values are: <code>butt</code>, <code>round</code> and <code>square</code>.</td>
    </tr>
    <tr>
        <td><strong>lineWidth</strong></td>
        <td>3</td>
        <td>Width of the bar line in px.</td>
    </tr>
    <tr>
        <td><strong>size</strong></td>
        <td>110</td>
        <td>Size of the pie chart in px. It will always be a square.</td>
    </tr>
    <tr>
        <td><strong>animate</strong></td>
        <td>false</td>
        <td>Time in milliseconds for a eased animation of the bar growing, or false to deactivate.</td>
    </tr>
    <tr>
        <td><strong>onStart</strong></td>
        <td>$.noop</td>
        <td>Callback function that is called at the start of any animation (only if animate is not false).</td>
    </tr>
    <tr>
        <td><strong>onStop</strong></td>
        <td>$.noop</td>
        <td>Callback function that is called at the end of any animation (only if animate is not false).</td>
    </tr>
</table>

Public plugin methods
-----------

If you want to update the current percentage of the a pie chart, you can call the `update method. The instance of the plugin is saved in the jQuery-data.

<script type="text/javascript">
$(function() {
    //create instance
    $('.chart').easyPieChart({
        animate: 2000
    });
    //update instance after 5 sec
    setTimeout(function() {
        $('.chart').data('easyPieChart').update(40);
    }, 5000);
});
</script>

## Contributing to easy_as_pie
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

