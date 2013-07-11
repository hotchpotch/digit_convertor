# coding: utf-8
require "digit_convertor"

describe DigitConvertor do
  context 'use default charset' do
    let(:d62) { DigitConvertor.new }
    let(:large_number) { 98798798735665662 }

    describe '#n' do
      it { expect(d62.n).to eq 62 }
    end

    describe '#to' do
      it { expect(d62.to(62)).to eq '10' }
    end

    describe '#from' do
      it { expect(d62.from('10')).to eq 62 }
    end

    context 'with large number' do
      it 'converts correctly' do
        expect(d62.from(d62.to(large_number))).to eq large_number
      end
    end
  end

  context 'use 31 characters' do
    let(:charset_31) { [('0'..'9'), ('a'..'u')].map {|r| r.to_a }.flatten }
    let(:d31) { DigitConvertor.new(charset_31) }

    describe '#n' do
      it { expect(d31.n).to eq 31 }
    end

    describe '#to' do
      it { expect(d31.to(32)).to eq 32.to_s(31) }
    end
  end

  context 'use multibyte characters' do
    let(:charset_multi) { %w{☆ ★ ♪ △ ▼ ○ ● ◎} }
    let(:d8) { DigitConvertor.new(charset_multi) }

    describe '#to' do
      it { expect(d8.to(987987987)).to eq "◎♪◎☆◎☆☆☆♪△" }
    end
  end
end
