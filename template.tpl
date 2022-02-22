___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Match Regex",
  "categories": ["UTILITY"],
  "description": "Search a string for a match against a regular expression, and return the first complete match or one of its related capturing groups.",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "string",
    "displayName": "Input string",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "regex",
    "displayName": "Regular expression",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "help": "Simple regex string. Flags not supported."
  },
  {
    "type": "TEXT",
    "name": "index",
    "displayName": "Return result index",
    "simpleValueType": true,
    "defaultValue": 0,
    "help": "Use \"0\" for the full match or another index number to return the capturing group.",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      },
      {
        "type": "NON_NEGATIVE_NUMBER"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_SERVER___

let string = data.string;
let regex = data.regex;
let index = data.index;

return string.match(regex)[index];


___TESTS___

scenarios: []


___NOTES___

Created on 22/02/2022, 17:11:38


