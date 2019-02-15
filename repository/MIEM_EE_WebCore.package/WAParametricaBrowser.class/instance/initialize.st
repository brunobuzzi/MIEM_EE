other
initialize

	super initialize.

	batchList := SewafBatchedList parentComponent: self.
	batchList batchSize: self session user regularListPagingSize;
		isBottomBatch: true;
		navigationCssClass: 'batch-div-bottom'.