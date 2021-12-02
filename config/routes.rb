Rails.application.routes.draw do
  resources :sequencers
  resources :albums
  resources :album_lists
  resources :artist_drafts
  resources :tracks
  resources :playlists
  resources :artists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
