defmodule AshEventsTest.Accounts.SystemActor do
  use Ash.Resource,
    otp_app: :ash_events_test,
    domain: AshEventsTest.Accounts

  attributes do
    attribute :name, :string, primary_key?: true, allow_nil?: false
  end
end
