Feature: FDI live and stage sites running

  Scenario Outline: FDI LIVE sites running OK
  I make a request to <hostname>
  I should see response <status_code>

    Examples:
      | hostname                               | status_code |
      | http://ams.fdiintelligence.com         | 200         |
      | http://app.fdibenchmark.com            | 200         |
      | http://app.fdimarkets.com              | 200         |
      | http://data.ftconfidentialresearch.com | 200         |
      | http://de.fdimarkets.com               | 200         |
      | http://islamicbanks.thebanker.com      | 200         |
      | http://www.fdibenchmark.com            | 200         |
      | http://www.fdimarkets.com              | 200         |
      | http://www.fdireports.com              | 200         |
      | http://www.thebankerdatabase.com       | 200         |
      | https://www.thebankerdatabase.com      | 200         |


  Scenario Outline: FDI STAGE sites running OK
  I make a request to <hostname>
  I should see response <status_code>

    Examples:
      | hostname                                     | status_code |
      | http://stage.ams.fdiintelligence.com         | 200         |
      | http://stage.app.fdibenchmark.com            | 200         |
      | http://stage.app.fdimarkets.com              | 200         |
      | http://stage.data.ftconfidentialresearch.com | 200         |
      | http://stage.de.fdimarkets.com               | 200         |
      | http://stage.islamicbanks.thebanker.com      | 200         |
      | http://stage.www.fdibenchmark.com            | 200         |
      | http://stage.www.fdimarkets.com              | 200         |
      | http://stage.www.fdireports.com              | 200         |
      | http://stage.www.thebankerdatabase.com       | 200         |
      | https://stage.www.thebankerdatabase.com      | 200         |


  Scenario Outline: Testing FDI LIVE sites origin
  I set the <header> and <origin>
  I check the response code <status_code>

    Examples:
      | header                          | origin                        | status_code |
      | ams.fdiintelligence.com         | http://fdi-origin.glb.ft.com  | 200         |
      | app.fdibenchmark.com            | http://fdi-origin.glb.ft.com  | 200         |
      | app.fdimarkets.com              | http://fdi-origin.glb.ft.com  | 200         |
      | data.ftconfidentialresearch.com | http://fdi-origin.glb.ft.com  | 200         |
      | de.fdimarkets.com               | http://fdi-origin.glb.ft.com  | 200         |
      | islamicbanks.thebanker.com      | http://fdi-origin.glb.ft.com  | 200         |
      | www.fdibenchmark.com            | http://fdi-origin.glb.ft.com  | 200         |
      | www.fdimarkets.com              | http://fdi-origin.glb.ft.com  | 200         |
      | www.fdireports.com              | http://fdi-origin.glb.ft.com  | 200         |
      | www.thebankerdatabase.com       | http://fdi-origin.glb.ft.com  | 200         |
      | www.thebankerdatabase.com       | https://fdi-origin.glb.ft.com | 200         |

  Scenario Outline: Testing FDI STAGE sites origin
  I set the <header> and <origin>
  I check the response code <status_code>

    Examples:
      | header                                | origin                              | status_code |
      | stage.ams.fdiintelligence.com         | http://stage-fdi-origin.glb.ft.com  | 403         |
      | stage.app.fdibenchmark.com            | http://stage-fdi-origin.glb.ft.com  | 403         |
      | stage.app.fdimarkets.com              | http://stage-fdi-origin.glb.ft.com  | 403         |
      | stage.data.ftconfidentialresearch.com | http://stage-fdi-origin.glb.ft.com  | 403         |
      | stage.de.fdimarkets.com               | http://stage-fdi-origin.glb.ft.com  | 403         |
      | stage.islamicbanks.thebanker.com      | http://stage-fdi-origin.glb.ft.com  | 403         |
      | stage.www.fdibenchmark.com            | http://stage-fdi-origin.glb.ft.com  | 403         |
      | stage.www.fdimarkets.com              | http://stage-fdi-origin.glb.ft.com  | 403         |
      | stage.www.fdireports.com              | http://stage-fdi-origin.glb.ft.com  | 403         |
      | stage.www.thebankerdatabase.com       | http://stage-fdi-origin.glb.ft.com  | 403         |
      | stage.www.thebankerdatabase.com       | https://stage-fdi-origin.glb.ft.com | 403         |

  Scenario Outline: Testing FDI LIVE sites origin with cookie
    I set the <header> and <origin> with cookie
    I check the response code <status_code>

      Examples:
        | header                          | origin                        | status_code |
        | ams.fdiintelligence.com         | http://fdi-origin.glb.ft.com  | 200         |
        | app.fdibenchmark.com            | http://fdi-origin.glb.ft.com  | 200         |
        | app.fdimarkets.com              | http://fdi-origin.glb.ft.com  | 200         |
        | data.ftconfidentialresearch.com | http://fdi-origin.glb.ft.com  | 200         |
        | de.fdimarkets.com               | http://fdi-origin.glb.ft.com  | 200         |
        | islamicbanks.thebanker.com      | http://fdi-origin.glb.ft.com  | 200         |
        | www.fdibenchmark.com            | http://fdi-origin.glb.ft.com  | 200         |
        | www.fdimarkets.com              | http://fdi-origin.glb.ft.com  | 200         |
        | www.fdireports.com              | http://fdi-origin.glb.ft.com  | 200         |
        | www.thebankerdatabase.com       | http://fdi-origin.glb.ft.com  | 200         |
        | www.thebankerdatabase.com       | https://fdi-origin.glb.ft.com | 200         |

  Scenario Outline: Testing FDI STAGE sites origin with cookie
    I set the <header> and <origin> with cookie
    I check the response code <status_code>

      Examples:
        | header                                | origin                              | status_code |
        | stage.ams.fdiintelligence.com         | http://stage-fdi-origin.glb.ft.com  | 200         |
        | stage.app.fdibenchmark.com            | http://stage-fdi-origin.glb.ft.com  | 200         |
        | stage.app.fdimarkets.com              | http://stage-fdi-origin.glb.ft.com  | 200         |
        | stage.data.ftconfidentialresearch.com | http://stage-fdi-origin.glb.ft.com  | 200         |
        | stage.de.fdimarkets.com               | http://stage-fdi-origin.glb.ft.com  | 200         |
        | stage.islamicbanks.thebanker.com      | http://stage-fdi-origin.glb.ft.com  | 200         |
        | stage.www.fdibenchmark.com            | http://stage-fdi-origin.glb.ft.com  | 200         |
        | stage.www.fdimarkets.com              | http://stage-fdi-origin.glb.ft.com  | 200         |
        | stage.www.fdireports.com              | http://stage-fdi-origin.glb.ft.com  | 200         |
        | stage.www.thebankerdatabase.com       | http://stage-fdi-origin.glb.ft.com  | 200         |
        | stage.www.thebankerdatabase.com       | https://stage-fdi-origin.glb.ft.com | 200         |