package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.widget.ImageView;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class PI extends ImageView {
    public static byte[] A03;
    public static final int A04;
    public final Paint A00;
    public final PG A01;
    public final PH A02;

    static {
        A03();
        A04 = (int) (C1148Ku.A02 * 4.0f);
    }

    public PI(YA ya, PG pg, PH ph) {
        super(ya);
        this.A01 = pg;
        this.A02 = ph;
        Paint paint = new Paint();
        this.A00 = paint;
        paint.setColor(-1728053248);
        setColorFilter(-1);
        int i = A04;
        setPadding(i, i, i, i);
        boolean z = pg == PG.A03;
        setContentDescription(z ? A02(0, 10, 106) : A02(10, 11, 109));
        Bitmap bitmapA01 = C1158Le.A01(EnumC1157Ld.TO_RIGHT_ARROW);
        if (z) {
            Matrix matrix = new Matrix();
            matrix.postRotate(180.0f);
            bitmapA01 = Bitmap.createBitmap(bitmapA01, 0, 0, bitmapA01.getWidth(), bitmapA01.getHeight(), matrix, true);
        }
        setImageBitmap(bitmapA01);
        setOnClickListener(new PF(this));
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 78);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A03 = new byte[]{Ascii.VT, 47, 33, 40, Ascii.GS, -40, 36, Ascii.GS, Ascii.RS, 44, Ascii.SO, 50, 36, 43, 32, -37, 45, 36, 34, 35, 47};
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        canvas.drawCircle(getWidth() / 2, getHeight() / 2, Math.min(r1, r0), this.A00);
        super.onDraw(canvas);
    }
}
