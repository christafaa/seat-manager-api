# README

Rails RESTful API that supports [Seat Manager](https://github.com/christafaa/react-seat-app)

GET /concerts<br />

[Example](https://guarded-retreat-91644.herokuapp.com/concerts/)<br />

Response body:

```
[
  {
    id: 1,
    title: "Russian Inspiration",
    date: "2018-10-16",
    location: "Alice Tully Hall"
  },
  {
    id: 2,
    title: "Quartet Variations",
    date: "2018-10-21",
    location: "Alice Tully Hall"
  }
]
```

GET /concerts/:id/attendees<br />

[Example](https://guarded-retreat-91644.herokuapp.com/concerts/1/attendees)<br />

Response body:
```
{
  id: 1,
  title: "Russian Inspiration",
  date: "2018-10-16",
  location: "Alice Tully Hall",
  attendees: [
    {
      id: 7,
      name: "Raymond Delarosa"
    },
    {
      id: 3,
      name: "Angelica Nicholson"
    }
  ]
}
```

GET /concerts/:id/seats<br />

[Example](https://guarded-retreat-91644.herokuapp.com/concerts/1/seats)<br />

Response body:
```
{
  id: 1,
  title: "Russian Inspiration",
  date: "2018-10-16",
  location: "Alice Tully Hall",
  seats: [
    {
      id: 1,
      number: "101",
      concert_id: 1,
      attendee_id: null
    },
    {
      id: 2,
      number: "104",
      concert_id: 1,
      attendee_id: 3
    }
  ]
}
```
