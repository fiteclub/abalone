class TaggedAnimalAssessment < ApplicationRecord
  HEADERS = {
      MEASUREMENT_DATE: "Measurement_date",
      COHORT: "Cohort",
      SPAWNING_DATE: "Spawning_date",
      TAG: "Tag",
      FROM_GROWOUT_RACK: "From_Growout_Rack",
      FROM_GROWOUT_COLUMN: "From_Growout_Column",
      FROM_GROWOUT_TROUGH: "From_Growout_Trough",
      TO_GROWOUT_RACK: "To_Growout_Rack",
      TO_GROWOUT_COLUMN: "To_Growout_Column",
      TO_GROWOUT_TROUGH: "To_Growout_Trough",
      LENGTH: "Length",
      GONAD_SCORE: "Gonad_Score",
      PREDICTED_SEX: "Predicted_Sex",
      NOTES: "Notes",
  }

  def measurement_date=(measurement_date_str)
    write_attribute(:measurement_date, DateTime.strptime(measurement_date_str, '%m/%d/%y'))
  end

  def spawning_date=(spawning_date_str)
    write_attribute(:spawning_date, DateTime.strptime(spawning_date_str, '%m/%d/%y'))
  end
end