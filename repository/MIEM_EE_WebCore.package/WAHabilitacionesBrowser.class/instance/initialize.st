other
initialize

	super initialize.

	instrumentosBatchList := SewafBatchedList parentComponent: self.
	instrumentosBatchList batchSize: self session user regularListPagingSize;
		isBottomBatch: true;
		navigationCssClass: 'batch-div-bottom'.