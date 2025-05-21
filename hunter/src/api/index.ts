import axios from 'axios';

import baseURL from './util/baseUrl';

const axiosInstance = axios.create({
  baseURL,
  timeout: 1000,
})

type ApiOptions = {
  data?: object,
  method?: 'get' | 'put' | 'post' | 'delete',
  params?: object,
}

export const api = async (url: string, options: ApiOptions = {}) => {
  const { data, method = 'get', params } = options

  const accessToken = 'FOOBAR' // JWT here

  try {
    const response = await axiosInstance.request({
      url,
      method,
      params,
      data,
      headers: {
        'Authorization': `Bearer ${accessToken}`
      },
      responseType: 'json',
    })

    return response.data
  } catch (error) {
    throw new Error(error.response?.data?.errors)
  }
}

export default api


