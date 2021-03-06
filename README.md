# Jungle

A mini e-commerce application built with Rails 4.2. Forked from Lighthouse Labs to prepare us for a real-life situation in which we are confronted with a REAL code base full of bugs and malfunctions. We fixed glaring errors and vastly improved the functionality of this app: included but not limited to:
- Nested Resources
- Rails RESTful conventions
- UX
- Basic Auth
- Login and Registration
- Bcrypt
- Bootstrap

## Screen shot
![The Product Catalog](https://user-images.githubusercontent.com/34799149/39391562-6c8319cc-4a5a-11e8-8e72-a4e9aeba86d7.png)


![Indepth Catalog View](https://user-images.githubusercontent.com/34799149/39391563-6ca26fd4-4a5a-11e8-9650-1d2edd1da4fc.png)

![This is the Post Checkout Screen](https://user-images.githubusercontent.com/34799149/39391564-6cb5bb34-4a5a-11e8-916d-ced76b41f793.png)

## Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
