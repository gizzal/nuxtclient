#!/bin/bash
# shellcheck disable=SC2162
#echo "Nuxt project name:"
#read ProjectName
#echo '{
#  "name": "'$ProjectName'",
#  "scripts": {
#    "dev": "nuxt",
#    "build": "nuxt build",
#    "generate": "nuxt generate",
#    "start": "nuxt start"
#  },
#  "config": {
#    "nuxt": {
#      "host": "0.0.0.0",
#      "port": "3333"
#    }
#  },
#  "dependencies": {
#    "nuxt": "^2.14.6"
#  }
#}
#' > package.json
#
#npm install nuxt

mkdir components assets static store pages
touch nuxt.config.js

echo '<template>
  <main>
    <h1>Hello world!</h1>
    <nav>
      <ul>
        <li>
          <NuxtLink to="/fun">Fun</NuxtLink>
        </li>

      </ul>
    </nav>
  </main>
</template>
'>./pages/index.vue

echo '<template>
  <main>
    <h1>Having fun with Nuxt.js</h1>
    <nav>
      <ul>
        <li>
          <NuxtLink to="/">Home</NuxtLink>
        </li>
      </ul>
    </nav>
  </main>
</template>'>./pages/fun.vue


echo './.nuxt
./nodes_modules'>.gitignore

echo 'export const state = () => ({
  list: []
})

export const mutations = {
  add(state, text) {
    state.list.push({
      text,
      done: false
    })
  },
  remove(state, { todo }) {
    state.list.splice(state.list.indexOf(todo), 1)
  },
  toggle(todo) {
    todo.done = !todo.done
  }
}'>./store/todos.js


git init
git add *
npm run dev