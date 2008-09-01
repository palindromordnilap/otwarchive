module SeriesHelper 
  
  def show_series_data(work)
     work.serial_works.map do |sw|
       previous_link = !(@series_previous.blank? || @series_previous[sw.series.id].blank?) ? link_to("<< ", @series_previous[sw.series.id]) : ""
       main_link = "Part ".t + sw.position.to_s + " of the ".t + link_to(sw.series.title, sw.series) + " series".t
       next_link = !(@series_next.blank? || @series_next[sw.series.id].blank?) ? link_to(" >>", @series_next[sw.series.id]) : ""
       previous_link + main_link + next_link
     end
  end
  
end
