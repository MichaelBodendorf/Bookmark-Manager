

describe '#list' do
  it 'returns a list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

    bookmarks = Bookmark.list

    expect(bookmarks).to include("http://www.makersacademy.com")
    expect(bookmarks).to include("http://www.destroyallsoftware.com")
    expect(bookmarks).to include("http://www.google.com")
  end
end

describe '#add' do
 it 'add a bookmark' do
  Bookmark.add('http://example.com')

  connection = PG.connect(dbname: 'bookmark_manager_test')
  response = connection.exec("SELECT id, url FROM bookmarks WHERE url='http://example.com';")

  expect(response.count).not_to eq(0)
 end
end

