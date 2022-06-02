# docker-findomain
(WIP) Convenient way to launch/monitor domains with https://github.com/Findomain/Findomain

## Design
Standalone container that takes an input (list of domains as a csv) and produces an output (up to date object storage csvs (one for maindomains and one for subdomains) with all current domains). No exposed ports or other requirements, database should be local & self contained - can be persisted, but should be able to be recreated if not if container is restarted (by importing both the input and last cached outputs).

## TODO
- load domains from a CSV url
- trigger scans hourly if not already running
- after each scan export main domains and subdomains to 2 separate csv files on object storage for use in other processes
   - preserve ownership by merging attributes from original CSV to all output domains (i.e. subdomains of maindomain get all maindomains attributes from input CSV)