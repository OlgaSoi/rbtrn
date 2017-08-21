class CourseResultsController < ApplicationController
  def courses
    now_t = DateTime.now
#    @cr = CourseResult.where('( extract(year from created_at) = #{now_t.year} ) AND
#              ( extract(month from created_at) = #{now_t.month} ) AND
#              ( extract(day  from created_at) = #{now_t.day} )')
    @cr = CourseResult.where('( extract(year from created_at) = ? ) AND
              ( extract(month from created_at) = ? ) AND
              ( extract(day  from created_at) = ? )', now_t.year, now_t.month, now_t.day)
    render json: @cr
  end

  def courses_history
    @cr = CourseResult.order("created_at desc").limit(10)
    render json: @cr
  end
end
