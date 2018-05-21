Rails.application.routes.draw do
  # get 'boards' => 'boards#index'#URL『/boards』にアクセスしたら、boardsコントローラのindexアクションに飛ばす
  # get 'boards/new' => 'boards#new'#URL『boards/new』にアクセスしたら、boardsコントローラのnewアクションに飛ばす
  # post 'boards' => 'boards#create'#URL『boards』にアクセスしたら、boardsコントローラのcreateアクションに飛ばす
  # get 'boards/:id' => 'boards#show' #URL『boards/:id』にアクセスしたら、boardsコントローラのshowアクションに飛ばす
  # get 'boards/:id/edit' => 'boards#edit' #URL『boards/:id/edit』にアクセスしたら、boardsコントローラのeditアクションに飛ばす
  # put 'boards/:id' => 'boards#update'
  # delete 'boards/:id' => 'boards#destroy'

  resources :boards do
    resources :comments
  end

  # トップページを掲示板の一覧ページに設定
  root to: 'boards#index'

end
