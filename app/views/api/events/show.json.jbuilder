

  json.set! @event.id do
    json.extract! @event, :id, :name, :host_id, :address, :date, :hour, :information, :occured, :location_id
    json.set! :host do
      json.extract! @event.host, :id, :name, :img_url
    end
  end
