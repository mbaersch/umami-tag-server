___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Umami",
  "brand": {
    "id": "mbaersch",
    "displayName": "mbaersch",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAABmJLR0QAvgD/ALe9KR/IAAAACXBIWXMAAC4jAAAuIwF4pT92AAAAB3RJTUUH5gwHAwsAtVzgFQAAABl0RVh0Q29tbWVudABDcmVhdGVkIHdpdGggR0lNUFeBDhcAAAJmSURBVFjDxVe/SzJxHH5OckgagrsImms4bTm1XEIQhXCqTXBzkLYiKtDFBA/xH2gJQRwP1PPHKuiW3HA4SEMgurlcNRy5HZ936LX3Nd/X1Mx74LMc3Pd5vg98Pt/nwxiGQTARa/P+MBgMoCgKnp6e8Pz8DABgWRZ7e3s4PDzEzs7OfAcahkGzVDabJa/XSwA+ymazkc1mG/t2dHRE9/f3NOu5XwqQZZn29/cJADmdTkqn0/Tw8EC6rtMIuq5Tq9WiTCZDbrebABDP81QoFL4nIBaLEQASBIHK5TLNilqt9iHk+vp6MQHRaJQA0MXFBS2Kq6srAkCRSGQ+AfF4nACQKIr0XWQymalOTAioVCoEgM7Pz2lZGDlRLBYnBDCf54AgCGAYBu12e6n9fnBwgLe3N3Q6nf+3YS6XIwBUKpVo2ajVagRgokXHHAgEAnh5eVn67f92YX19Hc1m888kzOfz6Pf7GA6HaDQa8Pl8SCaTPyJgc3MT9XodNzc32NjYgMPhAPN7gpkGC0yG+QI4jjONfGtrCxaWZU0TYLfbzXXAbrfDEgwGTRPgcrkAVVXHAsUq6/Hx8f0x8ng8KyfneZ4MwyALAJydna3c/nA4PP4Y+f3+ld7+9fV1PA+McsAq6u7u7t+BRBTFHye/vb2dnogSicSPkYdCodkyoSRJSyc/PT2dLxVLkkTb29tLIU+lUovtBd1uly4vL8lqtS5EHI1GSVGUqXsBM8tyqqoqZFlGtVqdDJWf4Ha7cXJyguPj4/dR+wWYebfjTqeDXq8HTdOgaRoAgOM4cByH3d1d8Dw/10BizF7PfwHUW1xlBL8DDgAAAABJRU5ErkJggg\u003d\u003d"
  },
  "description": "Send pageviews or events to Umami",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "GROUP",
    "name": "groupSettings",
    "displayName": "Umami Settings",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "TEXT",
        "name": "endpointUrl",
        "displayName": "Endpoint URL",
        "simpleValueType": true,
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "defaultValue": "https://analytics.umami.is/api/send",
        "help": "enter your endpoint URL for your own instance or use https://analytics.umami.is/api/send for Umami Cloud"
      },
      {
        "type": "TEXT",
        "name": "websiteId",
        "displayName": "Website ID",
        "simpleValueType": true,
        "help": "Paste ID for your website from the Umami settings",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "domain",
        "displayName": "Host / Domain (Optional)",
        "simpleValueType": true,
        "help": "Enter an optional fixed domain to override event data"
      },
      {
        "type": "TEXT",
        "name": "timeout",
        "displayName": "Timeout (ms)",
        "simpleValueType": true,
        "defaultValue": 1000,
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          },
          {
            "type": "POSITIVE_NUMBER"
          }
        ]
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "groupAdvanced",
    "displayName": "Advanced Settings",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "deleteReferrer",
        "checkboxText": "Do Not Send Referrer",
        "simpleValueType": true
      },
      {
        "type": "CHECKBOX",
        "name": "redactUrlParams",
        "checkboxText": "Do Not Send URL Parameters",
        "simpleValueType": true
      },
      {
        "type": "CHECKBOX",
        "name": "setPath",
        "checkboxText": "Override Page Path",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "setPathVar",
        "displayName": "Page Path",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "setPath",
            "paramValue": true,
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "setEvent",
        "checkboxText": "Override Event Name",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "setEventVar",
        "displayName": "Event Name",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "setEvent",
            "paramValue": true,
            "type": "EQUALS"
          }
        ]
      }
    ]
  },
  {
    "displayName": "Logs Settings",
    "name": "logsGroup",
    "groupStyle": "ZIPPY_CLOSED",
    "type": "GROUP",
    "subParams": [
      {
        "type": "RADIO",
        "name": "logType",
        "radioItems": [
          {
            "value": "no",
            "displayValue": "Do not log"
          },
          {
            "value": "debug",
            "displayValue": "Log to console during debug and preview"
          },
          {
            "value": "always",
            "displayValue": "Always log to console"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "debug"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_SERVER___

/**
 * @description Custom server-side Google Tag Manager Tag Template
 * Send events to Umami
 * @version 1.0.1
 * @see {@link https://github.com/mbaersch|GitHub} for more info
 * @see {@link https://umami.is/|Umami Homepage}
 */

const getAllEventData = require('getAllEventData');
const sendHttpRequest = require('sendHttpRequest');
const JSON = require('JSON');
const parseUrl = require('parseUrl');
const getRequestHeader = require('getRequestHeader');
const makeString = require('makeString');
const getContainerVersion = require('getContainerVersion');
const logToConsole = require('logToConsole');

const isLoggingEnabled = determinateIsLoggingEnabled();
const traceId = getRequestHeader('trace-id');

const eventData = getAllEventData();
const url = eventData.page_location;

if (url) {

  const serviceUrl = data.endpointUrl;
  const name = eventData.event_name || "";
  const parsedUrl = parseUrl(url);
  const ref = data.deleteReferrer === true ? "" : eventData.page_referrer || "";
  const dom = data.domain || parsedUrl.hostname || null;

  let page = (data.setPath === true) && data.setPathVar ?
      data.setPathVar : url.split(parsedUrl.hostname)[1];
  if (data.redactUrlParams === true)
    page = page.split("?")[0];

  let umamiEvent = {
    payload: {
      website: data.websiteId,
      hostname: dom,
      url: page,
      language: eventData.language || "",
      screen: eventData.screen_resolution || "1920x1080"
    }
  };

  if (name === "page_view") {
    umamiEvent.type = "pageview";
    umamiEvent.payload.referrer = ref;
  } else {
    umamiEvent.type = "event";
    umamiEvent.payload.event_name =
        (data.setEvent === true) && data.setEventVar ?
            data.setEventVar : name;
  }

  if (isLoggingEnabled) {
    logToConsole(
        JSON.stringify({
          Name: 'Umami',
          Type: 'Request',
          TraceId: traceId,
          EventName: makeString(umamiEvent.type === 'pageview' ? 'page_view' : umamiEvent.payload.event_name),
          RequestMethod: 'POST',
          RequestUrl: serviceUrl,
          RequestBody: umamiEvent,
        })
    );
  }

  sendHttpRequest(
      serviceUrl, (statusCode, headers, body) => {
        if (isLoggingEnabled) {
          logToConsole(
              JSON.stringify({
                Name: 'Umami',
                Type: 'Response',
                TraceId: traceId,
                EventName: makeString(umamiEvent.type === 'pageview' ? 'page_view' : umamiEvent.payload.event_name),
                ResponseStatusCode: statusCode,
                ResponseHeaders: headers,
                ResponseBody: body,
              })
          );
        }

        if (statusCode >= 200 && statusCode < 300) data.gtmOnSuccess();
        else data.gtmOnFailure();
      },
      {
        headers: {
          'user-agent': eventData.user_agent || getRequestHeader("user-agent"),
          'content-type': 'application/json'
        },
        method: 'POST',
        timeout: data.timeout||1000
      },
      JSON.stringify(umamiEvent)
  );

} else
  data.gtmOnFailure();

function determinateIsLoggingEnabled() {
  const containerVersion = getContainerVersion();
  const isDebug = !!(
      containerVersion &&
      (containerVersion.debugMode || containerVersion.previewMode)
  );

  if (!data.logType) {
    return isDebug;
  }

  if (data.logType === 'no') {
    return false;
  }

  if (data.logType === 'debug') {
    return isDebug;
  }

  return data.logType === 'always';
}


___SERVER_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "read_event_data",
        "versionId": "1"
      },
      "param": [
        {
          "key": "eventDataAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "send_http",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedUrls",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_request",
        "versionId": "1"
      },
      "param": [
        {
          "key": "headerWhitelist",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "headerName"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "user-agent"
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "headerName"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "trace-id"
                  }
                ]
              }
            ]
          }
        },
        {
          "key": "headersAllowed",
          "value": {
            "type": 8,
            "boolean": true
          }
        },
        {
          "key": "requestAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "headerAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "queryParameterAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "all"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_container_data",
        "versionId": "1"
      },
      "param": []
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 7.12.2022, 05:01:54


