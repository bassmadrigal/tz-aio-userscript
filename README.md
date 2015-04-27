# Torrentz All-in-one Userscript

## Does everything you wish Torrentz could do!

This userscript enhances Torrentz (on all its domains) to include a bunch of new features. Among them are customizable magnet-links, ajaxed sorting, intelligent stats, and much much more...

_This project is mainly maintained on [github](https://github.com/elundmark/tz-aio-userscript/), so please report any issues or feature requests @ [github.com/elundmark/tz-aio-userscript/issues](https://github.com/elundmark/tz-aio-userscript/issues)._

## How to use

1. Install [Greasemonkey](https://addons.mozilla.org/en-US/firefox/addon/greasemonkey/) or [Scriptish](https://addons.mozilla.org/en-US/firefox/addon/scriptish/)**(*)** for Firefox, [Tampermonkey](https://chrome.google.com/webstore/detail/dhdgffkkebhmkfjojejmpbldmpobfkfo) for Google Chrome / Chromium, or [Violent Monkey](https://addons.opera.com/en/extensions/details/violent-monkey/) for Opera (should work but I don't check if it does very often).
2. Install the userscript itself from any of the following repositories:
	* **[openuserjs.org](https://openuserjs.org/?q=torrentz)**
	* **[greasyfork.org](https://greasyfork.org/en/scripts/search?q=torrentz)**
	* **[monkeyguts.com](https://monkeyguts.com/index.php?search=torrentz)** _supplies secure updates_
3. Disable _Require Secure Updates_ in your userscript engine to enable updates, if not installed through [monkeyguts.com](https://monkeyguts.com/code.php?id=194). However, doing this is less secure, so be careful.

**(*)** Make sure you use version `0.1.12` or higher. Download the latest version [here](https://addons.mozilla.org/en-US/firefox/addon/scriptish/versions/).

_Tested on Firefox 32+ (GreaseMonkey/Scriptish) and Google Chrome 37+ with Tampermonkey. It does not work with Chrome's built-in userscript installer._

## [Changelog](https://github.com/elundmark/tz-aio-userscript/blob/master/Changelog.md)

## Features

* **Default trackerlist**  _Customizable_ - Magically sorted trackers, that apply to all magnet-links.
	- Enable these by using the **Use default trackers** toggle.
* **Direct .torrent links**  Applies to all avaliable sites listed on each 'single page'.
* **Magnet links for Everything**  Self-explanatory.
* **Custom Search Engines**  _Customizable_ - Appears automatically underneith the search-box, and any selected text in the title of individual torrents. For added security the referrer is removed using `data:text/html...` links.
	- You can also turn this off using the **Search tabs** toggle.
* **Custom CSS Editor** _Customizable_ - Added by demand, edit away!
	- You can also turn this off using the **Custom CSS** toggle.
* **Ad removal**  _On/Off_ - Wouldn't be a UserScript without this. Also gets rid of the "click popup ads". As new ads are added, this script will be updated.
* **Force HTTPS**  _On/Off_ - Off by default, but forces SSL (`https://`) if enabled.
* **TV Episode Links**  Helps you search for next/prev episode/season, click the links in the filter-bar or use `SHIFT+[arrowkeys]` when available by searching for the common patters _sNNeNN_ or _2013 01 01_.
* **Group results by category**  _On/Off_ - Off by default, this feature will sort all results by category, might not suit everyone, but it helps it you're looking through lots of pages.
* **Highlight markers**  _Customizable_  Shows a new menu above the main search results that allows you to highlight common words in all the results, and makes it easier to find exactly what you're looking for. You can add markers for anything, even using [Regular Expressions](http://www.regular-expressions.info/javascript.html), and also specify the color of them individually.
	- You can also turn this feature off completely using the **Highlight markers** toggle.
* **Stats-bar**  Get all the important info right away, like seed-ratio, a Copy trackerlist button, a Magnet-link, links to the comments and the files, and the total amout of peers.
* **Copy ... Trackers Button**  Copies all trackers to your clipboard (if your engine doesn't support `GM_setClipboard` it shows them instead).
* **Ajaxed sorting**  _On/Off_ - Applies to all search results, uses `history.pushState`.
	- You can also turn this off using the **Ajaxed sorting** toggle.
* **Exclude filter**  _Customizable_ - Remove unwanted torrens by keywords or `RegExp`.
	- You can also turn this off using the **Exclude filter** toggle.
* **Colorful results**  _Customizable_ - Uses a pretty solid `RegExp` pattern to figure out what is what and adds a background color, making it easier to scan every page.
	* Colors can be changed w/ the built in Color Picker.
	* All torrents in all search-results have their own magnet-link that includes your custom trackers.
	* Old/dead-ish torrents are dimmed out to indicate a "dead-ish" torrent.
	* If you use the exclude-filter, the number of excluded torrents are noted at the bottom of the list.
		- You can also turn this off using the **Colorize search results** toggle.
* **Comment links**  _Customizable_ - Changes all valid un-anchored links inside comments to links.
	- You can also turn this off using the **Linkify comments** toggle.
* **Exporter + Importer** - Saves your settings and so you can restore them more easily.
* **Smart keyboard shortcuts**
	* `C` - Copy all the trackers
	* `D` - Trigger the Magnet-link
	* `SHIFT + D` - Download a randomly selected torrent-file of those listed
	* `← →` - Navigate search results pages (Left arrow Right arrow)
	* `SHIFT + →` - Next episode/season
	* `SHIFT + ←` - Previous episode/season
	* `ESC` - General exit/close

_All these settings are accessed by clicking 'TzAio' at the top of each page, and can be flushed and reset if you want to start over, or take advantage of (any) new default trackers that might have been added._

**Remember to hit `Save` when you change your settings!**

### More features worth mentioning

* `.wmv` file warning.
* Adds an rss feed link for empty search results.
* Passes AdBlocker default blacklist.
* Works with Autopager (thx [roshambo](https://userscripts.org/users/143015) for the fix).
* As of **v2.4.0** no longer needs `unsafeWindow`.
* All the data you save is stored permanently and applies across all domains, without the use of cookies or `localStorage`.

## Applies to these sites

* [http\*://torrentz.eu/\*](https://torrentz.eu/)
* [http\*://torrentz.ph/\*](https://torrentz.ph/)
* [http\*://torrentz.li/\*](https://torrentz.li/)
* [http\*://torrentz.com/\*](https://torrentz.com/)
* [http\*://torrentz.me/\*](https://torrentz.me/)
* [http\*://torrentz.in/\*](https://torrentz.in/)
* [http\*://torrentz.hk/\*](https://torrentz.hk/)
* [http\*://torrentz.ch/\*](https://torrentz.ch/)
* [http\*://torrents.de/\*](https://torrents.de/)
* [http\*://tz.ai/\*](https://tz.ai/)
* [http://bestdownload.eu/\*](http://bestdownload.eu/)
* [http\*://torrentsmirror.com/\*](https://torrentsmirror.com/)
* [http://torrentz-proxy.com/\*](http://torrentz-proxy.com/)
* [http\*://torrentz.filesoup.com/\*](http://torrentz.filesoup.com/)

__Note that not all of these work, some redirect to _torrentz.eu_ and some to _torrentz-proxy.com_, but it doesn't hurt to have them all apply still.__

## Known Issues

* Upgrading from <= `v2.7.12` to >= `v2.8.x` will turn off some of your settings, so you need to re-enable them in the settings after upgrading.
* Some have had it stop working (summer 2014), due to (**I think**) the fact that GreaseMonkey has changed it's ways. Follow the instructions **[here](https://github.com/elundmark/tz-aio-userscript/issues/5)** (Issue[#5](https://github.com/elundmark/tz-aio-userscript/issues/5)) and you should be able to spring it back to life. Please leave a comment if you had any luck - **and keep an eye on that page if you didn't have any luck, a better and final solution should be up pretty soon**.

## Using a proxy?

If you can't use **torrentz-proxy.com** or **torrentz.filesoup.com**, you can also try installing [this special version](https://github.com/elundmark/tz-aio-userscript/raw/master/tz-aio.proxy-fix.user.js), which runs on _every_ page, thus making it work again. But It's not *100%* guarateed, it depends on the proxy provider, and seeing there's like 100.000.000 of them I'm not gonna even try.

## Help me, to help us

See something wrong in the code, or maybe you wanna collaborate in keeping this script even more up to date? If so, I'm super stoked! Throw me an email, or contribute to the repo right away!

Email and info: [https://github.com/elundmark](https://github.com/elundmark)

## Included plugins

The following resources are fetched externally by this userscript.

* `@require		https://cdnjs.cloudflare.com/ajax/libs/jquery/2.x.x/jquery.min.js`
* `@require		https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.x.x/underscore-min.js`
* `@require		https://cdn.jsdelivr.net/jquery.spectrum/1.x.x/spectrum.js`
* `@resource	https://cdn.jsdelivr.net/jquery.spectrum/1.x.x/spectrum.css`
* `@resource	http://elundmark.se/_files/js/tz-aio/tz-aio-style-x.css`

## Licences for included software

* [jQuery](http://jquery.com/) JavaScript Library v2.1.3. Includes Sizzle.js [http://sizzlejs.com/](http://sizzlejs.com/). Copyright 2005, 2014 jQuery Foundation, Inc. and other contributors, released under the MIT license [jquery.org/license](http://jquery.org/license).
* [Spectrum Colorpicker](https://github.com/bgrins/spectrum) v1.3.3. Copyright (c) 2014 [Brian Grinstead](http://briangrinstead.com). [License](https://github.com/bgrins/spectrum/blob/master/LICENSE).
* [jQuery replaceText](http://github.com/cowboy/jquery-replacetext/), Copyright (c) 2009 "Cowboy" Ben Alman. Version: 1.1, Last updated: 11/21/2009* [Dual licensed](http://benalman.com/about/license/) under the MIT and GPL licenses. [Project Home](http://benalman.com/projects/jquery-replacetext-plugin/).
* [Underscore.js](http://underscorejs.org/) 1.6.0, (c) 2009-2014 Jeremy Ashkenas, DocumentCloud Inc. Freely distributable under the [MIT](http://www.opensource.org/licenses/mit-license.php) license.

## Legality

This UserScript is Dual licensed under The MIT License (MIT) - [http://opensource.org/licenses/MIT](http://opensource.org/licenses/MIT)
and CC0 1.0 Univeral License - [https://creativecommons.org/publicdomain/zero/1.0/](https://creativecommons.org/publicdomain/zero/1.0/)

The author of this script takes no responsibility for any potetial harm done to any hamsters, servers, browsers or wallets. While browsing affected sites with this script is fully legal, downloading illegal copyrighted material still isn't.
