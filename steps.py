import requests
import yaml
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

@step('I set the ([^"]*) and ([^"]*) with cookie')
def set_header_cookie(step, header, origin):
    with open("/home/jenkins/config.yml", 'r') as f:
        doc = yaml.load(f)
        key = doc["akamai_cookie"]["secret_key"]

    world.response = requests.get(origin, headers= {"host":header,"Cookie":key})
