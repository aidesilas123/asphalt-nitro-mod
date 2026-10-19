package com.facebook.ads.redexgen.X;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import com.applovin.exoplayer2.common.base.Ascii;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class NJ extends Drawable {
    public static byte[] A0G;
    public static String[] A0H = {"Mp", "s1okci9AACeOEsTaqEhejkWwVhqIiyNU", "empHZDdin7c86b5ED3ajK85vhcLRVQYd", "QRrQz6m9v7aBhecCWxUXgpf0lUmjJya0", "Hctlswo9ad12sYru2lKVThOw6NzJy2jW", "0MQcFv6TsH62DS4QTRzsSvzajYizZeJ9", "0Y", "3fR7fZsYHtoPr7aoRN1kO3di1PlcoJD4"};
    public int A00;
    public int A01;
    public int A02;
    public long A03;
    public String A04;
    public String A05;
    public String A06;
    public WeakReference<C1285Qb> A07;
    public boolean A08;
    public final Paint A09;
    public final Paint A0A;
    public final Paint A0B;
    public final Path A0C;
    public final Handler A0D;
    public final TextPaint A0E;
    public final Runnable A0F;

    static {
        A04();
    }

    public NJ() {
        Paint paint = new Paint();
        this.A09 = paint;
        Paint paint2 = new Paint();
        this.A0A = paint2;
        this.A0C = new Path();
        TextPaint textPaint = new TextPaint();
        this.A0E = textPaint;
        Paint paint3 = new Paint();
        this.A0B = paint3;
        this.A0D = new Handler();
        this.A0F = new T9(this);
        paint.setColor(Color.argb(127, 36, 36, 36));
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint2.setAntiAlias(true);
        paint2.setColor(Color.argb(191, 0, 255, 0));
        paint2.setStrokeWidth(20.0f);
        paint2.setStyle(Paint.Style.STROKE);
        textPaint.setAntiAlias(true);
        textPaint.setColor(-1);
        textPaint.setStyle(Paint.Style.FILL_AND_STROKE);
        textPaint.setTextSize(30.0f);
        paint3.setColor(Color.argb(212, 0, 0, 0));
        paint3.setStyle(Paint.Style.FILL_AND_STROKE);
        A07();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0G, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 62);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A03() {
        StringBuilder sb = new StringBuilder();
        int i = this.A00;
        String strA02 = A02(0, 1, 117);
        if (i <= 0) {
            if (!TextUtils.isEmpty(this.A06)) {
                sb.append(this.A06);
                sb.append(strA02);
            }
            if (!TextUtils.isEmpty(this.A04)) {
                sb.append(this.A04);
                sb.append(strA02);
            }
            sb.append(A02(47, 4, 81));
            sb.append(A02(21, 6, 125));
            sb.append(A02(12, 9, 67));
            if (this.A03 > 0) {
                long jMax = Math.max(0L, System.currentTimeMillis() - this.A03);
                int i2 = (int) (jMax / 3600000);
                long j = jMax % 3600000;
                int i3 = (int) (j / ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
                int i4 = (int) ((j % ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS) / 1000);
                if (i2 > 0) {
                    sb.append(i2);
                    sb.append(A02(85, 2, 118));
                }
                if (i2 > 0 || i3 > 0) {
                    sb.append(i3);
                    sb.append(A02(87, 2, 99));
                }
                sb.append(i4);
                sb.append(A02(89, 5, 126));
            } else {
                String[] strArr = A0H;
                if (strArr[3].charAt(18) == strArr[1].charAt(18)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0H;
                strArr2[4] = "KaVl90AUCQiyYrscuVoIg37eW2R2JvQo";
                strArr2[2] = "0pxfQADbA4sIF5gDourAGVlubWCldmoZ";
                sb.append(A02(51, 7, 47));
            }
        } else {
            sb.append(A02(27, 5, 74));
            sb.append(this.A01 + 1);
            sb.append(A02(8, 4, 6));
            sb.append(this.A00);
        }
        sb.append(A02(1, 7, 125));
        WeakReference<C1285Qb> weakReference = this.A07;
        if (weakReference == null || weakReference.get() == null) {
            sb.append(A02(58, 27, 4));
        } else {
            sb.append(this.A07.get().A0R());
        }
        String string = sb.toString();
        this.A05 = string;
        float fMax = -2.1474836E9f;
        String[] strArrSplit = string.split(strA02);
        for (String str : strArrSplit) {
            fMax = Math.max(fMax, this.A0E.measureText(str, 0, str.length()));
        }
        this.A02 = (int) (0.5f + fMax);
        invalidateSelf();
    }

    public static void A04() {
        A0G = new byte[]{65, 73, Ascii.NAK, 42, 38, 52, 121, 99, Ascii.CAN, 87, 94, Ascii.CAN, 81, 93, 49, Ascii.DC2, Ascii.FS, Ascii.EM, Ascii.CAN, Ascii.EM, 93, 117, 109, 114, 117, 109, 115, 55, Ascii.NAK, 6, Ascii.DLE, 84, 86, 113, 118, 107, 118, 126, 115, 118, 101, 118, 113, 120, 49, 49, 49, 60, Ascii.VT, 4, 79, 68, Ascii.DEL, 122, Ascii.DEL, 126, 102, Ascii.DEL, 108, 83, 95, 77, 91, 88, 83, 86, 83, 78, 67, Ascii.SUB, 121, 82, 95, 89, 81, 95, 72, Ascii.SUB, 84, 85, 78, Ascii.SUB, 73, 95, 78, 32, 104, 48, 125, 51, 96, 33, 39, 47};
    }

    public final void A07() {
        this.A00 = 0;
        this.A01 = -1;
        this.A05 = A02(32, 15, 33);
        this.A02 = 100;
        this.A06 = null;
        this.A03 = -1L;
        this.A07 = null;
        A0D(false);
    }

    public final void A08(int i, int i2) {
        this.A00 = i;
        this.A01 = i2;
        A03();
    }

    public final void A09(long j) {
        this.A03 = j;
        A03();
    }

    public final void A0A(C1285Qb c1285Qb) {
        this.A07 = new WeakReference<>(c1285Qb);
        A03();
    }

    public final void A0B(String str) {
        this.A04 = str;
        A03();
    }

    public final void A0C(String str) {
        this.A06 = str;
        A03();
    }

    public final void A0D(boolean z) {
        this.A08 = z;
        if (z) {
            this.A0D.post(this.A0F);
        } else {
            this.A0D.removeCallbacks(this.A0F);
        }
        invalidateSelf();
    }

    public final boolean A0E() {
        return this.A08;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.A08) {
            int width = canvas.getWidth();
            int height = canvas.getHeight();
            canvas.drawRect(0.0f, 0.0f, width, height, this.A09);
            StaticLayout staticLayout = new StaticLayout(this.A05, this.A0E, this.A02, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
            float f2 = width / 2.0f;
            float f3 = height / 2.0f;
            float width2 = staticLayout.getWidth() / 2.0f;
            float height2 = staticLayout.getHeight() / 2.0f;
            canvas.drawRect((f2 - width2) - 40.0f, (f3 - height2) - 40.0f, f2 + width2 + 40.0f, f3 + height2 + 40.0f, this.A0B);
            canvas.save();
            canvas.translate(f2 - width2, f3 - height2);
            staticLayout.draw(canvas);
            canvas.restore();
            this.A0C.reset();
            this.A0C.moveTo(0.0f, 0.0f);
            this.A0C.lineTo(width, 0.0f);
            this.A0C.lineTo(width, height);
            this.A0C.lineTo(0.0f, height);
            this.A0C.lineTo(0.0f, 0.0f);
            canvas.drawPath(this.A0C, this.A0A);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}
