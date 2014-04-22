# GreenValley

Micro Private PaaS with Ruby.
Heavily influenced from dokku and flynn, also uses several flynn components. You
should use flynn instead, this is a distributed Ruby experiment which is not for
production use.

## Installation

    $ curl https://raw.github.com/hackberry-gh/green_valley/master/bootstrap.sh | sudo bash

## Configuration

Since it uses gitreceive from @progrium, you need to upload your ssh key to server;

    $ cat ~/.ssh/id_rsa.pub | val@greenvalley.org "sudo GITUSER=val gitreceive upload-key lemmycaution"

on vagrant;

    $ cat ~/.ssh/id_rsa.pub | ssh -i ~/.vagrant.d/insecure_private_key vagrant@greenvalley.local "sudo GITUSER=val gitreceive upload-key lemmycaution"
    
## Todo

- Write more tests
- Documentation


## Contributing

1. Fork it ( http://github.com/<my-github-username>/gv-valley/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


