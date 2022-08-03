Rails.application.routes.draw do
  # エラー原因: 命名規則に反してる
  # 修正の意図: 単数系（blog）だったのを複数形（blogs）に変更
  resources :blogs do
    resources :comments, only: [:create, :destroy]
  end
end
