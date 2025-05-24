defmodule AshEventsTest.Accounts do
  use Ash.Domain, otp_app: :ash_events_test, extensions: [AshAdmin.Domain]

  admin do
    show? true
  end

  resources do
    resource AshEventsTest.Accounts.Token
    resource AshEventsTest.Accounts.User
    resource AshEventsTest.Accounts.SystemActor
  end
end
