require 'pry'

def is_isomorphic(s, t)
  is_isomorphic = true
  arr_size = s.size
  return is_isomorphic if arr_size == 0

  check_hash = {}
  i = 0

  while i < arr_size

    if check_hash.has_key?(s[i]) && (check_hash[s[i]] != t[i])
      is_isomorphic = false
      return is_isomorphic
    end

    check_hash[s[i]] = t[i]
    i += 1
  end

  is_isomorphic = (check_hash.keys.uniq.size == check_hash.values.uniq.size)
end

puts is_isomorphic('ab', 'aa')
# puts is_isomorphic('egg', 'add')
# puts is_isomorphic('foo', 'bar')
# puts is_isomorphic('paper', 'title')
