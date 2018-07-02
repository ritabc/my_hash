require('rspec')
require('hashy')
describe(MyHash) do
  describe("#myNew") do
    it("creates a new instance of MyHash") do
      new_hash = MyHash.new()
      expect(new_hash.class).to(eq(MyHash))
    end
  end
  describe("#myStore#myFetch") do
    it("takes a key-value pair and stores them as a property and value") do
      new_hash = MyHash.new()
      new_hash.myStore("kitten", "cute")
      new_hash.myStore("dog", "furry")
      new_hash.myStore("moose", "smelly")
      expect(new_hash.myFetch("moose")).to(eq("smelly"))
    end
    it("takes a key-value pair and stores them as a property and value") do
      new_hash = MyHash.new()
      new_hash.myStore("moose", "brown")
      new_hash.myStore("dog", "furry")
      new_hash.myStore("moose", "smelly")
      expect(new_hash.myFetch("moose")).to(eq("smelly"))
    end
    it("takes a key-value pair and stores them as a property and value") do
      new_hash = MyHash.new()
      new_hash.myStore("moose", "brown")
      new_hash.myStore("dog", "furry")
      new_hash.myStore("moose", "smelly")
      expect(new_hash.myFetch("dog")).to(eq("furry"))
    end
    it("takes a non-existant key and returns nil") do
      new_hash = MyHash.new()
      new_hash.myStore("moose", "brown")
      new_hash.myStore("dog", "furry")
      new_hash.myStore("moose", "smelly")
      expect(new_hash.myFetch("cat")).to(eq(nil))
    end
    it("takes two hashes and merges them together") do
      animal_hash = MyHash.new()
      plant_hash = MyHash.new()
      animal_hash.myStore("bat", "brown")
      animal_hash.myStore("dog", "furry")
      animal_hash.myStore("moose", "smelly")
      plant_hash.myStore("fern", "fiddlehead")
      plant_hash.myStore("tree", "tall")
      animal_hash.myMerge(plant_hash)
      expect(animal_hash.myFetch("tree")).to(eq("tall"))
    end
  end
end
