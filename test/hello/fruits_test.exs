defmodule Hello.FruitsTest do
  use Hello.DataCase

  alias Hello.Fruits

  describe "fruits" do
    alias Hello.Fruits.Fruit

    import Hello.FruitsFixtures

    @invalid_attrs %{name: nil}

    test "list_fruits/0 returns all fruits" do
      fruit = fruit_fixture()
      assert Fruits.list_fruits() == [fruit]
    end

    test "get_fruit!/1 returns the fruit with given id" do
      fruit = fruit_fixture()
      assert Fruits.get_fruit!(fruit.id) == fruit
    end

    test "create_fruit/1 with valid data creates a fruit" do
      valid_attrs = %{name: "some name"}

      assert {:ok, %Fruit{} = fruit} = Fruits.create_fruit(valid_attrs)
      assert fruit.name == "some name"
    end

    test "create_fruit/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Fruits.create_fruit(@invalid_attrs)
    end

    test "update_fruit/2 with valid data updates the fruit" do
      fruit = fruit_fixture()
      update_attrs = %{name: "some updated name"}

      assert {:ok, %Fruit{} = fruit} = Fruits.update_fruit(fruit, update_attrs)
      assert fruit.name == "some updated name"
    end

    test "update_fruit/2 with invalid data returns error changeset" do
      fruit = fruit_fixture()
      assert {:error, %Ecto.Changeset{}} = Fruits.update_fruit(fruit, @invalid_attrs)
      assert fruit == Fruits.get_fruit!(fruit.id)
    end

    test "delete_fruit/1 deletes the fruit" do
      fruit = fruit_fixture()
      assert {:ok, %Fruit{}} = Fruits.delete_fruit(fruit)
      assert_raise Ecto.NoResultsError, fn -> Fruits.get_fruit!(fruit.id) end
    end

    test "change_fruit/1 returns a fruit changeset" do
      fruit = fruit_fixture()
      assert %Ecto.Changeset{} = Fruits.change_fruit(fruit)
    end
  end
end
