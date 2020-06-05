# Changelog

## [v2.0.0](https://github.com/solidusio-contrib/solidus_static_content/tree/v2.0.0) (2020-06-05)

[Full Changelog](https://github.com/solidusio-contrib/solidus_static_content/compare/v1.0.0...v2.0.0)

**Breaking changes:**

- Rename SpreeStaticContent to SolidusStaticContent [\#67](https://github.com/solidusio-contrib/solidus_static_content/pull/67) ([aldesantis](https://github.com/aldesantis))
- Remove deprecated constants [\#66](https://github.com/solidusio-contrib/solidus_static_content/pull/66) ([aldesantis](https://github.com/aldesantis))

**Implemented enhancements:**

- Remove the `I18n` namespace from views [\#54](https://github.com/solidusio-contrib/solidus_static_content/issues/54)
- Drag & drop ordering + general views updates [\#53](https://github.com/solidusio-contrib/solidus_static_content/pull/53) ([elia](https://github.com/elia))
- Use the same sidebar logic that Solidus uses [\#52](https://github.com/solidusio-contrib/solidus_static_content/pull/52) ([elia](https://github.com/elia))
- Auto-generate slug when missing, require presence of a store, attach to the default store by default [\#48](https://github.com/solidusio-contrib/solidus_static_content/pull/48) ([elia](https://github.com/elia))
- Some more streamlining of the setup process and readme [\#46](https://github.com/solidusio-contrib/solidus_static_content/pull/46) ([elia](https://github.com/elia))
- Remove Deface hook for Pages in favor of MenuItem [\#45](https://github.com/solidusio-contrib/solidus_static_content/pull/45) ([elia](https://github.com/elia))
- CircleCI test results [\#43](https://github.com/solidusio-contrib/solidus_static_content/pull/43) ([elia](https://github.com/elia))
- General cleanup and updates [\#42](https://github.com/solidusio-contrib/solidus_static_content/pull/42) ([elia](https://github.com/elia))
- Gem structure refresh [\#39](https://github.com/solidusio-contrib/solidus_static_content/pull/39) ([elia](https://github.com/elia))

**Fixed bugs:**

- Could not find table 'spree\_pages'  [\#30](https://github.com/solidusio-contrib/solidus_static_content/issues/30)
- Meta tag added to pages are added as well as the store ones [\#13](https://github.com/solidusio-contrib/solidus_static_content/issues/13)
- Page not found if store isn't mounted at the root [\#12](https://github.com/solidusio-contrib/solidus_static_content/issues/12)
- Add html code in static\_content [\#7](https://github.com/solidusio-contrib/solidus_static_content/issues/7)
- Add support for Solidus mounted on subpaths [\#55](https://github.com/solidusio-contrib/solidus_static_content/pull/55) ([elia](https://github.com/elia))
- Fix meta tags [\#50](https://github.com/solidusio-contrib/solidus_static_content/pull/50) ([elia](https://github.com/elia))
- Update the engine name to match migrations [\#49](https://github.com/solidusio-contrib/solidus_static_content/pull/49) ([elia](https://github.com/elia))
- Avoid adding the menu item multiple times [\#47](https://github.com/solidusio-contrib/solidus_static_content/pull/47) ([elia](https://github.com/elia))
- Limit sprockets to v3 until it's fixed on Solidus [\#44](https://github.com/solidusio-contrib/solidus_static_content/pull/44) ([elia](https://github.com/elia))

**Closed issues:**

- Couldn't find Spree::Page [\#33](https://github.com/solidusio-contrib/solidus_static_content/issues/33)
- Spree::PagesHelper doesn't have `render\_snippet` method [\#25](https://github.com/solidusio-contrib/solidus_static_content/issues/25)
- admin menu item 'Pages' still appears after logout [\#9](https://github.com/solidusio-contrib/solidus_static_content/issues/9)
- Problem with solidus 2.1.0.beta1 and solidus\_static\_content [\#5](https://github.com/solidusio-contrib/solidus_static_content/issues/5)
- DB Migration not working [\#4](https://github.com/solidusio-contrib/solidus_static_content/issues/4)
- Migrations not running [\#3](https://github.com/solidusio-contrib/solidus_static_content/issues/3)

**Merged pull requests:**

- Update the readme with the solidus\_dev\_support template [\#71](https://github.com/solidusio-contrib/solidus_static_content/pull/71) ([aldesantis](https://github.com/aldesantis))
- Update extension template with solidus\_dev\_support [\#70](https://github.com/solidusio-contrib/solidus_static_content/pull/70) ([aldesantis](https://github.com/aldesantis))
- Adds Spree::PermissionSets for Pages [\#64](https://github.com/solidusio-contrib/solidus_static_content/pull/64) ([memotoro](https://github.com/memotoro))
- Relax solidus\_support dependency [\#63](https://github.com/solidusio-contrib/solidus_static_content/pull/63) ([kennyadsl](https://github.com/kennyadsl))
- Regenerate ext with solidus\_dev\_support [\#60](https://github.com/solidusio-contrib/solidus_static_content/pull/60) ([elia](https://github.com/elia))
- Fixes wrong labels, tabs and breadcrumbs [\#59](https://github.com/solidusio-contrib/solidus_static_content/pull/59) ([memotoro](https://github.com/memotoro))
- Replace Spree.t and I18n.t with the "t" helper [\#56](https://github.com/solidusio-contrib/solidus_static_content/pull/56) ([elia](https://github.com/elia))
- Update pg requirement from ~\> 0.21 to ~\> 1.1 [\#41](https://github.com/solidusio-contrib/solidus_static_content/pull/41) ([dependabot-preview[bot]](https://github.com/apps/dependabot-preview))
- Update factory\_bot requirement from ~\> 4.7 to ~\> 5.1 [\#37](https://github.com/solidusio-contrib/solidus_static_content/pull/37) ([dependabot-preview[bot]](https://github.com/apps/dependabot-preview))
- Update mysql2 requirement from ~\> 0.4.10 to ~\> 0.5.2 [\#36](https://github.com/solidusio-contrib/solidus_static_content/pull/36) ([dependabot-preview[bot]](https://github.com/apps/dependabot-preview))
- Relax sqlite gem dependency for Rails 6 compatibility [\#35](https://github.com/solidusio-contrib/solidus_static_content/pull/35) ([aldesantis](https://github.com/aldesantis))
- Patch store relationship saving [\#34](https://github.com/solidusio-contrib/solidus_static_content/pull/34) ([octoxan](https://github.com/octoxan))
- Switch from Travis to CircleCI [\#32](https://github.com/solidusio-contrib/solidus_static_content/pull/32) ([BravoSimone](https://github.com/BravoSimone))
- Update test files [\#28](https://github.com/solidusio-contrib/solidus_static_content/pull/28) ([jtapia](https://github.com/jtapia))
- Use dynamic attributes on factories [\#24](https://github.com/solidusio-contrib/solidus_static_content/pull/24) ([aitbw](https://github.com/aitbw))
- Extension maintenance [\#23](https://github.com/solidusio-contrib/solidus_static_content/pull/23) ([aitbw](https://github.com/aitbw))
- Fix specs [\#22](https://github.com/solidusio-contrib/solidus_static_content/pull/22) ([kennyadsl](https://github.com/kennyadsl))
- Remove versions past EOL from .travis.yml [\#19](https://github.com/solidusio-contrib/solidus_static_content/pull/19) ([jacobherrington](https://github.com/jacobherrington))
- Add Solidus 2.7 to .travis.yml [\#18](https://github.com/solidusio-contrib/solidus_static_content/pull/18) ([jacobherrington](https://github.com/jacobherrington))
- Relax Deface dependency [\#14](https://github.com/solidusio-contrib/solidus_static_content/pull/14) ([aldesantis](https://github.com/aldesantis))
- Fixes visibility hidden of Page menu before login [\#11](https://github.com/solidusio-contrib/solidus_static_content/pull/11) ([memotoro](https://github.com/memotoro))

## [v1.0.0](https://github.com/solidusio-contrib/solidus_static_content/tree/v1.0.0) (2016-09-22)

[Full Changelog](https://github.com/solidusio-contrib/solidus_static_content/compare/3ad3f010dcb5cb66d195abe0c6c9abdd05ccc76f...v1.0.0)

**Merged pull requests:**

- Support Solidus 2.0, test all versions [\#2](https://github.com/solidusio-contrib/solidus_static_content/pull/2) ([jhawthorn](https://github.com/jhawthorn))
- Solidus support [\#1](https://github.com/solidusio-contrib/solidus_static_content/pull/1) ([alexblackie](https://github.com/alexblackie))



\* *This Changelog was automatically generated by [github_changelog_generator](https://github.com/github-changelog-generator/github-changelog-generator)*
