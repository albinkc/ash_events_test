defmodule AshEventsTest.TestDomain.TestResource do
  use Ash.Resource,
    otp_app: :ash_events_test,
    domain: AshEventsTest.TestDomain,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshEvents.Events]

  postgres do
    table "test_resources"
    repo AshEventsTest.Repo
  end

  events do
    event_log AshEventsTest.Events.Event
  end

  actions do
    defaults [:read, :destroy, create: [:name], update: [:name]]
  end

  attributes do
    uuid_v7_primary_key :id

    attribute :name, :string do
      allow_nil? false
      public? true
    end

    timestamps()
  end
end
