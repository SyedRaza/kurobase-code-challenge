object @movie
    attributes :id, :title, :created_at
child(:genres) { attributes :title }
    

