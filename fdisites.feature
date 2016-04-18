Feature: FDI live and stage sites running

   Scenario Outline: FDI LIVE sites running
    I make a request to <hostname>
    I should see response <status_code>

       Examples:
        | hostname                                           | status_code |
        | http://ams.fdiintelligence.com                     | 200         |
        | http://app.fdibenchmark.com                        | 200         |
        | http://app.fdimarkets.com                          | 200         |
        | http://data.ftconfidentialresearch.com             | 200         |
        | http://de.fdimarkets.com                           | 200         |
        | http://islamicbanks.thebanker.com                  | 200         |
        | http://www.fdibenchmark.com                        | 200         |
        | http://www.fdimarkets.com                          | 200         |
        | http://www.fdireports.com                          | 200         |
        | http://www.thebankerdatabase.com                   | 200         |
        | https://www.thebankerdatabase.com                  | 200         |



  Scenario Outline: FDI STAGE sites running
    I make a request to <hostname>
    I should see response <status_code>

       Examples:
        | hostname                                             | status_code |
        | http://stage.ams.fdiintelligence.com                 | 200         |
        | http://stage.app.fdibenchmark.com                    | 200         |
        | http://stage.app.fdimarkets.com                      | 200         |
        | http://stage.data.ftconfidentialresearch.com         | 200         |
        | http://stage.de.fdimarkets.com                       | 200         |
        | http://stage.islamicbanks.thebanker.com              | 200         |
        | http://stage.www.fdibenchmark.com                    | 200         |
        | http://stage.www.fdimarkets.com                      | 200         |
        | http://stage.www.fdireports.com                      | 200         |
        | http://stage.www.thebankerdatabase.com               | 200         |
        | https://stage.www.thebankerdatabase.com              | 200         |
