package arm;

import iron.system.Storage;

class StorageTest extends armory.Trait {
	public function new() {
		super();

		notifyOnInit(function() {

			// Retrieve storage
			var data = Storage.data;
			if (data == null) return;

			// First run - init integer variable named 'count'
			if (data.count == null) {
				data.count = 0;
				// Init more variables as needed
				// data.test1 = "String";
				// data.test2 = 1.23;
				// data.test3 = true;
				// data.test4 = [3, 5, 7];
				// data.test5 = {a: 3, b: "value"};
			}

			trace("Count is " + data.count);
			
			// Increase count on every run
			data.count++;

			// Write changes
			Storage.save();
		});
	}
}
