defmodule ElixirSydney.Meetup do
  defstruct [:title, :slug, :short_date, :long_date, :date, :location, :location_url, :description, :url, :talks]

  alias ElixirSydney.{Meetup, Talk, Speaker}

  def next_meetup do
    hd all()
  end

  def past_meetups do
    tl all()
  end

  def all do
    [
      %Meetup{
        title: "Authentication, Recursion and Registries",
        slug: "authentication-recursion-and-registries",
        date: ~D[2017-03-01],
        long_date: "Wednesday 1st, March 2017, 6:00pm - 8:30pm",
        short_date: "March 2017",
        location: "Pivotal Labs, Level 11, 155 Clarence Street",
        location_url: "https://www.google.com.au/maps/dir//Pivotal,+11%2F155+Clarence+St,+Sydney+NSW+2000/@-33.8679869,151.1698764,13z/data=!3m1!4b1!4m8!4m7!1m0!1m5!1m1!1s0x6b12ae3f3b312871:0x40fe7bd0f94a2249!2m2!1d151.2049818!2d-33.8679919",
        description: """
        This month we'll be talking about a topic that we haven't covered before, but is important for securing your webapps: Authentication with JWT and their usage with Plugs, Joken and Phoenix.

        We'll also be getting with writing Elixir in a recursive style. This may not be what you're used from other languages but it's pretty great in Elixir and Erlang. We'll learn how to write the ridiculously fast Elixir functions that are easy to read.

        Lastly we'll learn about what's new in Elixir 1.4 with a deep dive into the new Process Registry module.

        It's going to be a great meetup, so come along and join us!
        """,
        url: "https://www.meetup.com/en-AU/sydney-ex/events/237380598/",
        talks: [
          %Talk{
            title: "Authentication with JWT",
            description: """
            Need to secure your Phoenix or Plug application? Not sure how JWT works? Well there are lots of options in Elixir for adding security to your webapp. Sunil will introduce JWT and the various options for add Authentication to your app.
            """,
            speaker: %Speaker{
              name: "Sunil Gopinath",
              avatar_url: "https://a248.e.akamai.net/secure.meetupstatic.com/photos/member/c/2/d/a/member_115669882.jpeg",
              meetup_url: "https://www.meetup.com/en-AU/sydney-ex/members/43452202/",
              website_url: "",
              twitter: ""
            }
          },
          %Talk{
            title: "Getting Comfortable With Recursion",
            description: """
            You might not be used to writing code in a recursive style if you're coming from a more imperative language. Heard of Tail Recursion or Tail Call Optimisation, but not sure what it really means?

            Josh will demystify writing recursive functions that are blazingly fast and help you avoid some of the traps.
            """,
            speaker: %Speaker{
              name: "Josh Price",
              avatar_url: "https://a248.e.akamai.net/secure.meetupstatic.com/photos/member/4/5/c/e/member_12197870.jpeg",
              meetup_url: "https://www.meetup.com/en-AU/sydney-ex/members/8425371/",
              website_url: "",
              twitter: "@joshprice"
            }
          },
          %Talk{
            title: "Using the New Registry in Elixir 1.4",
            description: """
            Elixir 1.4 introduces the new Process Registry module to help manage your processes in OTP. If you've attended our OTP introductory series then you'll be ready to join Martin as he shows us how we can use this in our Elixir OTP applications.
            """,
            speaker: %Speaker{
              name: "Martin Stannard",
              avatar_url: "https://a248.e.akamai.net/secure.meetupstatic.com/photos/member/1/7/c/c/member_251766092.jpeg",
              meetup_url: "https://www.meetup.com/en-AU/sydney-ex/members/83178992/",
              website_url: "",
              twitter: ""
            }
          }
        ]
      },
      %Meetup{
        title: "Sydney Elixir Meetup",
        slug: "sydney-elixir-meetup",
        date: ~D[2017-02-01],
        short_date: "February 2017",
        long_date: "Wednesday 1st, February 2017, 6:00pm - 8:30pm",
        location: "Pivotal Labs, Level 11, 155 Clarence Street",
        location_url: "https://www.google.com.au/maps/dir//Pivotal,+11%2F155+Clarence+St,+Sydney+NSW+2000/@-33.8679869,151.1698764,13z/data=!3m1!4b1!4m8!4m7!1m0!1m5!1m1!1s0x6b12ae3f3b312871:0x40fe7bd0f94a2249!2m2!1d151.2049818!2d-33.8679919",
        description: """
        Nick Gunn will reveal the awesome power of Supervisors.

        Robin Hilliard will show us How to release Hex packages and tell us about his first: DefUnit

        We'll also discuss what has been happening in Elixir-land (like Elixir 1.4.1 and friends).

        Beginners are more than welcome, and this a great chance to get started and get help from more experienced Elixir developers. 
        """,
        url: "https://www.meetup.com/en-AU/sydney-ex/events/237380598/",
        talks: [
          %Talk{
            title: "Introduction to Supervisors",
            description: """
            Want to know more about supervisors? Nick has got the talk for you.
            """,
            speaker: %Speaker{
              name: "Nick Gunn",
              avatar_url: "https://a248.e.akamai.net/secure.meetupstatic.com/s/img/2982428616572973604/noPhoto_80.gif",
              meetup_url: "https://www.meetup.com/en-AU/sydney-ex/members/205821026/",
              website_url: "",
              twitter: ""
            }
          },
          %Talk{
            title: "Adventures in Dialyzer with Defunit",
            description: """
            Ever wondered how to add type safety to Elixir code? Robin will show you how!
            """,
            speaker: %Speaker{
              name: "Robin Hilliard",
              avatar_url: "https://a248.e.akamai.net/secure.meetupstatic.com/photos/member/a/5/2/f/member_3822287.jpeg",
              meetup_url: "https://www.meetup.com/en-AU/sydney-ex/members/7114884/",
              website_url: "",
              twitter: ""
            }
          }
        ]
      }
    ]
  end
end
