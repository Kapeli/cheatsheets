cheatsheet do
  title 'Rails Migrations CLI'
  docset_file_name 'Rails_Migrations_CLI'
  keyword 'railscli'
  source_url 'http://cheat.kapeli.com'

  introduction <<-'END'
    Basic migration syntax:

    ```
    rails generate migration AddPartNumberToProducts
    ```

    It will generate a named migration:

    ```ruby
    class AddPartNumberToProducts < ActiveRecord::Migration
      def change
      end
    end
    ```

    Below is the naming convention for generating code for migrations automatically.
  END

  category do
    id 'Creating a Migration'

    entry do
      name 'AddXXXToYYY \<fields\>'
      notes <<-'END'
        ```
        rails generate migration AddPartNumberToProducts part_number:string
        ```

        ```ruby
        class AddPartNumberToProducts < ActiveRecord::Migration
          def change
            add_column :products, :part_number, :string
          end
        end
        ```
      END
    end

    entry do
      name 'RemoveXXXFromYYY \<fields\>'
      notes <<-'END'
        ```
        rails generate migration RemovePartNumberFromProducts part_number:string
        ```

        ```ruby
        class RemovePartNumberFromProducts < ActiveRecord::Migration
          def change
            remove_column :products, :part_number, :string
          end
        end
        ```
      END
    end

    entry do
      name 'CreateXXX \<fields\>'
      notes <<-'END'
        ```
        rails generate migration CreateProducts name:string part_number:string
        ```

        ```ruby
        class CreateProducts < ActiveRecord::Migration
          def change
            create_table :products do |t|
              t.string :name
              t.string :part_number
            end
          end
        end
        ```
      END
    end

    entry do
      name 'AddXXXRefToYYY \<fields\>'
      notes <<-'END'
        ```
        rails generate migration AddUserRefToProducts user:references
        ```

        ```ruby
        class AddUserRefToProducts < ActiveRecord::Migration
          def change
            add_reference :products, :user, index: true
          end
        end
        ```
      END
    end

    entry do
      name 'CreateJoinTableXXXYYY \<xxx\> \<yyy\>'
      notes <<-'END'
        ```
        rails g migration CreateJoinTableCustomerProduct customer product
        ```

        ```ruby
        class CreateJoinTableCustomerProduct < ActiveRecord::Migration
          def change
            create_join_table :customers, :products do |t|
              # t.index [:customer_id, :product_id]
              # t.index [:product_id, :customer_id]
            end
          end
        end
        ```
      END
    end
  end

  notes 'Based on http://guides.rubyonrails.org/migrations.html'
end