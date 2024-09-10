module MoviesHelper
    def toggle_direction(current_direction)
        current_direction == 'asc' ? 'desc' : 'asc'
    end
    
    def sort_indicator(column)
        if params[:sort] == column
          params[:direction] == 'asc' ? '↑' : '↓'
        end
    end
    
    # Checks if the column is currently being sorted
    def sorted_class(column)
        if params[:sort] == column
          params[:direction] == 'asc' ? 'sorted-asc' : 'sorted-desc'
        end
      end
    end

end
