package :locales

locale = node[:locale][:locale]
lang   = node[:locale][:lang]

template "/etc/locale.gen" do
  source "etc/locale.gen"
  variables :locale => locale
end

execute "locale-gen" do
  action :nothing
  subscribes :run, resources("template[/etc/locale.gen]")
end

execute "update-locale LANG=#{lang}" do
  action :nothing
  subscribes :run, resources("template[/etc/locale.gen]")
end
