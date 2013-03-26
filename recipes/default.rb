package 'locales' do
  action :upgrade
end

locale = node[:locale][:locale]
lang   = node[:locale][:lang]

case node.platform
when "debian"
  template "/etc/locale.gen" do
    source "etc/locale.gen"
    variables :locale => locale
  end

  execute "locale-gen" do
    action :nothing
    subscribes :run, "template[/etc/locale.gen]"
  end
when "ubuntu"
  locale.each do |lang_with_encoding|
    lang, _ = lang_with_encoding.split(' ')
    execute "locale-gen #{lang}"
  end
end

execute "update-locale LANG=#{lang}" do
  action :nothing
  subscribes :run, "template[/etc/locale.gen]"
end
