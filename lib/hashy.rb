class MyHash

  def initialize
    @key = []
    @value = []
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
end
