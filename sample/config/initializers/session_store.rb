# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sample_session',
  :secret      => '1b0016bd713580cd3010b8b5abfbe4f3f72eca7e7593a8822201baf64a5976cc2ab08117d5b966e4fa94a8712ed568a68fd8831f22b04520d0e69d946d3eb943'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
