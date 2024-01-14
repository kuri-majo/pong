extends Sprite2D

# Assuming the area has a child CollisionShape2D with a RectangleShape resource
var area_size = area.get_node("CollisionShape2D").shape.extents * 2.0

# The size of a sprite is determined from its texture
var texture_size = sprite.texture.get_size()

# Calculate which scale the sprite should have to match the size of the area
var sx = area_size.x / texture_size.x
var sy = area_size.y / texture_size.y

sprite.scale = Vector2(sx, sy)
