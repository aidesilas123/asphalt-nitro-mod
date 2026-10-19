package com.google.android.material.textfield;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;

/* JADX INFO: compiled from: CutoutDrawable.java */
/* JADX INFO: loaded from: classes3.dex */
class c extends MaterialShapeDrawable {

    @NonNull
    private final RectF A;

    @NonNull
    private final Paint z;

    c() {
        this(null);
    }

    c(@Nullable ShapeAppearanceModel shapeAppearanceModel) {
        super(shapeAppearanceModel == null ? new ShapeAppearanceModel() : shapeAppearanceModel);
        this.z = new Paint(1);
        n0();
        this.A = new RectF();
    }

    private void n0() {
        this.z.setStyle(Paint.Style.FILL_AND_STROKE);
        this.z.setColor(-1);
        this.z.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    boolean j0() {
        return !this.A.isEmpty();
    }

    void k0() {
        l0(0.0f, 0.0f, 0.0f, 0.0f);
    }

    void l0(float f2, float f3, float f4, float f5) {
        RectF rectF = this.A;
        if (f2 == rectF.left && f3 == rectF.top && f4 == rectF.right && f5 == rectF.bottom) {
            return;
        }
        rectF.set(f2, f3, f4, f5);
        invalidateSelf();
    }

    void m0(@NonNull RectF rectF) {
        l0(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable
    protected void q(@NonNull Canvas canvas) {
        if (this.A.isEmpty()) {
            super.q(canvas);
            return;
        }
        canvas.save();
        if (Build.VERSION.SDK_INT >= 26) {
            canvas.clipOutRect(this.A);
        } else {
            canvas.clipRect(this.A, Region.Op.DIFFERENCE);
        }
        super.q(canvas);
        canvas.restore();
    }
}
