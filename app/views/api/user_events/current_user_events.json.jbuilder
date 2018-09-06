# json.attending @events
json.array! @events.each do |event| 
  json.id event.id
  json.title event.title
  json.address event.address
  json.date event.date
  json.tags event.tags
end