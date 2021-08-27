
exports.up = function(knex) {
  return knex.schema
    .dropTable('cars')
    .dropTable('countries')
    .dropTable('images')
    .dropTable('users')
    .createTable('parent_table', function (table) {
      table.increments('id');
      table.string('ParentName');
    })
    .createTable('child_table', function (table) {
      table.increments('id');
      table.string('ChildName');
      table.string('OtherValue');
    })
};

exports.down = function(knex) {
  return knex.schema
    .dropTable('parent_table')
    .dropTable('child_table')
};
