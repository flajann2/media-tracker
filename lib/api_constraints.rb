class ApiConstraints
  def initialize(version: nil, default: nil)
    @version = version
    @default = default
  end

  def matches?(req)
    @default || req.headers['Accept'].include?("application/vnd.mediatracker.v#{@version}")
  end
end
