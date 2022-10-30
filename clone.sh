#!/bin/sh

echo "Cloning repositories..."

CODE=$HOME/Code

# personal
git clone git@github.com:michavie/michavie.com.git $CODE/michavie.com

# superciety
git clone git@github.com:Superciety/elrond-sdk-laravel.git $CODE/superciety--elrond-sdk-laravel
git clone git@github.com:Superciety/front-pwa.git $CODE/superciety--pwa
git clone git@github.com:Superciety/api.git $CODE/superciety--api
git clone git@github.com:Superciety/identity-sc.git $CODE/superciety--identity-sc
git clone git@github.com:Superciety/fellowships-sc.git $CODE/superciety--fellowships-sc
