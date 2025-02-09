# Assignment Test - Technical Question API Automation
This repository contains the assignment test for AMARTA

## Getting Started
These intruction will get you a project and how to run the automation on your local machine.

### Prerequsites
For API and UI Automation will requires [Ruby](https://www.ruby-lang.org/en/) with version 2.3.0 or above. We recommend to use ruby version manager like [rvm](https://rvm.io/) to install the ruby.

### Setup
Once you have all the prerequisites properly installed, you can start by cloning this repository.
- To clone the repository, run the following command in your terminal:
```
git clone https://github.com/andse1n/PetStore
```
- To navigate to the repository directory, run the following command in your terminal:
```
cd PetStore
```
- To install bundler, run the following command in your terminal:
```
gem install bundler
```
- Run the following command to install the project dependencies:
```
bundle install
```
Note: These instructions assume that you have Git installed on your machine. If you don't have Git installed, you can follow the instructions on the [Git](https://github.com/git-guides/install-git) to install it.

### Run Test
Once you have cloned the repository and setup all project dependencies, you can run test using the following instructions.
- To run API Automation, navigate to correct directory:
```
cd API
```
- run the following command to execute your API Automation tests:
```
bundle exec cucumber
```

### Results
- Result of API Automation can be seen here :https://reports.cucumber.io/reports/25b51f8e-66e1-4066-925f-2f5140d8496e