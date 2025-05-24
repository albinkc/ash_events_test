defmodule AshEventsTest.TestDomain do
  use Ash.Domain,
    otp_app: :ash_events_test

  resources do
    resource AshEventsTest.TestDomain.TestResource
  end
end
