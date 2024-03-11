---
layout: default
title: Data Model
parent: Architecture
nav_order: 2
---

# Data Model

```mermaid
---
title: Data Model
---
erDiagram
    EXPERIMENT ||--o{ SESSION : has
    EXPERIMENT ||--|| FILTER : has
    FILTER {
        text query
    }
    EXPERIMENT ||--o{ MAILING : has
    EXPERIMENT ||--o{ INVITATION : has
    EXPERIMENT {
        string title
        string publicTitle
    }
    MAILING ||--o{ INVITATION : creates
    MAILING {
        date start
        date end
        int limit
    }
    INVITATION ||--|| CONTACT : belongs-to
    INVITATION {
        date start
        date end
        int limit
    }

    SESSION ||--o{ ASSIGNMENT : has
    SESSION ||--o{ SESSION : follow-up
    SESSION {
        date start
        int duration
        date closed_at
        date canceled_at
    }
    ASSIGNMENT }|--|{ CONTACT : belongs-to
    ASSIGNMENT {
        bool marked_as_deleted
        date canceled_at
    }
```

## Experiment

The experiment is the entrypoint.

## Filter

The filter contains of all the conditions that have to be met by a contact to be invited to an experiment. Conditions can consist of custom fields or information about past participations.

## Mailing

A mailing is a time window when invitations to contacts meeting defined criteria are sent out. A limit of sent invitations can be defined.

## Invitation

An invitation enables a contact to access public experiment information and enroll in sessions or the waiting list.

## Session

A session is the time and place at which an experiment is carried out. Follow-up sessions can only be attended if you have already participated in the previous session.

## Assignment

An assignment is the linking of a session to a contact.