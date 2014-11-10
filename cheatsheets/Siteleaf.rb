cheatsheet do
  title 'Siteleaf'               # Will be displayed by Dash in the docset list
  docset_file_name 'siteleaf'    # Used for the filename of the docset
  keyword 'siteleaf'             # Used as the initial search keyword (listed in Preferences > Docsets)
  # resources 'resources_dir'  # An optional resources folder which can contain images or anything else

  introduction 'A Dash cheatsheet for [Siteleaf](http://www.siteleaf.com). Manage your content online with Siteleaf, then publish static files to host anywhere you want. It\'s like having a web-based backend for Jekyll that your clients can actually use.'  # Optional, can contain Markdown or HTML

  # A cheat sheet must consist of categories
  category do
    id 'Site Variables'  # Must be unique and is used as title of the category

    entry do
      name 'Site title'    
      notes 'The title of your website.'      # Optional longer explanation, can contain Markdown or HTML
      command 'site.title'
    end
    entry do
      name 'Site domain'
      command 'site.domain'
      notes 'Your website’s domain name (ie. barlawrence.com).'
    end
    entry do
      name 'Site permalink'
      command 'site.permalink'
      notes 'Your website’s full address (ie. http://barlawrence.com).'
    end
    entry do
      name 'Site pages'
      command 'site.pages'
      notes 'A nested array of pages.'
    end
    entry do
      name 'Site posts'
      command 'site.posts'
      notes 'Array of all posts in all pages.'
    end
    entry do
      name 'Site RSS feed'
      command 'site.feed_url'
      notes 'URL to your website’s RSS feed (ie. http://barlawrence.com/feed.xml).'
    end
    entry do
      name 'Site sitemap URL'
      command 'site.sitemap_url'
      notes 'URL to your website’s Sitemap file (ie. http://barlawrence.com/sitemap.xml).'
    end
    entry do
      name 'Site publish date'
      command 'site.date'
      notes 'Date of most recent publish.'
    end    
  end

  category do
    id 'Content Variables'  
    entry do
      name 'Type'
      command 'type'    
      notes 'Can be `page`, `post`, `archive`, `taxonomy`, or `tag`.'      
    end
    entry do
      name 'Title'
      command 'title'    
      notes 'Title of content'      
    end    
    entry do
      name 'URL'
      command 'url'    
      notes 'URL to object without domain (e.g. `/blog/my-post`)'
    end    
    entry do
      name 'Permalink'
      command 'permalink'    
      notes 'Full URL to object with domain (e.g. `http://mysite.com/blog/my-post`).'
    end
    entry do
      name 'Body'
      command 'body'    
      notes 'Body in HTML (rendered form Markdown), available in `page` and `post` types).'      
    end
    entry do
      name 'Raw body'
      command 'body_raw'    
      notes 'Body in raw Markdown, available in `page` and `post` types.'      
    end
    entry do
      name 'Excerpt'
      command 'excerpt'    
      notes 'Shorened version of the body (use 2 empty lines to break), available in `page` and `post` types.'      
    end
    entry do
      name 'Raw excerpt'
      command 'excerpt_raw'    
      notes 'Excerpt in raw Markdwown, available in `page` and `post` types.'      
    end
    entry do
      name 'Assets'
      command 'assets'    
      notes 'Array of assets, available on `page` and `post` types.'      
    end
    entry do
      name 'Meta'
      command 'meta'    
      notes 'Array of metadata, available on `page` and `post` types.'      
    end
    entry do
      name 'Taxonomy'
      command 'taxonomy'    
      notes 'Array of taxonomy, available on `post` type only'      
    end
        entry do
      name 'Tags'
      command 'tags'    
      notes 'Array of tags available on `taxonomy` type only.'      
    end
    entry do
      name 'Pages'
      command 'pages'    
      notes 'Array of child-pages, available on `page` type only.'      
    end
    entry do
      name 'Posts'
      command 'posts'
      notes 'Array of posts, available in `page`, `archive`, and `tag` types.'
    end
    entry do
      name 'Previous'
      command 'previous'
      notes 'The previous `page` or `post`, available in `page` or `post` types.'
    end
    entry do
      name 'Next'
      command 'next'
      notes 'The next `page` or `post` available in `page` or `post` types.'
    end
    entry do
      name 'Current'
      command 'current'
      notes 'Alias of the current `page` or `post`, available in `page` or `post` types.'
    end
    entry do
      name 'Parent'
      command 'parent'
      notes 'Parent page object (if exists)'
    end
    entry do
      name 'URL archive'
      command 'archive_url'
      notes 'URL to archive page, available in `page` type only.'
    end
    entry do
      name 'Date'
      command 'date'
      notes 'Date of publish, available in `page` and `post` types.'
    end
    entry do
      name 'Last updated'
      command 'updated_at'
      notes 'Date of last update.'
    end
    entry do
      name 'Author full name'
      command 'author.fullname'
      notes 'Full name of author, available in `page` or `post` types.'
    end
    entry do
      name 'Author first name'
      command 'author.firstname'
      notes 'First name of the author, available in `page` or `post` types.'
    end
    entry do
      name 'Author last name'
      command 'author.lastname'
      notes 'Last name of author, available in `page` or `post` types.'
    end
    entry do
      name 'Author\'s email'
      command 'author.email'
      notes 'Author\'s email, available in `page` and `post` types.'
    end
    entry do
      name 'Author\'s avatar'
      command 'author.avatar'
      notes 'Author\'s Gravatar URL, available in `page` and `post` types.'
    end
    entry do
      name 'Home'
      command 'home?'
      notes 'Boolean if page is homepage, available in `page` type only.'
    end
  end

  category do
    id 'Asset Variables'  
    entry do
    name 'Type'
    command 'type'
    notes 'Can be `image`, `audio`, `video`, or `other`.'
    end
    entry do
      name 'Filename'
      command 'filename'
      notes 'Name of file (e.g. `photo.jpg`).'
    end
    entry do
      name 'URL'
      command 'url'
      notes 'URL to object without domain (e.g. `/assets/photo.jpg`).'
    end
    entry do
      name 'Permalink'
      command 'permalink'
      notes 'FUll URL to object with domain (e.g. `http://mysite.com/assets/photo.jpg`).'
    end
    entry do
      name 'Content type'
      command 'content_type'
      notes 'MIME type of asset (e.g. `image/jpeg`).'
    end
    entry do
      name 'File size'
      command 'filesize'
      notes 'Size of file in bytes (e.g. `1024`)'
    end
    entry do
      name 'Date'
      command 'date'
      notes 'Date asset was created'
    end
  end

  category do
  id 'Asset Variables'  
    entry do
      name 'Meta'
      command 'meta'
      notes 'Array of all metadata key/value'
    end
    entry do
      name 'Meta by key'
      command 'meta.KEY'
      notes 'Get single metadata by key (e.g. `Color`).'
    end
    entry do
      name 'Key'
      command 'key'
      notes 'Name of metadata key (e.g. `Color`).'
    end
    entry do
      name 'Value'
      command 'value'
      notes 'Value of metadata (e.g. `Red`).'
    end
  end

  category do
    id 'Taxonomy'
    entry do
      name 'Taxonomy'
      command 'taxonomy'
      notes 'Array of all taxonomy sets.'
    end
    entry do
      name 'Taxonomy key'
      command 'taxonomy.KEY'
      notes 'Get tags by set name (e.g. `Tags`).'
    end
    entry do
      name 'Key'
      command 'key'
      notes 'Name of taxonomy set (e.g. `Tags`).'
    end
    entry do
      name 'Slug'
      command 'slug'
      notes 'URI slug for set (e.g. `tags`).'
    end
    entry do
      name 'URL'
      command 'url'
      notes 'URL for set page without domain (e.g. `/blog/tags`).'
    end
    entry do
      name 'Permalink'
      command 'permalink'
      notes 'URL for set page with domain (e.g. `http://mysite.com/blog/tags`).'
    end
    entry do
      name 'Tags'
      command 'tags'
      notes 'Array of tags in set.'
    end
    entry do
      name 'Tags key'
      command 'tags.Key'
      notes 'Get a single tag by name (e.g. `Design`).'
    end
  end

  category do
    id 'Tags'
    entry do
      name 'Value'
      command 'value'
      notes 'Name of tag'
    end
    entry do
      name 'Slug'
      command 'slug'
      notes 'URI slug for tag set (e.g. `design`).'
    end
    entry do
      name 'URL'
      command 'url'
      notes 'URL for tag page without domain (e.g. `/blog/tags/design`).'
    end
    entry do
      name 'Permalink'
      command 'permalink'
      notes 'URL for tag page with domain (e.g. `http://mysite.com/blog/tags/design`).'
    end
    entry do
      name 'Posts'
      command 'posts'
      notes 'Array of posts with this tag.'
    end
  end
  category do
    id 'Code Samples'
    entry do
      name 'Basic output'
      notes <<-'END'
        ```html
        <h2>{{title}}</h2>
        {{body}}
        ```
        Get the title and body for the current page.
      END
    end
    entry do
      name 'Loop'
      notes <<-'END'
        ```html
        {% for post in posts limit:20 %}
        <article>
          <header><a href="{{post.url}}">{{post.title}}</a></header>
          {{post.body}}
          <footer>Posted on {{post.date | date: "%b %d, %Y"}} by {{post.author.fullname}}</footer>
        </article>
        {% endfor %}
        ```
        Loop through the first 20 posts on the current page.
      END
    end
    entry do
      name 'Asset loop'
      notes <<-'END'
        ```html
        {% for asset in assets %}
          {% if asset.type == 'image' %}
          <img src="{{asset.url}}">
          {% elsif asset.type == 'audio' %}
          <audio><source src="{{asset.url}}" type="{{asset.content_type}}"></audio>
          {% elsif asset.type == 'video' %}
          <video><source src="{{asset.url}}" type="{{asset.content_type}}"></video>
          {% elsif asset.type == 'other' %}
          <a href="{{asset.url}}">Download {{asset.filename}}</a></li>
          {% endif %}
        {% endfor %}
        ```
        Loop through assets.
      END
    end
    entry do
      name 'Navigation menu'
      notes <<-'END'
        ```html
      <nav>
        <ul>
        {% for page in site.pages %}
          <li><a href="{{page.url}}"{% if page.url == url %} class="selected"{% endif %}>{{page.title}}</a></li>
        {% endfor %}
        </ul>
      </nav>
        ```
      Loop through site.pages to build a navigation menu
      END
    end
  end
  notes 'Full Siteleaf theme documentation can be found [here](http://www.siteleaf.com/help/themes/).'
end