class BookingPolicy
  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope.where(guide: user) if user.type == "Guide"
    end
  end
end
