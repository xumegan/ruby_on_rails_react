import React from 'react'
import { Switch, Route } from 'react-router-dom'
const App = () => {
  return (
    <Switch>
      <Route exact path="/" component={Airlines} />
      <Route exact path="/airline/:slug" component={Airline} />
    </Switch>
  )
}
export default App