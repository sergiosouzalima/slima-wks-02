def handler event
  render js: File.read('bulma.js')
end
