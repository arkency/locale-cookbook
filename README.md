Description
===========

Installs and configures system locales.

Attributes
==========

- `node['locale']['locale']`

Defaults to `['en_US.UTF-8 UTF-8']`. An array of localisation files to be generated with `locale-gen`.

- `node['locale']['lang']`

Defaults to `'en_US.UTF-8'`. Global locale setting to be modified with `update-locale`.

Usage
=====

Just include `locale` in your node's `run_list`. Optionally specify `lang` and `locale`.

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[locale]"
  ],
  "locale": {
    "lang": "en_US.UTF-8",
    "locale": [
      "en_US.UTF-8 UTF-8",
      "de_DE.UTF-8 UTF-8",
      "el_GR.UTF-8 UTF-8",
      "en_GB.UTF-8 UTF-8",
      "es_ES.UTF-8 UTF-8",
      "fr_FR.UTF-8 UTF-8",
      "hu_HU.UTF-8 UTF-8",
      "it_IT.UTF-8 UTF-8",
      "nb_NO.UTF-8 UTF-8",
      "nl_NL.UTF-8 UTF-8",
      "nn_NO.UTF-8 UTF-8",
      "pl_PL.UTF-8 UTF-8",
      "pt_PT.UTF-8 UTF-8",
      "ru_RU.UTF-8 UTF-8",
      "sl_SI.UTF-8 UTF-8",
      "sv_SE.UTF-8 UTF-8",
      "tr_TR.UTF-8 UTF-8"
    ]
  }
}
```

License and Authors
===================

Author:: Arkency <dev@arkency.com>

Copyright 2012, Arkency

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
