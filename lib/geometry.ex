defmodule Geometry do
  def area_loop do
    receive do
      {:rectangle, w, h} ->
        IO.puts("Площадь = #{w * h}")
        area_loop()

      {:circle, r} ->
        IO.puts("Площадь = #{3.14 * r * r}")
        area_loop()
    end
  end
end
