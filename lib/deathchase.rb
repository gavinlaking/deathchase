require 'gosu'

module Deathchase

  class GameWindow < Gosu::Window
    def initialize
      super(800, 600, false)
      self.caption = "Deathchase"

      @img_blacktree = Gosu::Image.new(self, media_path('blacktree.png'), false)
      @img_whitetree = Gosu::Image.new(self, media_path('whitetree.png'), false)
    end

    def update
    end

    def draw
      night_sky
      grass
      @img_blacktree.draw(320, -170, 0)
      @img_blacktree.draw(-320, -80, 0)
    end

    private

    def grass
      x1 = 1
      y1 = 300
      x2 = 800
      y2 = 300
      x3 = 1
      y3 = 600
      x4 = 800
      y4 = 600
      c1 = Gosu::Color.new(60, 100, 120, 100)
      c2 = Gosu::Color.new(60, 100, 120, 100)
      c3 = Gosu::Color.new(100, 0, 255, 0)
      c4 = Gosu::Color.new(100, 0, 255, 0)
      z  = 0

      draw_quad(x1, y1, c1, x2, y2, c2, x3, y3, c3, x4, y4, c4, z, :default)
      draw_line(1, 300, Gosu::Color.new(25, 54, 64, 54), 800, 300, Gosu::Color.new(25, 54, 64, 54))
      draw_line(1, 314, Gosu::Color.new(25, 56, 64, 56), 800, 314, Gosu::Color.new(25, 56, 64, 56))
    end

    def night_sky
      x1 = 1
      y1 = 1
      x2 = 800
      y2 = 1
      x3 = 1
      y3 = 300
      x4 = 800
      y4 = 300
      c1 = Gosu::Color.new(100, 0, 30, 200)
      c2 = Gosu::Color.new(100, 0, 30, 200)
      c3 = Gosu::Color.new(60, 100, 120, 100)
      c4 = Gosu::Color.new(60, 100, 120, 100)
      z  = 0

      draw_quad(x1, y1, c1, x2, y2, c2, x3, y3, c3, x4, y4, c4, z, :default)
    end

    def media_path(file_name = '')
      File.dirname(__FILE__) + '/../lib/deathchase/media/' + file_name
    end
  end

end

window = Deathchase::GameWindow.new
window.show
