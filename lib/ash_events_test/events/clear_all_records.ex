defmodule AshEventsTest.Events.ClearAllRecords do
  use Ash.Resource,
    otp_app: :ash_events_test,
    domain: AshEventsTest.Events
end
