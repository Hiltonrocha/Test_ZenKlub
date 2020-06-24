class HomePage < SitePrism::Page
    set_url 'https://zenklub.com.br/'
    element :btn_login, '.nav-for-link[routerlink="/auth/login"]'
end

