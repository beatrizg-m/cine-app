require 'rails_helper'

describe 'usuario ve detalhes do filme' do
  it 'a partir da tela inicial' do
    movie = Movie.create!(title: 'Star Wars', release_year: 2000, synopsis: 'Guerra nas estrelas')

    visit root_path
    click_on 'Star Wars'

    expect(page).to have_content('Filme: Star Wars')
    expect(page).to have_content('Ano de lançamento: 2000')
    expect(page).to have_content('Sinopse: Guerra nas estrelas')
    expect(current_path).to eq movie_path(movie.id)

  end
end
