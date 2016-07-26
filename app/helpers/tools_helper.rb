require 'music'

module ToolsHelper
  def self.primary_major_scales
    @scales = []
    notes = Music::Note.new("C5").major_scale

    notes.each do |note|
      @scales << note.major_scale
    end
    @scales
  end

  def self.primary_minor_scales
    @scales = []
    notes = Music::Note.new("C5").minor_scale

    notes.each do |note|
      @scales << note.minor_scale
    end
    @scales
  end
end
