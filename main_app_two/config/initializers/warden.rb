Warden::Manager.serialize_into_session do |user|
  [user.class.name, user.id]
end

Warden::Manager.serialize_from_session do |key|
  class_name, id = key
  class_name.constantize.find_by(id: id)
end
