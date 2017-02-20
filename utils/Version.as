/**
	An ActionScript 2.0 Version class.
	Author: Josh aka leveleditor
	Version: 1.0.0.0
	Modified: 11/11/2014
	
	This is a custom AS2 Version class for storing and comparing version numbers.
*/
/*
	Examples of usage:
	import utils.Version;
	var currentVersion:Version = new Version(1, 2, 9001, 42);
	var newVersion:Version = new Version(1, 3, 3, 7);
	if (newVersion.newerThan(currentVersion)) {
		trace("An update (" + newVersion + ") is available!");
	} else if (newVersion.olderThan(currentVersion)) {
		trace("Your version (" + currentVersion.toString() + ") is ahead-of-date, somehow.");
	} else {
		trace("Your version (v" +
		currentVersion.major + "." +
		currentVersion.minor + "." +
		currentVersion.patch + "." +
		currentVersion.revision + ") is up-to-date.");
	}
*/

class utils.Version {
	private var _major:Number;
	private var _minor:Number;
	private var _patch:Number;
	private var _revision:Number;

	public function Version(major:Number, minor:Number, patch:Number, revision:Number) {
		this._major = major;
		this._minor = minor;
		this._patch = patch;
		this._revision = revision;
	}

	function newerThan(other:Version):Boolean {
		if (major > other.major) {
			return true;
		} else if (major < other.major) {
			return false;
		} else {
			if (minor > other.minor) {
				return true;
			} else if (minor < other.minor) {
				return false;
			} else {
				if (patch > other.patch) {
					return true;
				} else if (patch < other.patch) {
					return false;
				} else {
					if (revision > other.revision) {
						return true;
					} else if (revision < other.revision) {
						return false;
					} else {
						return false;
					}
				}
			}
		}
	}

	function olderThan(other:Version):Boolean {
		if (major > other.major) {
			return false;
		} else if (major < other.major) {
			return true;
		} else {
			if (minor > other.minor) {
				return false;
			} else if (minor < other.minor) {
				return true;
			} else {
				if (patch > other.patch) {
					return false;
				} else if (patch < other.patch) {
					return true;
				} else {
					if (revision > other.revision) {
						return false;
					} else if (revision < other.revision) {
						return true;
					} else {
						return false;
					}
				}
			}
		}
	}

	public function get major():Number {
		return this._major;
	}
	public function set major(value:Number):Void {
		this._major = value;
	}

	public function get minor():Number {
		return this._minor;
	}
	public function set minor(value:Number):Void {
		this._minor = value;
	}

	public function get patch():Number {
		return this._patch;
	}
	public function set patch(value:Number):Void {
		this._patch = value;
	}

	public function get revision():Number {
		return this._revision;
	}
	public function set revision(value:Number):Void {
		this._revision = value;
	}

	public function toString():String {
		return "v" + major + "." + minor + "." + patch + "." + revision;
	}
}
