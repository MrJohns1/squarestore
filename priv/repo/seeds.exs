# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Squarestore.Repo.insert!(%Squarestore.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

userset1 = %{fname: "Ken", lname: "Madsen", email: "ken.r.e.madsen@gmail.com", password: "admin123", wishlist: %{}, address: "sognanvegen 95", city: "steinkjer", country: "Norway", zip_code: 7710}

userset2 = %{fname: "Cato", lname: "Steivang", email: "cato.steivang@gmail.com", phone: "92266772", password: "password123", wishlist: %{}, address: "someroad 101", city: "Sparbu", country: "Norway", zip_code: 7710}

userset3 = %{fname: "P\u00c5l Kristian", lname: "\u00D8yen", email: "pk.oyen@gmail.com", phone: "99 66 77 55", password: "psw987654321", address: "Elvegaten 5", city: "Big Apple", country: "Brunei", zip_code: 6666, wishlist: %{}}

userset4 = %{fname: "Eva", lname: "Gjermstad", email: "Evita@gmail.com", phone: "96680660", password: "Postenskalfrem", address: "Sognanvegen 95", city: "Sparbu", country: "Norway", zip_code: 7710, wishlist: %{}}

userset5 = %{fname: "Julie", lname: "Gjermstad", email: "Jewel@gmail.com", phone: "96677888", password: "5.3 i snitt", address: "Sognanvegen 95", city: "Sparbu", country: "Norway", zip_code: 7710, wishlist: %{}}

Squarestore.Identity.create_user(userset1)
Squarestore.Identity.create_user(userset2)
Squarestore.Identity.create_user(userset3)
Squarestore.Identity.create_user(userset4)
Squarestore.Identity.create_user(userset5)
