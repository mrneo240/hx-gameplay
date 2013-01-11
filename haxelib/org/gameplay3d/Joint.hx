package org.gameplay3d;

import org.gameplay3d.immutable.IMatrix;
import org.gameplay3d.intern.INativeBinding;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Joint : public Node
class Joint extends Node
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var _inverseBindPose:Matrix;

    override function impersonate<T : INativeBinding>(nativeObject:Dynamic):T
    {
        if (this.nativeObject == null)
        {
            _inverseBindPose = Matrix.make();
        }
        return super.impersonate(nativeObject);
    }

    // DECL: const Matrix& getInverseBindPose() const;
    public function getInverseBindPose():IMatrix
    {
        return _inverseBindPose.impersonate(hx_Joint_getInverseBindPose(nativeObject));
    }

    // DECL: Node::Type getType() const;
    override public function getType():Int
    {
        return hx_Joint_getType(nativeObject);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Joint_getInverseBindPose:Dynamic = cpp.Lib.load("gameplay", "hx_Joint_getInverseBindPose", 1);
    static var hx_Joint_getType:Dynamic = cpp.Lib.load("gameplay", "hx_Joint_getType", 1);
}

// END
