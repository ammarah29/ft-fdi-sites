import requests
from lettuce import *
from nose.tools import assert_equal




@step('I make a request to ([^"]*)')
def make_request(step, hostname):
    world.response = requests.get(hostname)

@step('I should see response (\d+)')
def check_status_code(step, status_code):
    assert_equal(world.response.status_code, int(status_code))

@step('I set the ([^"]*) and ([^"]*)')
def set_header(step, header, origin):
    world.response = requests.get(origin, headers= {"host":header})

@step('I check the response code (\d+)')
def i_check_the_response_code_status_code(step, status_code):
    assert_equal(world.response.status_code, int(status_code))
