class LoggedArea < SitePrism::Page
    element :ours_specialist_button, '.nav-page-link[routerlink="/busca/"]'
    element :text_none_specialist, '.h5[_ngcontent-webapp-c10]'
    elements :more_info_about, '.btn.btn-primary.btn-round.mt-3'
end
