package org.gameplay3d;

import org.gameplay3d.immutable.IBoundingBox;
import org.gameplay3d.immutable.IBoundingSphere;
import org.gameplay3d.immutable.IFrustum;
import org.gameplay3d.immutable.IMatrix;
import org.gameplay3d.immutable.IPlane;
import org.gameplay3d.immutable.IVector3;
import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.intern.Macros;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class BoundingSphere : public GameplayObject
class BoundingSphere extends GameplayObject, implements IBoundingSphere
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var center(default, null):Vector3;
    public var radius(get_radius, set_radius):Float;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    static var _empty:BoundingSphere;

    override function impersonate<T : INativeBinding>(nativeObject:Dynamic):T
    {
        var initialized = this.nativeObject != null;
        super.impersonate(nativeObject);
        Macros.impersonateResult(center, hx_BoundingSphere_property_center_get(nativeObject));
        return cast(this);
    }

    // DECL: BoundingSphere();
    public static function make():BoundingSphere
    {
        return new BoundingSphere(constructNativeObject());
    }

    // DECL: BoundingSphere(const BoundingSphere& copy);
    public static function make_BSphr(copy:IBoundingSphere):BoundingSphere
    {
        return new BoundingSphere(constructNativeObject_BSphr(copy));
    }

    // DECL: BoundingSphere(const Vector3& center, float radius);
    public static function make_V3_Flt(center:IVector3, radius:Float):BoundingSphere
    {
        return new BoundingSphere(constructNativeObject_V3_Flt(center, radius));
    }

    // DECL: static const BoundingSphere& empty();
    public static function empty():IBoundingSphere
    {
        return Macros.impersonateResult(_empty, hx_BoundingSphere_static_empty());
    }

    // DECL: bool intersects(const BoundingBox& box) const;
    public function intersects_BBox(box:IBoundingBox):Bool
    {
        return hx_BoundingSphere_intersects_BBox(nativeObject, box.native());
    }

    // DECL: bool intersects(const BoundingSphere& sphere) const;
    public function intersects_BSphr(sphere:IBoundingSphere):Bool
    {
        return hx_BoundingSphere_intersects_BSphr(nativeObject, sphere.native());
    }

    // DECL: bool intersects(const Frustum& frustum) const;
    public function intersects_Frstm(frustum:IFrustum):Bool
    {
        return hx_BoundingSphere_intersects_Frstm(nativeObject, frustum.native());
    }

    // DECL: float intersects(const Plane& plane) const;
    public function intersects_Plane(plane:IPlane):Float
    {
        return hx_BoundingSphere_intersects_Plane(nativeObject, plane.native());
    }

    // DECL: float intersects(const Ray& ray) const;
    public function intersects_Ray(ray:Ray):Float
    {
        return hx_BoundingSphere_intersects_Ray(nativeObject, ray.native());
    }

    // DECL: bool isEmpty() const;
    public function isEmpty():Bool
    {
        return hx_BoundingSphere_isEmpty(nativeObject);
    }

    // DECL: void merge(const BoundingBox& box);
    public function merge_BBox(box:IBoundingBox):Void
    {
        hx_BoundingSphere_merge_BBox(nativeObject, box.native());
    }

    // DECL: void merge(const BoundingSphere& sphere);
    public function merge_BSphr(sphere:IBoundingSphere):Void
    {
        hx_BoundingSphere_merge_BSphr(nativeObject, sphere.native());
    }

    // DECL: void set(const BoundingBox& box);
    public function set_BBox(box:IBoundingBox):Void
    {
        hx_BoundingSphere_set_BBox(nativeObject, box.native());
    }

    // DECL: void set(const BoundingSphere& sphere);
    public function set_BSphr(sphere:IBoundingSphere):Void
    {
        hx_BoundingSphere_set_BSphr(nativeObject, sphere.native());
    }

    // DECL: void set(const Vector3& center, float radius);
    public function set_V3_Flt(center:IVector3, radius:Float):Void
    {
        hx_BoundingSphere_set_V3_Flt(nativeObject, center.native(), radius);
    }

    // DECL: void transform(const Matrix& matrix);
    public function transform(matrix:IMatrix):Void
    {
        hx_BoundingSphere_transform(nativeObject, matrix.native());
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: BoundingSphere();
    static function constructNativeObject():Dynamic
    {
        return hx_BoundingSphere_Construct();
    }

    // DECL: BoundingSphere(const BoundingSphere& copy);
    static function constructNativeObject_BSphr(copy:IBoundingSphere):Dynamic
    {
        return hx_BoundingSphere_Construct_BSphr(copy.native());
    }

    // DECL: BoundingSphere(const Vector3& center, float radius);
    static function constructNativeObject_V3_Flt(center:IVector3, radius:Float):Dynamic
    {
        return hx_BoundingSphere_Construct_V3_Flt(center.native(), radius);
    }

    /***************************************************************************
     * PROPERTY ACCESSORS                                                      *
     **************************************************************************/

    function get_radius():Float
    {
        return hx_BoundingSphere_property_radius_get(nativeObject);
    }

    function set_radius(value:Float):Float
    {
        return hx_BoundingSphere_property_radius_set(nativeObject, value);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_BoundingSphere_Construct = cpp.Lib.load("gameplay", "hx_BoundingSphere_Construct", 0);
    static var hx_BoundingSphere_Construct_BSphr = cpp.Lib.load("gameplay", "hx_BoundingSphere_Construct_BSphr", 1);
    static var hx_BoundingSphere_Construct_V3_Flt = cpp.Lib.load("gameplay", "hx_BoundingSphere_Construct_V3_Flt", 2);
    static var hx_BoundingSphere_static_empty = cpp.Lib.load("gameplay", "hx_BoundingSphere_static_empty", 0);
    static var hx_BoundingSphere_intersects_BBox = cpp.Lib.load("gameplay", "hx_BoundingSphere_intersects_BBox", 2);
    static var hx_BoundingSphere_intersects_BSphr = cpp.Lib.load("gameplay", "hx_BoundingSphere_intersects_BSphr", 2);
    static var hx_BoundingSphere_intersects_Frstm = cpp.Lib.load("gameplay", "hx_BoundingSphere_intersects_Frstm", 2);
    static var hx_BoundingSphere_intersects_Plane = cpp.Lib.load("gameplay", "hx_BoundingSphere_intersects_Plane", 2);
    static var hx_BoundingSphere_intersects_Ray = cpp.Lib.load("gameplay", "hx_BoundingSphere_intersects_Ray", 2);
    static var hx_BoundingSphere_isEmpty = cpp.Lib.load("gameplay", "hx_BoundingSphere_isEmpty", 1);
    static var hx_BoundingSphere_merge_BBox = cpp.Lib.load("gameplay", "hx_BoundingSphere_merge_BBox", 2);
    static var hx_BoundingSphere_merge_BSphr = cpp.Lib.load("gameplay", "hx_BoundingSphere_merge_BSphr", 2);
    static var hx_BoundingSphere_set_BBox = cpp.Lib.load("gameplay", "hx_BoundingSphere_set_BBox", 2);
    static var hx_BoundingSphere_set_BSphr = cpp.Lib.load("gameplay", "hx_BoundingSphere_set_BSphr", 2);
    static var hx_BoundingSphere_set_V3_Flt = cpp.Lib.load("gameplay", "hx_BoundingSphere_set_V3_Flt", 3);
    static var hx_BoundingSphere_transform = cpp.Lib.load("gameplay", "hx_BoundingSphere_transform", 2);
    static var hx_BoundingSphere_property_center_get = cpp.Lib.load("gameplay", "hx_BoundingSphere_property_center_get", 1);
    static var hx_BoundingSphere_property_radius_get = cpp.Lib.load("gameplay", "hx_BoundingSphere_property_radius_get", 1);
    static var hx_BoundingSphere_property_radius_set = cpp.Lib.load("gameplay", "hx_BoundingSphere_property_radius_set", 2);
}

// END
