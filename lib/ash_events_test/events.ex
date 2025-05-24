defmodule AshEventsTest.Events do
  use Ash.Domain,
    otp_app: :ash_events_test

  resources do
    resource AshEventsTest.Events.Event
    resource AshEventsTest.Events.ClearAllRecords
  end
end
