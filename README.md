# Project 2 - *Flix*

**Flix** is a movies app using the [The Movie Database API](http://docs.themoviedb.apiary.io/#).

Time spent: **17** hours spent in total

## User Stories

The following **required** functionality is complete:

- [X] User sees an app icon on the home screen and a styled launch screen.
- [X] User can view a list of movies currently playing in theaters from The Movie Database.
- [X] Poster images are loaded using the UIImageView category in the AFNetworking library.
- [X] User sees a loading state while waiting for the movies API.
- [X] User can pull to refresh the movie list.
- [X] User sees an error message when there's a networking error.
- [X] User can tap a tab bar button to view a grid layout of Movie Posters using a CollectionView.

The following **optional** features are implemented:

- [X] User can tap a poster in the collection view to see a detail screen of that movie
- [X] User can search for a movie.
- [X] All images fade in as they are loading.
- [ ] User can view the large movie poster by tapping on a cell.
- [ ] For the large poster, load the low resolution image first and then switch to the high resolution image when complete.
- [X] Customize the selection effect of the cell.
- [X] Customize the navigation bar.
- [X] Customize the UI.
- [ ] User can view the app on various device sizes and orientations.
- [X] Run your app on a real device.

The following **additional** features are implemented:

- [X] Users can view the movie's trailer by tapping on the "Player Trailer" button or the movie poster on the movie detail screen.

Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):

1. Constraints! (especially within scroll views)
2. Further customizing the UI (search bar, nav bar, etc.)

## Video Walkthrough

Here are three walkthroughs of the implemented user stories:

![Walkthrough 1](https://github.com/ava-cr/FBUFlix/blob/main/gifs/flix1.gif)

![Walkthrough 2](https://github.com/ava-cr/FBUFlix/blob/main/gifs/flix2.gif)

This walkthrough demonstrates the pull-to-refresh and network error alert features. In this walkthrough, the wifi is turned off to produce the network error and then turned back on before "Try Again" is pressed.

![Walkthrough 3](https://github.com/ava-cr/FBUFlix/blob/main/gifs/flix3.gif)

GIF created with [Kap](https://getkap.co/).

## Notes

Describe any challenges encountered while building the app.

The major challenge I encountered was with constraints. Although I could get them to work on simpler views, when I implemented them on a scroll view I ran into issues with the scroll view not scrolling and the constraints not actually constraining. While I learned more about how to implement constrains in the process, I am definitely still unsure of the best and most effective way to go about it so I look forward to learning more about them next week!

## Credits

List an 3rd party libraries, icons, graphics, or other assets you used in your app.

- [AFNetworking](https://github.com/AFNetworking/AFNetworking) - networking task library
- [SVProgressHUD](https://github.com/SVProgressHUD/SVProgressHUD) - activity monitor library

## License

    Copyright [2021] [Ava Crnkovic-Rubsamen]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
