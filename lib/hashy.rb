class MyHash

  def initialize
    @key = []
    @value = []
  end

  def read_key
    @key
  end

  def read_value
    @value
  end

  def myStore(key_to_store, value_to_store)
    if @key.include?(key_to_store)
      temp = @key.index(key_to_store)
      @value[temp] = value_to_store
    else
      @key.push(key_to_store)
      @value.push(value_to_store)
    end
  end

  def myFetch(query)
    if @key.include?(query)
      temp = @key.index(query)
      query_output = @value[temp]
      query_output
    else
      nil
    end
  end

  def myMerge(second_hash)
    second_hash.read_key.each do |key|
      if self.read_key.include?(key)
        temp = @key.index(key)
        @value[temp] = second_hash.read_value[temp]
      else
        @key.push(key)
        temp_i = second_hash.read_key.index(key)
        @value.push(second_hash.read_value[temp_i])
      end
    end
    self
  end
end
