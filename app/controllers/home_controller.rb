class HomeController < ApplicationController
  def page
    @elm_flags = {user_full_name: "Me Myself",
                  user_email: "me@example.com",
                  contact_id: 1234,
                  branch_id: 5678,
                  branches: [{"branch_id":1234,
                              "name": "My Branch 1",
                              "address": "123 My Street, Someville",
                              "postcode": "AB C12",
                              "phone": "01234567"},
                             {"branch_id":1235,
                              "name": "My Branch 2",
                              "address": "456 My Street, Someville",
                              "postcode": "AB C12",
                              "phone": "01234568"},
                             {"branch_id":12346,
                              "name": "My Branch 3",
                              "address": "789 My Street, Someville",
                              "postcode": "AB C12",
                              "phone": "01234569"}
                            ],
                  status: "Ok" }
  end
end
