package com.kidoz.sdk.api.general.animations;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;

/* JADX INFO: loaded from: classes4.dex */
public class FlipAnimation extends Animation {
    public static final int ROTATION_X = 0;
    public static final int ROTATION_Y = 1;
    public static final float SCALE_DEFAULT = 0.75f;
    private Camera mCamera;
    private final float mCenterX;
    private final float mCenterY;
    private int mDirection;
    private final float mFromDegrees;
    private final float mToDegrees;
    private float scale;
    private final ScaleUpDownEnum scaleType;

    /* JADX INFO: renamed from: com.kidoz.sdk.api.general.animations.FlipAnimation$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$kidoz$sdk$api$general$animations$FlipAnimation$ScaleUpDownEnum;

        static {
            int[] iArr = new int[ScaleUpDownEnum.values().length];
            $SwitchMap$com$kidoz$sdk$api$general$animations$FlipAnimation$ScaleUpDownEnum = iArr;
            try {
                iArr[ScaleUpDownEnum.SCALE_UP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$animations$FlipAnimation$ScaleUpDownEnum[ScaleUpDownEnum.SCALE_DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$animations$FlipAnimation$ScaleUpDownEnum[ScaleUpDownEnum.SCALE_CYCLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum ScaleUpDownEnum {
        SCALE_UP,
        SCALE_DOWN,
        SCALE_CYCLE,
        SCALE_NONE;

        public float getScale(float f2, float f3) {
            float f4;
            float f5;
            int i = AnonymousClass1.$SwitchMap$com$kidoz$sdk$api$general$animations$FlipAnimation$ScaleUpDownEnum[ordinal()];
            if (i != 1) {
                if (i == 2) {
                    f5 = 1.0f - f2;
                } else {
                    if (i != 3) {
                        return 1.0f;
                    }
                    if (((double) f3) > 0.5d) {
                        f4 = (1.0f - f2) * (f3 - 0.5f) * 2.0f;
                    } else {
                        f5 = 1.0f - f2;
                        f3 *= 2.0f;
                    }
                }
                return 1.0f - (f5 * f3);
            }
            f4 = (1.0f - f2) * f3;
            return f2 + f4;
        }
    }

    public FlipAnimation(float f2, float f3, float f4, float f5, float f6, ScaleUpDownEnum scaleUpDownEnum) {
        this.mFromDegrees = f2;
        this.mToDegrees = f3;
        this.mCenterX = f4;
        this.mCenterY = f5;
        this.scale = (f6 <= 0.0f || f6 >= 1.0f) ? 0.75f : f6;
        this.scaleType = scaleUpDownEnum == null ? ScaleUpDownEnum.SCALE_CYCLE : scaleUpDownEnum;
        this.mDirection = 1;
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float f2, Transformation transformation) {
        float f3 = this.mFromDegrees;
        float f4 = f3 + ((this.mToDegrees - f3) * f2);
        float f5 = this.mCenterX;
        float f6 = this.mCenterY;
        Camera camera = this.mCamera;
        Matrix matrix = transformation.getMatrix();
        camera.save();
        if (this.mDirection == 0) {
            camera.rotateX(f4);
        } else {
            camera.rotateY(f4);
        }
        camera.getMatrix(matrix);
        camera.restore();
        matrix.preTranslate(-f5, -f6);
        matrix.postTranslate(f5, f6);
        matrix.preScale(this.scaleType.getScale(this.scale, f2), this.scaleType.getScale(this.scale, f2), f5, f6);
    }

    @Override // android.view.animation.Animation
    public void initialize(int i, int i2, int i3, int i4) {
        super.initialize(i, i2, i3, i4);
        this.mCamera = new Camera();
    }

    public void setDirection(int i) {
        this.mDirection = i;
    }
}
