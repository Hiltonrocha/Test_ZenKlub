#encoding: utf-8

Feature: Sign in ZenKlub.com
              As a Zenklub user
              I want to access a professional area
  So that they can have more information about the professional

        @login
        Scenario: Sign in with user valid
            Given I access Zenklub.com
             When I sign in with email and password valid
             Then I should be redirected to session page
              And should not have any session scheduled

        @visitprofessional
        Scenario: Visit Professional Page
            Given I access ours specialist page
             When I click to see more info about the first professional
             Then i should be see the info about the professional