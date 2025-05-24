defmodule AshEventsTest.TestDomain do
  use Ash.Domain, otp_app: :ash_events_test, extensions: [AshAdmin.Domain]

  admin do
    show? true
  end

  resources do
    resource AshEventsTest.TestDomain.TestResource
  end
end
