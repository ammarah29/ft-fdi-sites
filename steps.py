import requests
from lettuce import *
from nose.tools import assert_equal



@step('I make a request to ([^"]*)')
def make_request(step, hostname):
    world.response = requests.get(hostname)

@step('I should see response (\d+)')
def check_status_code(step, status_code):
    assert_equal(world.response.status_code, int(status_code))


