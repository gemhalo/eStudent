class String
  def numerify
    gsub(/#/) { rand(10).to_s }
  end
end
