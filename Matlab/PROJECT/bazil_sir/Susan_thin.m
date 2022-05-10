classdef Susan_thin < handle
    % Global row and column values
    properties
        row = 1;
        col = 1;
    end
    methods(Static)
        
        % Increment row and column
        function incrementer(obj)
            if (obj.col == 300)
                obj.col = 1;
                obj.row = obj.row+1;
            else
                obj.col = obj.col+1;
                obj.row = obj.row;
            end
        end
        
        % up_neighbour
        function up = up_n(obj,gray)
            if (obj.row-1 < 1)
                up = 0;
            else
                up = gray(obj.row-1,obj.col);
            end
        end
        
        %down_neighbour
        function down = down_n(obj,gray)
            if (obj.row+1 > 300)
                down = 0;
            else
                down = gray(obj.row+1,obj.col);
            end
        end
        
        %left_neighbour
        function left = left_n(obj,gray)
            if (obj.col-1 < 1)
                left = 0;
            else
                left = gray(obj.row,obj.col-1);
            end
        end
        
        %right_neighbour
        function right = right_n(obj,gray)
            if (obj.col+1 > 300)
                right = 0;
            else
                right = gray(obj.row,obj.col+1);
            end
        end
        
        function [gray] = thin_main(obj,gray)
            while true
                if (gray(obj.row,obj.col) == 0)
                    if (obj.row >= 300 && obj.col >= 300)
                        break
                    end
                    obj.incrementer(obj);
                else
                    n = obj.up_n(obj,gray)+obj.down_n(obj,gray)+obj.left_n(obj,gray)+obj.right_n(obj,gray);
                    if (n == 0)
                        gray(obj.row,obj.col) = 0;
                    end
                    if (obj.row >= 300 && obj.col >= 300)
                        break
                    end
                    obj.incrementer(obj);
                end
            end
        end
    end
end