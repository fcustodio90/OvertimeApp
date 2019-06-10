# Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week.

## Models

- X Post -> date:date rationale:text
- X User -> Device
- X Adminuser -> STI
- AuditLog

## Features:

- Approval Workflow
- SMS Sending -> link to approval or overtime input -> integrate with heroku scheduler
- X Administrate admin dashboard
- X Block non admin and guest users
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime

## UI:

- X Bootstrap -> formatting
- X Icons from Bootstrap
- X Update the styles for forms

## TODOS:

- Twilio API SMS is fully implemented but request is not sucessfully made because in Portugal the free trial doesn't include a twilio number I had to actually pay one unlike the US trial - Source youtube.


