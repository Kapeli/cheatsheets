cheatsheet do
  title 'Axios'
  docset_file_name 'Axios'
  keyword 'axios'
  source_url 'http://cheat.kapeli.com'
  
  category do
    id 'General'
    
    entry do
      name 'POST request'
      notes <<-'END'
        ```javascript
        // Make a request for a user with a given ID
        axios.get('/user?ID=12345')
          .then(function (response) {
            console.log(response);
          })
          .catch(function (error) {
            console.log(error);
          });

        // Optionally the request above could also be done as
        axios.get('/user', {
            params: {
              ID: 12345
            }
          })
          .then(function (response) {
            console.log(response);
          })
          .catch(function (error) {
            console.log(error);
          });
        ```
      END
    end
    
    entry do
      name 'GET request'
      notes <<-'END'
        ```javascript
        axios.post('/user', {
            firstName: 'Fred',
            lastName: 'Flintstone'
          })
          .then(function (response) {
            console.log(response);
          })
          .catch(function (error) {
            console.log(error);
          });
        ```
      END
    end
    
    entry do
      name 'Multiple concurrent requests'
      notes <<-'END'
        ```javascript
        function getUserAccount() {
          return axios.get('/user/12345');
        }

        function getUserPermissions() {
          return axios.get('/user/12345/permissions');
        }

        axios.all([getUserAccount(), getUserPermissions()])
          .then(axios.spread(function (acct, perms) {
            // Both requests are now complete
          }));
        ```
      END
    end
  end
  
  category do
    id 'API'
    
    entry do
      name 'Config for a GET request'
      notes <<-'END'
        ```javascript
        // Send a POST request
        axios({
          method: 'post',
          url: '/user/12345',
          data: {
            firstName: 'Fred',
            lastName: 'Flintstone'
          }
        });
        ```
      END
    end
    
    entry do
      name 'Config for a POST request'
      notes <<-'END'
        ```javascript
        // GET request for remote image
        axios({
          method: 'get',
          url: 'http://bit.ly/2mTM3nY',
          responseType: 'stream'
        })
          .then(function(response) {
          response.data.pipe(fs.createWriteStream('ada_lovelace.jpg'))
        });
        ```
      END
    end
    
    entry do
      name 'Request method aliases'
      notes <<-'END'
        ##### axios.request(config)
        ##### axios.get(url[, config])
        ##### axios.delete(url[, config])
        ##### axios.head(url[, config])
        ##### axios.options(url[, config])
        ##### axios.post(url[, data[, config]])
        ##### axios.put(url[, data[, config]])
        ##### axios.patch(url[, data[, config]])        
      END
    end
    
    entry do
      name 'Concurrency'
      notes <<-'END'
        ##### axios.all(iterable)
        ##### axios.spread(callback)
      END
    end
    
    entry do
      name 'Creating an instance'
      notes <<-'END'
        ##### axios.create([config])
        ```javascript
        var instance = axios.create({
          baseURL: 'https://some-domain.com/api/',
          timeout: 1000,
          headers: {'X-Custom-Header': 'foobar'}
        });
        ```
      END
    end
    
    entry do
      name 'Instance methods'
      notes <<-'END'
        ##### axios#request(config)
        ##### axios#get(url[, config])
        ##### axios#delete(url[, config])
        ##### axios#head(url[, config])
        ##### axios#options(url[, config])
        ##### axios#post(url[, data[, config]])
        ##### axios#put(url[, data[, config]])
        ##### axios#patch(url[, data[, config]])
      END
    end
  end
end