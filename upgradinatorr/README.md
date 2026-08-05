
### `upgradinatorr.py`

Searches for quality upgrades in Radarr and Sonarr using a tag-based cycle system. Items are tagged after being searched so they are skipped on the next run. Once every item has been tagged, all tags are cleared and the cycle starts over — ensuring every item gets searched over time without hammering the API all at once.

**Features:**
- Processes Radarr (movie-level) and Sonarr (per-season) instances
- Configurable batch size per run via `count`
- Skips Sonarr seasons below a configurable monitored-episode threshold
- Inspects the download queue after searching and reports active downloads with custom format scores
- Unattended mode: automatically clears tags and resets the cycle when all items are processed
- Dry-run mode (`--dry-run`) for safe testing
- Discord webhook notifications when items are found and searched
- Config: `upgradinatorr.yml`

- ## Credits
- Taken from BZ00001's [scripts](https://github.com/BZ00001/scripts).
- Based on original modules by [Drazzilb08](https://github.com/Drazzilb08/daps). Rewritten as standalone scripts with no framework dependency.
