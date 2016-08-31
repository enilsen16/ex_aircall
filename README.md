# ExAircall
[![Build Status](https://travis-ci.org/HiOperator/ex_aircall.svg?branch=master)](https://travis-ci.org/HiOperator/ex_aircall)

[Aircall documentation](http://developer.aircall.io/)

## Installation

  1. Add `ex_aircall` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:ex_aircall, "~> 0.1.0"}]
    end
    ```

  2. Ensure `ex_aircall` is started before your application:

    ```elixir
    def application do
      [applications: [:ex_aircall]]
    end
    ```

## Contributing

Please feel free to add more API endpoints or Webhook support.

At the time of writing this only the `ping` and `calls` API endpoints are supported.
