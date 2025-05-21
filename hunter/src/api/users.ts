import api from './index'

const users = {
  getUsers: async () => {
    return await api('users')
  }
}

export default users
