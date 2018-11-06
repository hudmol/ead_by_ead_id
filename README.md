EAD By EAD ID - ArchivesSpace plugin
========================================

This plugin introduces a backend endpoint to allow the Resource EAD XML to be retrieved with the Resource EAD ID.

## Getting Started

Enable the plugin by editing the file in `config/config.rb`:

    AppConfig[:plugins] = ['some_plugin', 'ead_by_ead_id']


And it will expose a new endpoint that you can call like this:

    curl -L -H "X-ArchivesSpace-Session: YOUR_SESSION_ID" http://localhost:4567/plugins/ead_by_ead_id/repositories/2/resources/MY_EAD_ID
