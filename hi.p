erDiagram
  TABLE admins {
    id: int (PK)
    name: varchar(20)
    password: varchar(50)
  }

  TABLE users {
    id: int (PK)
    name: varchar(20)
    email: varchar(50)
    password: varchar(50)
  }

  TABLE products {
    id: int (PK)
    name: varchar(100)
    details: varchar(500)
    price: int
    image_01: varchar(100)
    image_02: varchar(100)
    image_03: varchar(100)
  }

  TABLE cart {
    id: int (PK)
    user_id: int
    pid: int
    name: varchar(100)
    price: int
    quantity: int
    image: varchar(100)
  }

  TABLE wishlist {
    id: int (PK)
    user_id: int
    pid: int
    name: varchar(100)
    price: int
    image: varchar(100)
  }

  TABLE orders {
    id: int (PK)
    user_id: int
    name: varchar(20)
    number: varchar(10)
    email: varchar(50)
    method: varchar(50)
    address: varchar(500)
    total_products: varchar(1000)
    total_price: int
    placed_on: date
    payment_status: varchar(20)
  }

  relationship OneToMany {
    source: admins
    target: orders
  }

  relationship OneToMany {
    source: users
    target: orders
  }

  relationship OneToMany {
    source: users
    target: cart
  }

  relationship ManyToMany {
    source: users
    target: products
    using: wishlist
  }

  relationship ManyToMany {
    source: orders
    target: products
  }

  relationship ManyToOne {
    source: cart
    target: products
  }

  relationship ManyToOne {
    source: wishlist
    target: products
  }