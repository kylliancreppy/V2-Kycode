# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Project.destroy_all

def set_project(name, description)
    project = Project.new(
        name: name,
        description: description,
    )

    project.save!
end 

    projects = [
        {name: "Helpers", description: "Rue des Pyrénées, Paris"},
        {name: "Valorank", description: "Rue des Pyrénées, Paris"}
    ]

    projects.each do |project|
        set_project(project[:name], project [:description])
    end