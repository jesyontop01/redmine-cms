class ProjectSerializer < ActiveModel::Serializer
  attributes :id, , :name, :description, :homepage, :is_public,:parent_id
			      ,:created_on ,:updated_on ,:identifier ,:status ,:lft
			      ,:rgt ,:inherit_members ,:default_version_id ,:default_assigned_to_id

      has_many :principals
end
