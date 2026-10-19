package com.applovin.impl.adview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.core.view.ViewCompat;
import com.applovin.impl.adview.j;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"ViewConstructor"})
public final class z extends j {
    private static final Paint ahY = new Paint(1);
    private static final Paint ahc = new Paint(1);
    private static final Paint ahZ = new Paint(1);

    public z(Context context) {
        super(context);
        ahY.setColor(-1);
        ahc.setColor(ViewCompat.MEASURED_STATE_MASK);
        Paint paint = ahZ;
        paint.setColor(-1);
        paint.setStyle(Paint.Style.STROKE);
    }

    protected float getCenter() {
        return getSize() / 2.0f;
    }

    protected float getCrossOffset() {
        return this.ahA * 10.0f;
    }

    protected float getInnerCircleOffset() {
        return this.ahA * 2.0f;
    }

    protected float getInnerCircleRadius() {
        return getCenter() - getInnerCircleOffset();
    }

    protected float getStrokeWidth() {
        return this.ahA * 3.0f;
    }

    @Override // com.applovin.impl.adview.j
    public j.a getStyle() {
        return j.a.WHITE_ON_BLACK;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float center = getCenter();
        canvas.drawCircle(center, center, center, ahY);
        canvas.drawCircle(center, center, getInnerCircleRadius(), ahc);
        float crossOffset = getCrossOffset();
        float size = getSize() - crossOffset;
        Paint paint = ahZ;
        paint.setStrokeWidth(getStrokeWidth());
        canvas.drawLine(crossOffset, crossOffset, size, size, paint);
        canvas.drawLine(crossOffset, size, size, crossOffset, paint);
    }
}
