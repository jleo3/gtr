// include spec/javascripts/helpers/spec_helper.js and app/assets/javascripts/foo.js
//= require application
//= require shared

describe('Foo', function() {
  it("does something", function() {
    expect(1 + 1).toBe(2);
  });
});
