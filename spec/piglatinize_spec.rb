require './lib/piglatinizer'

RSpec.describe Piglatinizer do
  describe '#piglatinize' do
    context 'when a word in a phrase begins with consonant letters' do
      let(:test_cases) do
        [
          ['pig latin banana happy Duck mE', 'igpay atinlay ananabay appyhay uckDay Emay'],
          ['too smile string stupid glOve trash floor store', 'ootay ilesmay ingstray upidstay Oveglay ashtray oorflay orestay']
        ]
      end

      it 'all letters before the initial vowel are placed at the end of the word sequence and "ay" is added' do
        test_cases.each do |test_pair|
          expect(subject.piglatinize(test_pair.first)).to eq(test_pair.last)
        end
      end
    end

    context 'when a word in a phrase begins with vowel letters' do
      let(:test_cases) do
        [
          ['eat omelet are egg', 'eatay omeletay areay eggay'],
          ['expLain always ends I', 'expLainay alwaysay endsay Iay']
        ]
      end

      it '"ay" is added' do
        test_cases.each do |test_pair|
          expect(subject.piglatinize(test_pair.first)).to eq(test_pair.last)
        end
      end
    end
  end

  describe '#piglatinize_word' do
    context 'when a word begins with consonant letters' do
      let(:test_cases) do
        [
          %w[pig igpay],
          %w[latin atinlay],
          %w[banana ananabay],
          %w[happy appyhay],
          %w[Duck uckDay],
          %w[mE Emay],
          %w[too ootay],
          %w[smile ilesmay],
          %w[string ingstray],
          %w[stupid upidstay],
          %w[glOve Oveglay],
          %w[trash ashtray],
          %w[floor oorflay],
          %w[store orestay]
        ]
      end

      it 'all letters before the initial vowel are placed at the end of the word sequence and "ay" is added' do
        test_cases.each do |test_pair|
          expect(subject.piglatinize_word(test_pair.first)).to eq(test_pair.last)
        end
      end
    end

    context 'when a word begins with vowel letters' do
      let(:test_cases) do
        [
          %w[eat eatay],
          %w[omelet omeletay],
          %w[are areay],
          %w[egg eggay],
          %w[expLain expLainay],
          %w[always alwaysay],
          %w[ends endsay],
          %w[I Iay]
        ]
      end

      it '"ay" is added' do
        test_cases.each do |test_pair|
          expect(subject.piglatinize_word(test_pair.first)).to eq(test_pair.last)
        end
      end
    end
  end
end
