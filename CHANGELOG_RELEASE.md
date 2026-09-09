# Release 1.12.1+26.2

## Fixed
- Fixed an issue where players could incorrectly become ghosts after a server restart.

## Changed
- Updated the Fabric Loader dependency to the latest supported version.

## Internal
- Added persistent ghost-state tracking to reliably distinguish actual ghosts from living players.
- Added migration support for existing ghosts from older worlds to the new ghost-state system.