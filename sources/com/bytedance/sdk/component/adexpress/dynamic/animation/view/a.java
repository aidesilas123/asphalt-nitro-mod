package com.bytedance.sdk.component.adexpress.dynamic.animation.view;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.internal.view.SupportMenu;
import com.bytedance.sdk.component.adexpress.c.e;
import com.bytedance.sdk.component.adexpress.dynamic.b.g;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicImageView;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;

/* JADX INFO: compiled from: AnimationWrapper.java */
/* JADX INFO: loaded from: classes.dex */
public class a {
    Paint a;
    Path b = new Path();
    Path c = new Path();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f714d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f715e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f716f;

    public a() {
        Paint paint = new Paint();
        this.a = paint;
        paint.setAntiAlias(true);
    }

    public void a(Canvas canvas, b bVar, View view) {
        int iIntValue;
        int iIntValue2;
        String str;
        if (bVar.getRippleValue() != 0.0f) {
            if (com.bytedance.sdk.component.adexpress.a.a.a.a().c() != null) {
                float[] fArrB = null;
                String str2 = "";
                try {
                    str = (String) view.getTag(com.bytedance.sdk.component.adexpress.dynamic.a.f698e);
                } catch (Exception unused) {
                }
                try {
                    fArrB = g.b(str);
                } catch (Exception unused2) {
                    str2 = str;
                    str = str2;
                }
                if (str.startsWith("#")) {
                    this.a.setColor(Color.parseColor(str));
                    this.a.setAlpha(90);
                } else if (fArrB != null) {
                    this.a.setColor(e.a(fArrB[3] * (1.0f - bVar.getRippleValue()), fArrB[0] / 256.0f, fArrB[1] / 256.0f, fArrB[2] / 256.0f));
                }
            }
            ((ViewGroup) view.getParent()).setClipChildren(true);
            canvas.drawCircle(this.f714d, this.f715e, Math.min(r1, r4) * 2 * bVar.getRippleValue(), this.a);
        }
        if (bVar.getShineValue() != 0.0f) {
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).setClipChildren(true);
            }
            if (view.getParent().getParent() != null) {
                ((ViewGroup) view.getParent().getParent()).setClipChildren(true);
            }
            this.b.reset();
            try {
                iIntValue2 = ((Integer) view.getTag(com.bytedance.sdk.component.adexpress.dynamic.a.b)).intValue();
            } catch (Exception unused3) {
                iIntValue2 = 0;
            }
            if (iIntValue2 >= 0) {
                int shineValue = ((int) ((((this.f714d * 4) + (iIntValue2 * 2)) + (this.f715e * 2)) * bVar.getShineValue())) - ((this.f715e * 2) + iIntValue2);
                float f2 = shineValue;
                int i = this.f715e;
                this.a.setShader(new LinearGradient(f2, 0.0f, ((iIntValue2 + i) / 2) + shineValue, i / 2, new int[]{Color.parseColor("#20ffffff"), Color.parseColor("#60ffffff"), Color.parseColor("#65ffffff")}, (float[]) null, Shader.TileMode.MIRROR));
                this.a.setStrokeWidth(this.f714d * 2);
                Path path = this.c;
                if (path != null) {
                    canvas.clipPath(path, Region.Op.INTERSECT);
                }
                int i2 = shineValue + iIntValue2;
                canvas.drawLine(f2, 0.0f, i2 + r1, this.f715e, this.a);
            }
        }
        if (bVar.getMarqueeValue() != 0.0f) {
            try {
                iIntValue = ((Integer) view.getTag(com.bytedance.sdk.component.adexpress.dynamic.a.c)).intValue();
            } catch (Exception unused4) {
                iIntValue = 0;
            }
            if (iIntValue >= 0) {
                this.b.reset();
                this.b.moveTo(0.0f, 0.0f);
                this.b.lineTo(this.f714d * 2, 0.0f);
                this.b.lineTo(this.f714d * 2, this.f715e * 2);
                this.b.lineTo(0.0f, this.f715e * 2);
                this.b.lineTo(0.0f, 0.0f);
                this.a.setShader(new LinearGradient(0.0f, 0.0f, this.f714d * 2, this.f715e * 2, new int[]{(int) (bVar.getMarqueeValue() * (-65536.0f)), (int) ((1.0f - bVar.getMarqueeValue()) * (-65536.0f))}, (float[]) null, Shader.TileMode.CLAMP));
                this.a.setColor(SupportMenu.CATEGORY_MASK);
                this.a.setStyle(Paint.Style.STROKE);
                this.a.setStrokeWidth(iIntValue);
                canvas.drawPath(this.b, this.a);
            }
        }
    }

    public void a(View view, float f2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = (int) (this.f716f * f2);
        view.setTranslationX((r1 - r6) / 2);
        if (view instanceof DynamicImageView) {
            int i = 0;
            while (true) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (i >= viewGroup.getChildCount()) {
                    break;
                }
                viewGroup.getChildAt(i).setTranslationX((-(this.f716f - layoutParams.width)) / 2);
                i++;
            }
        }
        view.setLayoutParams(layoutParams);
    }

    public void a(View view, int i, int i2) {
        String str;
        this.f714d = i / 2;
        this.f715e = i2 / 2;
        String str2 = "";
        if (this.f716f == 0 && view.getLayoutParams().width > 0) {
            this.f716f = view.getLayoutParams().width;
        }
        try {
            str = (String) view.getTag(com.bytedance.sdk.component.adexpress.dynamic.a.f697d);
        } catch (Exception unused) {
        }
        try {
            this.c.addRoundRect(new RectF(0.0f, 0.0f, i, i2), i2 / 2, i2 / 2, Path.Direction.CW);
        } catch (Exception unused2) {
            str2 = str;
            str = str2;
        }
        if (TtmlNode.RIGHT.equals(str)) {
            view.setPivotX(this.f714d * 2);
            view.setPivotY(this.f715e);
        } else if ("left".equals(str)) {
            view.setPivotX(0.0f);
            view.setPivotY(this.f715e);
        } else {
            view.setPivotX(this.f714d);
            view.setPivotY(this.f715e);
        }
    }
}
