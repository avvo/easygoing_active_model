require 'test_helper'

module EasyGoingActiveModel
  class ModelTest < MiniTest::Test
    class MyTestModel
      attr_accessor :id
      include EasygoingActiveModel::Model
    end

    def test_known_attributes
      m = MyTestModel.new(id: 1)
      assert_equal(1, m.id)
    end

    def test_unknown_attributes
      m = MyTestModel.new(totally_fake_thing: 'abc', id: 1)
      assert_equal(1, m.id)
    end

  end
end
