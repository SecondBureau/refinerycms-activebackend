json.array! @images do |image|
  json.image image.url
  json.thumb image.thumbnail(geometry: '300x300#').url
  json.folder 'small'
end