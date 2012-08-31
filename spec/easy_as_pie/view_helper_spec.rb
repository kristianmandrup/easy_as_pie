require 'spec_helper'

describe EasyAsPie::ViewHelper do
  include ControllerTestHelpers,  
          EasyAsPie::ViewHelper

  # <div class="chart" data-percent="73">73%</div>
  describe '.easy_as_pie percent, *args' do
    context 'no arguments' do
      specify do
        expect { easy_as_pie }.to raise_error(ArgumentError)
      end
    end

    context '50%' do
      specify do
        easy_as_pie(50).should == "<div class=\"chart\" data-percent=\"50\">50%</div>"
      end
    end

    context "50%, 'of rooms'" do
      specify do
        easy_as_pie(50, '50 rooms').should == "<div class=\"chart\" data-percent=\"50\">50 rooms</div>"
      end
    end
  end
end
