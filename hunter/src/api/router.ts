import users from './users'

// TBD - sample api
const sampUsers = {
  getUsers: async () => {
    await new Promise((resolve) => setTimeout(resolve, 1000))
    const response = await fetch('https://jsonplaceholder.typicode.com/posts')
    return response.json()
  }
}

export const apiRouter = {
  users,
  sampUsers
}

export default apiRouter;
