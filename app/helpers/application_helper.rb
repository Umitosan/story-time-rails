module ApplicationHelper
  def current_controller?(names)
    myPath = request.path
    myPath.include?(names)
  end
end
