DEFAULT_PASSWORD = 'innovationhub2014'

user = User.create(
  email: "admin@startupchile.org",
  password: DEFAULT_PASSWORD,
  password_confirmation: DEFAULT_PASSWORD
)

user.add_role "admin"