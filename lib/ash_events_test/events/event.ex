defmodule AshEventsTest.Events.Event do
  use Ash.Resource,
    otp_app: :ash_events_test,
    domain: AshEventsTest.Events,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshEvents.EventLog]

  postgres do
    table "events"
    repo AshEventsTest.Repo
  end

  event_log do
    persist_actor_primary_key :user_id, MyApp.Accounts.User
    persist_actor_primary_key :system_actor, MyApp.Accounts.SystemActor, attribute_type: :string
  end
end
