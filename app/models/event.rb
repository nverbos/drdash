class Event < ApplicationRecord
  def as_json(options={})
    {
        :id => self.id,
        :start => self.start.to_time.to_i,
        :end => self.end.to_time.to_i,
        :program_id => self.program_id,
        :created_at => self.created_at.to_time.to_i,
        :updated_at => self.updated_at.to_time.to_i
    }
  end
end
