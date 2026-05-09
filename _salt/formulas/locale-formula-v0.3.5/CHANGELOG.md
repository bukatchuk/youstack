# Changelog

## [0.3.5](https://github.com/saltstack-formulas/locale-formula/compare/v0.3.4...v0.3.5) (2021-02-10)


### Bug Fixes

* **osfamilymap.yaml:** set default locale.conf path for debian ([978f1b1](https://github.com/saltstack-formulas/locale-formula/commit/978f1b1ca6ae4e0f24e531ba040894ea0d20d555))


### Continuous Integration

* **commitlint:** ensure `upstream/master` uses main repo URL [skip ci] ([e64262f](https://github.com/saltstack-formulas/locale-formula/commit/e64262f79d37f3102dbc05ac21f527337f91c840))
* **gitlab-ci:** add `rubocop` linter (with `allow_failure`) [skip ci] ([b78774c](https://github.com/saltstack-formulas/locale-formula/commit/b78774c7ee9d27b5d18ce86aba98c5c929e88f88))
* **gitlab-ci:** use GitLab CI as Travis CI replacement ([ebc4255](https://github.com/saltstack-formulas/locale-formula/commit/ebc425553a9c94022af889dd8625e776b4ffacfa))
* **pre-commit:** update hook for `rubocop` [skip ci] ([1cdf8d3](https://github.com/saltstack-formulas/locale-formula/commit/1cdf8d3202c5895a3a5e7880e86517ca1707d393))

## [0.3.4](https://github.com/saltstack-formulas/locale-formula/compare/v0.3.3...v0.3.4) (2020-10-14)


### Bug Fixes

* **init.sls:** ensure `dbus` is available for `locale.system` state ([c8e0e54](https://github.com/saltstack-formulas/locale-formula/commit/c8e0e54b8e5639e9be7f2f3b039d38ba63ce3272))
* **osfamilmap.yaml:** dbus pkg name is not specific enough on Gentoo ([46c6e2a](https://github.com/saltstack-formulas/locale-formula/commit/46c6e2a38a9c41fc59fba00237bef3802179dead))
* **release.config.js:** use full commit hash in commit link [skip ci] ([bf75e7e](https://github.com/saltstack-formulas/locale-formula/commit/bf75e7e8b60414fa5373d759b3d126c6048c4e16))


### Continuous Integration

* **gemfile:** restrict `train` gem version until upstream fix [skip ci] ([9708055](https://github.com/saltstack-formulas/locale-formula/commit/97080550d474d15b02c732c971a846cc3e68baa0))
* **gemfile.lock:** add to repo with updated `Gemfile` [skip ci] ([07806cd](https://github.com/saltstack-formulas/locale-formula/commit/07806cd83f9ffd5c550915784205e3cbeb2a0d98))
* **kitchen:** avoid using bootstrap for `master` instances [skip ci] ([62fab0d](https://github.com/saltstack-formulas/locale-formula/commit/62fab0dfec3ae58a2d01ec2a49a71d196a725512))
* **kitchen:** use `develop` image until `master` is ready (`amazonlinux`) [skip ci] ([c9e44f3](https://github.com/saltstack-formulas/locale-formula/commit/c9e44f3bf664fd59973924a8bdc801386ab3cc6f))
* **kitchen:** use `saltimages` Docker Hub where available [skip ci] ([42101e2](https://github.com/saltstack-formulas/locale-formula/commit/42101e2224a2c2caa9e3f7f46e395901c66b2c61))
* **kitchen+travis:** remove `master-py2-arch-base-latest` [skip ci] ([1a02aba](https://github.com/saltstack-formulas/locale-formula/commit/1a02abaa5ee89f4f9e6bba5e9f9ef6b37362762c))
* **pre-commit:** add to formula [skip ci] ([ee79fe4](https://github.com/saltstack-formulas/locale-formula/commit/ee79fe492ee961fd58cd79f7ebeaa9edea107608))
* **pre-commit:** enable/disable `rstcheck` as relevant [skip ci] ([6340e74](https://github.com/saltstack-formulas/locale-formula/commit/6340e7483de432b0fcdc58f5c69ef94180fb1d16))
* **pre-commit:** finalise `rstcheck` configuration [skip ci] ([32f6593](https://github.com/saltstack-formulas/locale-formula/commit/32f659361ea2482fb4c3f51e0eb44d06ebec8674))
* **travis:** add notifications => zulip [skip ci] ([edd50fb](https://github.com/saltstack-formulas/locale-formula/commit/edd50fb8c1d371a577ec55c757cdfc4e48ba0035))
* **travis:** apply changes from build config validation [skip ci] ([70d83b6](https://github.com/saltstack-formulas/locale-formula/commit/70d83b630877f7a5bfee68e0471d69743874b033))
* **travis:** opt-in to `dpl v2` to complete build config validation [skip ci] ([abcd3cb](https://github.com/saltstack-formulas/locale-formula/commit/abcd3cbd3271fb6a36000d9a2690905b270283b7))
* **travis:** quote pathspecs used with `git ls-files` [skip ci] ([e67abfb](https://github.com/saltstack-formulas/locale-formula/commit/e67abfbdeb9186b0fe1722b820a86ea2c57a724d))
* **travis:** run `shellcheck` during lint job [skip ci] ([a3ef6df](https://github.com/saltstack-formulas/locale-formula/commit/a3ef6df688852cbdeebf7e286470add914174bcf))
* **travis:** use `major.minor` for `semantic-release` version [skip ci] ([028044c](https://github.com/saltstack-formulas/locale-formula/commit/028044cf38cc5f22a12ac4f13b358752c945045b))
* **travis:** use build config validation (beta) [skip ci] ([5a67812](https://github.com/saltstack-formulas/locale-formula/commit/5a678127d4c0138b7bff91466ba16c40930fbaa1))
* **workflows/commitlint:** add to repo [skip ci] ([48b14f8](https://github.com/saltstack-formulas/locale-formula/commit/48b14f82fa414a5f0cb62306fc4b8fd9d5485904))
* workaround issues with newly introduced `amazonlinux-1` [skip ci] ([b54cb56](https://github.com/saltstack-formulas/locale-formula/commit/b54cb568f4b89abadd515e4c76936fb8d209dee7))


### Performance Improvements

* **travis:** improve `salt-lint` invocation [skip ci] ([81927ad](https://github.com/saltstack-formulas/locale-formula/commit/81927ade395ee7abcd01a3f3858c15f6fe7d807c))


### Tests

* **locale.system:** check dbus dependency ([3e6906c](https://github.com/saltstack-formulas/locale-formula/commit/3e6906c23d69bada46b28105d96b00d63344092b))

## [0.3.3](https://github.com/saltstack-formulas/locale-formula/compare/v0.3.2...v0.3.3) (2019-10-31)


### Continuous Integration

* **kitchen:** use `debian-10-master-py3` instead of `develop` [skip ci] ([](https://github.com/saltstack-formulas/locale-formula/commit/3ffe472))
* **kitchen+travis:** upgrade matrix after `2019.2.2` release ([](https://github.com/saltstack-formulas/locale-formula/commit/a194b93))
* **redhat:** refactor to rename `fedora` suite to `redhat` ([](https://github.com/saltstack-formulas/locale-formula/commit/11e0fdf))
* **travis:** update `salt-lint` config for `v0.0.10` [skip ci] ([](https://github.com/saltstack-formulas/locale-formula/commit/026de4c))


### Documentation

* **contributing:** remove to use org-level file instead [skip ci] ([](https://github.com/saltstack-formulas/locale-formula/commit/0007c43))
* **readme:** update link to `CONTRIBUTING` [skip ci] ([](https://github.com/saltstack-formulas/locale-formula/commit/95b2130))

## [0.3.2](https://github.com/saltstack-formulas/locale-formula/compare/v0.3.1...v0.3.2) (2019-10-12)


### Bug Fixes

* **rubocop:** add fixes using `rubocop --safe-auto-correct` ([](https://github.com/saltstack-formulas/locale-formula/commit/438213a))


### Continuous Integration

* **kitchen:** change `log_level` to `debug` instead of `info` ([](https://github.com/saltstack-formulas/locale-formula/commit/087ba1d))
* **kitchen:** install required packages to bootstrapped `opensuse` [skip ci] ([](https://github.com/saltstack-formulas/locale-formula/commit/c0013eb))
* **kitchen:** use bootstrapped `opensuse` images until `2019.2.2` [skip ci] ([](https://github.com/saltstack-formulas/locale-formula/commit/b9aade4))
* **platform:** add `arch-base-latest` ([](https://github.com/saltstack-formulas/locale-formula/commit/e1290f0))
* merge travis matrix, add `salt-lint` & `rubocop` to `lint` job ([](https://github.com/saltstack-formulas/locale-formula/commit/5ef469d))
* merge travis matrix, add `salt-lint` & `rubocop` to `lint` job ([](https://github.com/saltstack-formulas/locale-formula/commit/72a0577))
* use `dist: bionic` & apply `opensuse-leap-15` SCP error workaround ([](https://github.com/saltstack-formulas/locale-formula/commit/9dfb1c8))
* **travis:** merge `rubocop` linter into main `lint` job ([](https://github.com/saltstack-formulas/locale-formula/commit/2beeea8))
* **yamllint:** add rule `empty-values` & use new `yaml-files` setting ([](https://github.com/saltstack-formulas/locale-formula/commit/6f108cc))

## [0.3.1](https://github.com/saltstack-formulas/locale-formula/compare/v0.3.0...v0.3.1) (2019-09-01)


### Code Refactoring

* **pillar:** sync map.jinja with template-formula ([9fe13b4](https://github.com/saltstack-formulas/locale-formula/commit/9fe13b4))


### Continuous Integration

* **kitchen+travis:** replace EOL pre-salted images ([1e5fde3](https://github.com/saltstack-formulas/locale-formula/commit/1e5fde3))

# [0.3.0](https://github.com/saltstack-formulas/locale-formula/compare/v0.2.2...v0.3.0) (2019-08-10)


### Features

* **yamllint:** include for this repo and apply rules throughout ([5cdb75e](https://github.com/saltstack-formulas/locale-formula/commit/5cdb75e))

## [0.2.2](https://github.com/saltstack-formulas/locale-formula/compare/v0.2.1...v0.2.2) (2019-07-13)


### Code Refactoring

* **kitchen+inspec:** move inline pillars to files ([b992f4b](https://github.com/saltstack-formulas/locale-formula/commit/b992f4b))


### Continuous Integration

* **kitchen+travis:** modify matrix to include `develop` platform ([de4173d](https://github.com/saltstack-formulas/locale-formula/commit/de4173d))

## [0.2.1](https://github.com/saltstack-formulas/locale-formula/compare/v0.2.0...v0.2.1) (2019-05-27)


### Documentation

* **readme:** add testing requirements section ([3810986](https://github.com/saltstack-formulas/locale-formula/commit/3810986))

# [0.2.0](https://github.com/saltstack-formulas/locale-formula/compare/v0.1.0...v0.2.0) (2019-05-27)


### Continuous Integration

* **kitchen+travis:** add kitchen tests ([750195b](https://github.com/saltstack-formulas/locale-formula/commit/750195b))


### Features

* **semantic-release:** add semantic release ([83265fc](https://github.com/saltstack-formulas/locale-formula/commit/83265fc))
