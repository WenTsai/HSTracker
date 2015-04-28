class CardHoverLayout < MK::WindowLayout

  def layout
    frame [[0, 0], [179, 250]]
    identifier 'HSCardPreview'

    # transparent all the things \o|
    opaque false
    has_shadow false
    background_color :black.nscolor(Configuration.window_transparency)

    style_mask NSBorderlessWindowMask

    add NSImageView, :image_view do
      constraints do
        width.equals(:superview)
        height.equals(:superview)
      end
    end
  end
end