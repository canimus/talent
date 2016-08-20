class AddResumeToCurriculum < ActiveRecord::Migration
  def change
    add_column :curriculums, :resume, :string
  end
end
