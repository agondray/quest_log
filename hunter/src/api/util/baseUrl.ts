const baseUrls = {
  development: 'http://localhost:3001/api/v1',
  staging: '',
  production: '',
  test: '',
}

const baseURL = baseUrls[process.env.NODE_ENV || 'development']

export default baseURL
