require 'spec_helper'

PresenceCheckTestTableName = Class.new(ActiveRecord::Base) do
  self.table_name = :table_name
end

describe "presence validation in check constraint begaviour" do
  let(:db) { ActiveRecord::Base.connection }

  before do
    Mv::Core::Services::CreateMigrationValidatorsTable.new.execute

    db.drop_table(:table_name) if db.data_source_exists?(:table_name)

    Class.new(::ActiveRecord::Migration[5.0]) do
      def change
        create_table :table_name, id: false do |t|
          t.string :presence, validates: { presence: { allow_nil: true, as: :check } }
        end
      end
    end.new('TestMigration', '20141118164617').migrate(:up)
  end

  after { Mv::Core::Db::MigrationValidator.delete_all }

  subject(:insert) { PresenceCheckTestTableName.create! opts }

  describe "with all nulls" do
    let(:opts) { {} }

    it "doesn't raise an error" do
      expect{ subject }.not_to raise_error
    end
  end

  describe "with all valid values" do
    let(:opts) { {
      presence: 'some value',
    } }

    it "doesn't raise an error" do
      expect{ subject }.not_to raise_error
    end
  end

  describe "with invalid value" do
    let(:opts) { {
      presence: ' ',
    } }

    it "raises an error with valid message" do
      expect{ subject }.to raise_error(StandardError)
    end
  end
end
