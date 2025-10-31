# ==========================================================
# Рекомендація 1. Використовуйте зрозумілі імена змінних та методів
# ==========================================================

def bad_sum(a, b)
  a + b
end

def good_sum(price, tax)
  price + tax
end

puts "=== Рекомендація 1 ==="
puts "Поганий приклад: #{bad_sum(2, 3)}"
puts "Гарний приклад: #{good_sum(100, 20)}"


# ==========================================================
# Рекомендація 2. Дотримуйтесь форматування (2 пробіли)
# ==========================================================

def greet
  puts "Hello, world!"
end

puts "\n=== Рекомендація 2 ==="
greet


# ==========================================================
# Рекомендація 3. Використовуйте інтерполяцію рядків
# ==========================================================

name = "Alice"
bad_greeting = "Hello, " + name + "!"
good_greeting = "Hello, #{name}!"

puts "\n=== Рекомендація 3 ==="
puts "Поганий приклад: #{bad_greeting}"
puts "Гарний приклад: #{good_greeting}"


# ==========================================================
# Рекомендація 4. Використовуйте guard-clauses
# ==========================================================

def process_user_bad(user)
  if user
    if user[:active]
      puts "Processing (bad example)..."
    end
  end
end

def process_user_good(user)
  return unless user&.dig(:active)

  puts "Processing (good example)..."
end

puts "\n=== Рекомендація 4 ==="
process_user_bad({ active: true })
process_user_good({ active: true })


# ==========================================================
# Рекомендація 5. Використовуйте символи замість рядків
# ==========================================================

status_string = "active"
status_symbol = :active

puts "\n=== Рекомендація 5 ==="
puts "Поганий приклад: #{status_string.class}"
puts "Гарний приклад: #{status_symbol.class}"


# ==========================================================
# Рекомендація 6. Коментуйте лише складну логіку
# ==========================================================

def simple_greet
  puts "Hello!"
end

# Кешує профіль користувача для пришвидшеного доступу
def cache_user_profile(user)
  @cache ||= {}
  @cache[user[:id]] = user[:profile]
end

puts "\n=== Рекомендація 6 ==="
simple_greet
cache_user_profile({ id: 1, profile: "TestProfile" })


# ==========================================================
# Рекомендація 7. Використовуйте Ruby-конвенції
# ==========================================================

# Поганий приклад (порушення PascalCase, snake_case)
# class userData
# end

class UserData
  def initialize(name)
    @user_name = name
  end

  def show
    puts "User: #{@user_name}"
  end
end

puts "\n=== Рекомендація 7 ==="
user = UserData.new("Bob")
user.show


# ==========================================================
# Рекомендація 8. Уникайте дублювання коду (DRY)
# ==========================================================

def print_user_info_bad(user)
  puts "Welcome, #{user[:name]}!"
  puts "Your role is #{user[:role]}"
end

def display_user_info(user)
  puts "Welcome, #{user[:name]}!"
  puts "Your role is #{user[:role]}"
end

puts "\n=== Рекомендація 8 ==="
display_user_info({ name: "Alice", role: "Admin" })


# ==========================================================
# Рекомендація 9. Використовуйте блоки та ітератори
# ==========================================================

puts "\n=== Рекомендація 9 ==="
[1, 2, 3].each { |i| puts "Число: #{i}" }
