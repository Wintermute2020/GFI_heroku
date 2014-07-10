AvatarsForRails.setup do |config|
  # Filters to run before updating the avatar
  # config.controller_filters = [ :authenticate_user! ]

  # The method to get the avatarable in the controller
  # config.controller_avatarable = :current_user

  # The default styles that will be generated
   config.avatarable_styles = { small:  '200x200',
                                medium: '500x500' }

  # The tmp path inside public/
  # config.public_tmp_path = File.join('system', 'tmp')
end
