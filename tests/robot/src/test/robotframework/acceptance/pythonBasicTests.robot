*** Settings ***
Documentation     Executes the python basic gRPC Tests
Resource         ./resources/python/basic.robot

*** Test Cases ***
Setup gRPC Tests
    Run buildBasic Script
    Start Offload Server 
    Start Stats Server 
    Start Activation Server 
Full Client Tests
    Run Client
Add IPv4 Session Test
    Run Add Session IPV4
Add IPV6 Session Test
    Run Add Session IPv6
Get Session Test
    Run Get Session
Delete Session Test
    Run Delete Session
Add Mirror Session Test
    Run Add Mirror Session
Get Closed Sessions Test
    Run Get Closed Sessions
Get All Closed Sessions Test
    Run Get All Sessions
Suite Teardown
    Stop Activation Server
    Stop Stats Server
    Stop Offload Server
