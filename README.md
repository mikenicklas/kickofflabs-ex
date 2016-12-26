# kickofflabs-ex

A simple tool to fetch or create new leads on your [KickoffLabs](http://kickofflabs.com) campaign.

### Example Usage

**IMPORTANt: Set Your List ID**

In the `config/config.exs` set your appropriate `list_id`.

**Create New Lead**

To create a new lead, simply call `Kickofflabs.Lead.new` and provide a keyword list which must include an `email`. You can append whatever custom fields you want that lead to have.

```
Kickofflabs.Lead.new(email: "test@example.com", your_custom_field: "NYC")
```

**Get an Existing Lead**

To get an existing lead, simply call `Kickofflabs.Lead.get` with an `email` OR `social_id`.

```
Kickofflabs.Lead.get(email: "test@example.com")

Kickofflabs.Lead.get(social_id: "DCD8B")
```

### Todo

1. Return a Lead struct opposed to HTTPosion response
2. Create hex package
