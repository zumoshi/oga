require 'spec_helper'

describe Oga::CSS::Parser do
  describe ':has pseudo class' do
    it 'parses the :has(x) pseudo class' do
      expect(parse_css(':has(x)')).to eq(parse_xpath('descendant::*[descendant::x]'))
    end

    it 'parses the x:has(y) pseudo class' do
      expect(parse_css('x:has(y)')).to eq(parse_xpath('descendant::x[descendant::y]'))
    end

    it 'parses the x:has(#foo) pseudo class' do
      expect(parse_css('x:has(#foo)')).to eq(
        parse_xpath('descendant::x[descendant::*[@id="foo"]]')
      )
    end
  end
end
