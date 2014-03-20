cheatsheet do
  title 'Java Lambda Syntax'
  docset_file_name 'Java_Lambda_Syntax'
  keyword 'javal'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Java Lambda Syntax'
    entry do
        name 'As an expression'
        notes <<-'END'
        ```java
        (Person p) -> p.getGender() == Person.Sex.MALE
            && p.getAge() >= 18
            && p.getAge() <= 25
        ```
        END
    end
    entry do
        name 'As a local variable'
        notes <<-'END'
        ```java
        @FunctionalInterface
        public interface SomeFunction {
            public void doWork();
        }

        SomeFunction lambdaName = () -> {...};
        ```
        END
    end
    entry do
        name 'As a method parameter'
        notes <<-'END'
        ```java
        @FunctionalInterface
        public interface SomeFunction {
            public void doWork();
        }

        void someMethodThatTakesALambda(SomeFunction lambdaName) {...}
        ```
        END
    end
    entry do
        name 'As an argument to a method call'
        notes <<-'END'
        ```java
        someObject.someMethodThatTakesALambda ((ParameterClass p) -> {...});
        ```
        END
    end
  end
  notes <<-'END'
    * Based on a [cheat sheet](http://fuckingjavalambdasyntax.com/) by [Alex Florescu](http://florescu.org/)
  END
end
