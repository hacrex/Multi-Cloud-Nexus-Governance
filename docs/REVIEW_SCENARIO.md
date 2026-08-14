# Review Scenario: A Public CIDR Appears in a Provider Root

This is a short exercise for explaining a governance decision in an interview.

## Situation

A plan or static check identifies `0.0.0.0/0` in a provider root. The immediate question is whether the rule is intentional, scoped, and approved.

## Response

1. Identify the resource, port, direction, environment, and owner.
2. Check whether a narrower CIDR, private connectivity, an approved ingress, or a temporary exception is appropriate.
3. Do not silence the check only to get a plan through review.
4. Record the decision and remove any temporary exception after the test.

## What to say in an interview

> “The repository check is deliberately simple. It catches an obvious risky default before a plan is reviewed. I would then use the provider’s context and the application requirement to decide whether to narrow, redesign, or document an approved exception.”
