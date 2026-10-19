package com.facebook.ads.redexgen.X;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.2X, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class C2X extends Drawable {
    public static C2W A0G;
    public static byte[] A0H;
    public static String[] A0I = {"YEFrjfwCEWu", "", "GYovhjhdb5Je", "S1Fz", "LeiEw92n2EsObareFd", "xgqXw3gEiUgyln4SIM", "kGClknFKKNldAaaK4EgXWOsNKvCYjz7L", "I70UDyBH67pytg1dUxrP2KgAWNh3bG3K"};
    public static final double A0J;
    public float A00;
    public float A01;
    public float A02;
    public float A03;
    public ColorStateList A04;
    public Paint A05;
    public Paint A06;
    public Path A08;
    public final RectF A0F;
    public boolean A0A = true;
    public boolean A09 = true;
    public boolean A0B = false;
    public final int A0E = 922746880;
    public final int A0D = 50331648;
    public final int A0C = C2S.A09;
    public Paint A07 = new Paint(5);

    static {
        A05();
        A0J = Math.cos(Math.toRadians(45.0d));
    }

    public C2X(Resources resources, ColorStateList colorStateList, float f2, float f3, float f4) {
        A07(colorStateList);
        Paint paint = new Paint(5);
        this.A05 = paint;
        paint.setStyle(Paint.Style.FILL);
        this.A00 = (int) (0.5f + f2);
        this.A0F = new RectF();
        Paint paint2 = new Paint(this.A05);
        this.A06 = paint2;
        paint2.setAntiAlias(false);
        A06(f3, f4);
    }

    public static float A00(float f2, float f3, boolean z) {
        if (!z) {
            return f2;
        }
        double d2 = f2;
        if (A0I[2].length() == 3) {
            throw new RuntimeException();
        }
        String[] strArr = A0I;
        strArr[5] = "P9aPeBSvznAhF57KLP";
        strArr[4] = "W3RUpaMuYeMV1XeTAU";
        return (float) (d2 + ((1.0d - A0J) * ((double) f3)));
    }

    public static float A01(float f2, float f3, boolean z) {
        return z ? (float) (((double) (1.5f * f2)) + ((1.0d - A0J) * ((double) f3))) : 1.5f * f2;
    }

    private int A02(float f2) {
        int i = (int) (0.5f + f2);
        if (i % 2 != 1) {
            return i;
        }
        int i2 = i - 1;
        String[] strArr = A0I;
        if (strArr[0].length() == strArr[3].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0I;
        strArr2[0] = "0g5GSSLFt9w";
        strArr2[3] = "EJV6";
        return i2;
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0H, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A0I;
            if (strArr[5].length() != strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0I;
            strArr2[5] = "Hial5Dc7DTVcebgm6Z";
            strArr2[4] = "T1onITFvXBLfXkfgru";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 69);
            i4++;
        }
    }

    private void A04() {
        float f2 = this.A00;
        RectF rectF = new RectF(-f2, -f2, f2, f2);
        RectF rectF2 = new RectF(rectF);
        float f3 = this.A03;
        rectF2.inset(-f3, -f3);
        Path path = this.A08;
        if (path == null) {
            this.A08 = new Path();
        } else {
            path.reset();
        }
        this.A08.setFillType(Path.FillType.EVEN_ODD);
        this.A08.moveTo(-this.A00, 0.0f);
        this.A08.rLineTo(-this.A03, 0.0f);
        this.A08.arcTo(rectF2, 180.0f, 90.0f, false);
        this.A08.arcTo(rectF, 270.0f, -90.0f, false);
        this.A08.close();
        float f4 = this.A00;
        float f5 = f4 / (this.A03 + f4);
        Paint paint = this.A05;
        float f6 = this.A03 + this.A00;
        int i = this.A0E;
        paint.setShader(new RadialGradient(0.0f, 0.0f, f6, new int[]{i, i, this.A0D}, new float[]{0.0f, f5, 1.0f}, Shader.TileMode.CLAMP));
        Paint paint2 = this.A06;
        float f7 = this.A00;
        float f8 = this.A03;
        float f9 = (-f7) + f8;
        float f10 = (-f7) - f8;
        int i2 = this.A0E;
        paint2.setShader(new LinearGradient(0.0f, f9, 0.0f, f10, new int[]{i2, i2, this.A0D}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.A06.setAntiAlias(false);
    }

    public static void A05() {
        A0H = new byte[]{114, 124, 17, 41, 47, 40, 124, 62, 57, 124, 98, 97, 124, 108, 115, 84, 76, 91, 86, 83, 94, Ascii.SUB, 87, 91, 66, Ascii.SUB, 73, 82, 91, 94, 85, 77, Ascii.SUB, 73, 83, 64, 95, Ascii.SUB, 8, 47, 55, 32, 45, 40, 37, 97, 51, 32, 37, 40, 52, 50, 97, 1, 38, 62, 41, 36, 33, 44, 104, 59, 32, 41, 44, 39, 63, 104, 59, 33, 50, 45, 104};
    }

    private void A06(float f2, float f3) {
        String strA03 = A03(0, 14, 25);
        if (f2 < 0.0f) {
            throw new IllegalArgumentException(A03(53, 20, 13) + f2 + strA03);
        }
        if (A0I[1].length() == 0) {
            A0I[2] = "3ZLq2wnsXXEHTe1p9";
            if (f3 < 0.0f) {
                throw new IllegalArgumentException(A03(14, 24, 127) + f3 + strA03);
            }
            float fA02 = A02(f2);
            float fA022 = A02(f3);
            if (fA02 > fA022) {
                fA02 = fA022;
                if (!this.A0B) {
                    this.A0B = true;
                }
            }
            if (this.A02 == fA02 && this.A01 == fA022) {
                return;
            }
            this.A02 = fA02;
            this.A01 = fA022;
            float f4 = 1.5f * fA02;
            if (A0I[2].length() != 3) {
                A0I[2] = "TJpNel9JPCCGijw6acwFd0iMJz";
                this.A03 = (int) (f4 + this.A0C + 0.5f);
                this.A0A = true;
                invalidateSelf();
                return;
            }
        }
        throw new RuntimeException();
    }

    private void A07(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.A04 = colorStateList;
        Paint paint = this.A07;
        int[] state = getState();
        int defaultColor = this.A04.getDefaultColor();
        if (A0I[2].length() == 3) {
            throw new RuntimeException();
        }
        String[] strArr = A0I;
        strArr[0] = "VZiE9OVYqDu";
        strArr[3] = "EWr6";
        paint.setColor(colorStateList.getColorForState(state, defaultColor));
    }

    private void A08(Canvas canvas) {
        float f2 = this.A00;
        float f3 = (-f2) - this.A03;
        float f4 = f2 + this.A0C + (this.A02 / 2.0f);
        boolean z = this.A0F.width() - (f4 * 2.0f) > 0.0f;
        boolean z2 = this.A0F.height() - (f4 * 2.0f) > 0.0f;
        int iSave = canvas.save();
        canvas.translate(this.A0F.left + f4, this.A0F.top + f4);
        canvas.drawPath(this.A08, this.A05);
        if (z) {
            canvas.drawRect(0.0f, f3, this.A0F.width() - (f4 * 2.0f), -this.A00, this.A06);
        }
        canvas.restoreToCount(iSave);
        int iSave2 = canvas.save();
        canvas.translate(this.A0F.right - f4, this.A0F.bottom - f4);
        canvas.rotate(180.0f);
        canvas.drawPath(this.A08, this.A05);
        if (z) {
            canvas.drawRect(0.0f, f3, this.A0F.width() - (f4 * 2.0f), (-this.A00) + this.A03, this.A06);
        }
        canvas.restoreToCount(iSave2);
        int iSave3 = canvas.save();
        canvas.translate(this.A0F.left + f4, this.A0F.bottom - f4);
        if (A0I[2].length() != 3) {
            A0I[2] = "QAUm";
            canvas.rotate(270.0f);
            canvas.drawPath(this.A08, this.A05);
            if (z2) {
                canvas.drawRect(0.0f, f3, this.A0F.height() - (f4 * 2.0f), -this.A00, this.A06);
            }
            canvas.restoreToCount(iSave3);
            int iSave4 = canvas.save();
            float f5 = this.A0F.right - f4;
            float f6 = this.A0F.top;
            if (A0I[2].length() != 3) {
                A0I[2] = "4hs9knzgsM3vbS2";
                canvas.translate(f5, f6 + f4);
                canvas.rotate(90.0f);
                canvas.drawPath(this.A08, this.A05);
                if (z2) {
                    canvas.drawRect(0.0f, f3, this.A0F.height() - (2.0f * f4), -this.A00, this.A06);
                }
                canvas.restoreToCount(iSave4);
                return;
            }
        }
        throw new RuntimeException();
    }

    private void A09(Rect rect) {
        float f2 = this.A01 * 1.5f;
        this.A0F.set(rect.left + this.A01, rect.top + f2, rect.right - this.A01, rect.bottom - f2);
        A04();
    }

    public final float A0A() {
        return this.A00;
    }

    public final float A0B() {
        return this.A01;
    }

    public final float A0C() {
        float f2 = this.A01;
        return (((this.A01 * 1.5f) + this.A0C) * 2.0f) + (Math.max(f2, this.A00 + this.A0C + ((f2 * 1.5f) / 2.0f)) * 2.0f);
    }

    public final float A0D() {
        float f2 = this.A01;
        return ((this.A01 + this.A0C) * 2.0f) + (Math.max(f2, this.A00 + this.A0C + (f2 / 2.0f)) * 2.0f);
    }

    public final float A0E() {
        return this.A02;
    }

    public final ColorStateList A0F() {
        return this.A04;
    }

    public final void A0G(float f2) {
        if (f2 < 0.0f) {
            throw new IllegalArgumentException(A03(38, 15, 4) + f2 + A03(0, 14, 25));
        }
        float f3 = (int) (0.5f + f2);
        if (this.A00 == f3) {
            return;
        }
        this.A00 = f3;
        this.A0A = true;
        invalidateSelf();
    }

    public final void A0H(float f2) {
        A06(this.A02, f2);
    }

    public final void A0I(float f2) {
        A06(f2, this.A01);
    }

    public final void A0J(ColorStateList colorStateList) {
        A07(colorStateList);
        invalidateSelf();
    }

    public final void A0K(Rect rect) {
        getPadding(rect);
    }

    public final void A0L(boolean z) {
        this.A09 = z;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.A0A) {
            A09(getBounds());
            this.A0A = false;
        }
        canvas.translate(0.0f, this.A02 / 2.0f);
        A08(canvas);
        canvas.translate(0.0f, (-this.A02) / 2.0f);
        A0G.A59(canvas, this.A0F, this.A00, this.A07);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        int iCeil = (int) Math.ceil(A01(this.A01, this.A00, this.A09));
        int iCeil2 = (int) Math.ceil(A00(this.A01, this.A00, this.A09));
        rect.set(iCeil2, iCeil, iCeil2, iCeil);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList = this.A04;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.A0A = true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.A04;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.A07.getColor() == colorForState) {
            return false;
        }
        this.A07.setColor(colorForState);
        this.A0A = true;
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.A07.setAlpha(i);
        this.A05.setAlpha(i);
        this.A06.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.A07.setColorFilter(colorFilter);
    }
}
