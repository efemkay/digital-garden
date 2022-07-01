# Jekyll Garden v 0.4!
![Slide 4_3 - 1 (1)](https://user-images.githubusercontent.com/1788677/169704768-65c32d93-7884-47fa-b98c-bc8329acc6a7.png)


Jekyll Garden theme lets you publish your [Obsidian](https://obsidian.md/) vault (or a subset of it) as a Jekyll static website. The theme is markdown and Obsidian setup friendly. You can use your own server or Github page to set up your SSG. Check out the demo.

## Documents and links
-  [Demo website](https://jekyll-garden.github.io/)
-  [Personal Website](https://hiran.in/)
-  [Feature List](https://jekyll-garden.github.io/post/features)
-  [How to Setup](https://jekyll-garden.github.io/post/how-to)

## Credits & Thanks
-  See [Credits page](https://jekyll-garden.github.io/credits)

## Contribution

To set up your environment to develop this theme, run `bundle install` after cloning this repository in your local machine.

Your theme is set up just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. `_notes` contain all atomic notes. If you want to use this for blog, add posts inside `_posts` folder, following standard Jekyll frontamtter.

### Hosting in a Docker Container
For hosting on your local network, inside a docker container, install `docker` and `docker-compose` and run,
```Terminal
$ docker-compose up -d
```
> **Note**:-
> 
> This container is built upon on alpine based ruby image. There's an official Jekyll image available in docker hub which only support `amd64` images. You can opt to use that if you are running the container on an 64bit PC. If you want to run this on an ARM based system like Raspberry Pi, this would be a better option.
>
> The directories which will be frequently modified, are mapped as local volumes so that any changes made to those will be immediately picked up by the server and built. If you fancy changing content in other folders regularly, feel free to add them to the `volumes` section in `docker-compose.yml` before deploying.


## License

The theme is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
