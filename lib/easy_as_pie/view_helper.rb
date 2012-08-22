module EasyAsPie
  module ViewHelper

    # <div class="chart" data-percent="73">73%</div>
    def easy_as_pie percent, *args
      raise ArgumentError, "Must take a percent argument" unless percent
      pie_options = {:"data-percent" => percent, :class => 'chart'}
      
      options = args.extract_options!
      pie_options.merge!(options || {})

      label = args.first || "#{percent}%"

      content_tag :div, label, pie_options
    end
  end
end