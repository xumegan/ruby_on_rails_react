class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :decription, :score, :airline_id
end
