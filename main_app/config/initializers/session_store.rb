Rails.application.config.session_store :cookie_store,
  key: '_shared_session',
  domain: :all     # para compartir en subdominios
#  tld_length: 1,
#  secure: false,    # o true en producción HTTPS
#  same_site: :lax,   # o :none con HTTPS y cross-site
#  same_site: :none

