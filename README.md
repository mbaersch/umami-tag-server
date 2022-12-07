# Umami Analytics (umami-tag-server)
Umami Analytics - Custom Tag Template for Server-Side Google Tag Manager

## Usage
Install the tag template and add a new *Umami* tag. Enter the URL of your tracking endpoint in the first field and add your website id from your Umami settings below. All other settings are optional. 

### Changing The Domain
You can override the hostname from incoming requests to match a user-defined value. This might be helpful if you send test traffic from a staging domain to a specific website profile.

### Advanced Settings
This section contains additional options that allows enhanced data redaction. You can optionally send an empty referrer and delete any parameters from tracked urls. 

#### Overriding Page Path
If you want to collect data from several sources in different paths of the same profile, you can override the page path with a different value. This option also can be used for further data redaction or enrichment.

### Change Event Names
Every event name can be translated for Umami using an optional override field. You can for example set the new event name with a lookup table. 
