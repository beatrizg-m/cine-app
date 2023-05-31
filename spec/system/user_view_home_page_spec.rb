require 'rails_helper'

describe 'usuario vê tela inicial' do
  it 'com sucesso' do

    visit root_path

    expect(current_path).to eq root_path
    expect(page).to have_content 'CineApp'
  end

  it 'e vê lista de filmes' do
    Movie.create!(title: 'Star Wars', release_year: 2000, synopsis: 'Guerra nas estrelas')

    visit root_path

    expect(current_path).to eq root_path
    expect(page).to have_content 'CineApp'
    expect(page).to have_content 'Star Wars'
  end

end
