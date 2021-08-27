
exports.up = function(knex) {
  return knex.schema
    .table('child_table', function (table) {
      table.integer('FKParentID').unsigned();
      table.foreign('FKParentID').references('id').inTable('parent_table').onUpdate('CASCADE').onDelete('CASCADE');
    })
};

exports.down = function(knex) {
  return knex.schema
    .table('child_table', function (table) {
      table.dropForeign('FKParentID');
      table.dropColumn('FKParentID');
    })
};
