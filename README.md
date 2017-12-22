# webbrowser

#### Table of Contents

1. [Overview](#overview)
2. [Setup - The basics of getting started with webbrowser](#setup)
    * [What webbrowser affects](#what-webbrowser-affects)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Limitations - OS compatibility, etc.](#limitations)

## Overview

Puppet module to install Chrome and/or Firefox on CentOS

## Setup

### What webbrowser affects

* Install a new yum repo and new package(s)

## Usage

To install Chrome:
	class { 'webbrowser::chrome': }

To install Firefox
    class { 'webbrowser::firefox': }


## Limitations

Tested only on Centos 7
