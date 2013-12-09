$(document).ready(function() {
  var StaticDataSource = function( options ) {
    this._columns = options.columns;
    this._formatter = options.formatter;
    this._data = options.data;
    this._delay = options.delay;
  };

  StaticDataSource.prototype = {
    columns: function() {
      return this._columns
    },

    data: function( options, callback ) {
      var self = this;
                              
      var data = $.extend(true, [], self._data);
                                      
      // SEARCHING
      if (options.search) {
        data = _.filter(data, function (item) {
        for (var prop in item) {
          if (!item.hasOwnProperty(prop)) continue;
          if (~item[prop].toString().toLowerCase().indexOf(options.search.toLowerCase())) return true;
          }
          return false;
        });
      }

      var count = data.length;
      
      // SORTING
      if (options.sortProperty) {
        data = _.sortBy(data, options.sortProperty);
        if (options.sortDirection === 'desc') data.reverse();
      }
      
      // PAGING
      var startIndex = options.pageIndex * options.pageSize;
      var endIndex = startIndex + options.pageSize;
      var end = (endIndex > count) ? count : endIndex;
      var pages = Math.ceil(count / options.pageSize);
      var page = options.pageIndex + 1;
      var start = startIndex + 1;
      
      data = data.slice(startIndex, endIndex);
      
      if (self._formatter) self._formatter(data);

      callback({ data: data, start: start, end: end, count: count, pages: pages, page: page });
    }
  };

  var dataSource = new StaticDataSource({
    columns: [
      {property:"creditor",label:"Creditor",sortable:true},
      {property:"amount",label:"Amount",sortable:true},
      {property:"purchase_date",label:"Date",sortable:true},
      {property:"account",label:"Account",sortable:true}
    ],
    data: gon.credits,
    delay: 250
  });

  $('#MyGrid').datagrid({
        dataSource: dataSource,
        stretchHeight: true
  });
});
