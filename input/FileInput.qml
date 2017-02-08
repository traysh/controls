BaseInput {
	property string value;
	property string filter;
	width: 250;
	height: 30;
	type: "file";

	function _update(name, value) {
		switch (name) {
			case 'filter': this.element.dom.accept = value; break
		}

		_globals.controls.input.BaseInput.prototype._update.apply(this, arguments);
	}

	constructor: {
		var self = this
		this.element.on("change", function(e) { self.value = e.target.value }.bind(this))
	}
}