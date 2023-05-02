# Pico-hugo

## A Hugo theme that leverages the beauty and simplicity of Picocss

### Features

- Responsive
- Use with local picocss files or cdn
- Katex support
- Related content
- Support for author and donation infos
- Multiple authors per piece of content
- Multiple content viewing modes
- Content pagination
- Toggle breadcrumbs

### Theme configuration

```toml
baseURL = "/"
title = "pico-hugo"
languageCode = "en-us"
theme = "pico-hugo"
paginate = 4 #Number of items per section page

[params]
    breadcrumb = true #Toggles breadcrumbs
    picoPath = "/vendor/pico-master/css/pico.min.css" #Local Picocss file path, leave undeclared to use cdn
    sectionType = "cards" #How to show sections on index, accepted values are "cards" and "single"
```

#### sectionType = "single"

![single section](/docs/single.png)

#### sectionType = "cards"

![cards section](/docs/cards.png)

### Front-matter configuration

```yaml
title: "Katex"
date: "2023-03-09T23:01:09-03:00"
draft: false
tex: true #Toggle Katex support for this content
useNextPrev: true #Toggle next/previous content controls
tags: ["katex", "tag-1", "tag-2"] #Tag list
authors: ["test-author", "other"] #Author list, names map to .json files inside /data/authors folder
```

### Author registration

Just create a file `author-name.json` inside `/data/authors` folder, the json data should follow this format (sections `socials`, `contacts` and `tips` can be left empty):

```jsonc
{
  "name": "Test Author", //Author name
  "socials": [
    //List of social media platform links
    {
      "platform": "github", //Platform name
      "profile": "test-author" //Profile name inside platform, in this example, this will turn into https://github.com/test-author
    }
  ],
  "contacts": [
    //List of author contact information
    {
      "type": "email", //Type of contact
      "value": "test-email@email.com" //Contact value
    }
  ],
  "tips": [
    //List of ways to donate to the author
    {
      "type": "crypto", //Tip type
      "name": "bitcoin", //Tip name
      "value": "avdltq0nqqwt08k263qhv7vppzqg5kq9v28v9rubc1" //Tip value
    }
  ]
}
```

#### Valid socials types

- github
- linkedin
- facebook
- twitter
- twitch
- instagram
- dribbble
- gitlab
- youtube

#### Valid tips types

- crypto
- link
