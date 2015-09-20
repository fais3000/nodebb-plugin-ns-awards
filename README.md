# NodeBB Awards

System for rewarding forum users. It allows admin to define set of awards that could be granted to users for special accomplishments. 

![Version](https://img.shields.io/npm/v/nodebb-plugin-ns-awards.svg)
[![bitHound Score](https://www.bithound.io/github/NicolasSiver/nodebb-plugin-ns-awards/badges/score.svg?)](https://www.bithound.io/github/NicolasSiver/nodebb-plugin-ns-awards)
![Code Climate](https://img.shields.io/codeclimate/github/NicolasSiver/nodebb-plugin-ns-awards.svg)

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
 

- [How does it work?](#how-does-it-work)
- [Themes](#themes)
  - [Profile template](#profile-template)
  - [Topic template](#topic-template)
- [TODO](#todo)
- [Changelog](#changelog)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## How does it work?

Plugin introduces new entity for your board: Award. It could be anything: ribbon, medal, special rank, etc.

1. Visit Awards control panel in ACP
2. Create several awards, don't forget images.
3. Give awards to the users.
4. If you want to list users' awards, you can augment Profile page template - `profile.tpl`

## Themes

### Profile template

Use profile partial, it will add small panel with awards as list. Every award item will include: picture, name, reason and date.

Example Vanilla Theme, edit `node_modules/nodebb-theme-vanilla/templates/account/profile.tpl`:

    <!-- IMPORT partials/awards_profile.tpl -->
    
### Topic template

Use topic partial to show awards for every post. Award's metadata is the same as for Profile template.

Example Persona Theme, edit `node_modules/nodebb-theme-persona/templates/partials/topic/post.tpl`:

    <!-- IMPORT partials/awards_topic.tpl -->

## TODO

- Add Sections to categorise awards, like: Forum, One time event, etc.
- Add User Manager: manager user's award - order, overview
- Add Notifications
- Use NodeBB's alerts (app.alert)
- ACP: Add Awarded Users statistics
- Create Profile template with popovers (currently It is a list)
- Add Achievements section, where rules can be specified, and same Awards could be granted automatically (auto-awards with progress, Ex: `First 1000 posts -> Core Heart`, `Every 20 likes -> Lover`, etc)
- Add Tests (Mocha/Tape)
- Beautify `Create Award` panel
- Handle multiple awards of the same type (Exapmle: `medal x 8`)
- Move Less styles under `awards` namespace
- Topic View: use Bootstrap tooltips
- Settings for CSS classes in topic view
- Grant Award View: indicate that zero users are selected

## Changelog

**v1.2.0 - 12.05.2015**

- Added Settings
- Settings: Topic render flag, max awards in topic
- Awards now available in Topic View

**v1.1.0 - 10.05.2015**

- Remove debug script from admin panel
- Added ability to edit award image

**v1.0.1 - 08.05.2015**

- Use RequireJS for admin script

**v1.0.0 - 06.05.2015**

- Very first release