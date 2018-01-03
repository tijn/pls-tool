# pls-tool

A command-line tool to show the information in PLS files.

## Installation

- clone it
- compile it
- put the binary somewhere (~/bin or /usr/local/bin or ...wherever you like)

## Usage

```sh
$ ./pls --help
Usage: pls [OPTION]... PLS-FILE...

    -a, --all                        Show all information (by default it only shows the file entries)
    -h, --help                       Display this screen
    -v, --verbose                    Verbose output (also outputs the filename of the pls)
```

### some examples:

By default it outputs all the files listed in the pls:

```sh
$ ./pls ~/Music/Radio/Indie_XL.pls
http://server-23.stream-server.nl:8438/
```

You can also show the other fields, titles and lengths if they are provided.

```sh
$ ./pls -a ~/Music/Radio/Indie_XL.pls
File:   http://server-23.stream-server.nl:8438/
Title:  (#1) Indie XL
Length: stream
```

## Development

Clone it and improve it.

## Contributing

1. Fork it ( https://github.com/tijn/pls-tool/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [tijn](https://github.com/tijn) Tijn Schuurmans - creator, maintainer
