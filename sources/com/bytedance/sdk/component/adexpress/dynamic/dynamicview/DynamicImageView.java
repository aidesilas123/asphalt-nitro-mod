package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bytedance.sdk.component.adexpress.dynamic.animation.view.AnimationImageView;
import com.bytedance.sdk.component.adexpress.dynamic.b.h;
import com.bytedance.sdk.component.adexpress.widget.TTRoundRectImageView;
import com.bytedance.sdk.component.d.j;
import com.bytedance.sdk.component.d.k;
import com.bytedance.sdk.component.d.o;
import com.bytedance.sdk.component.d.u;
import com.bytedance.sdk.component.utils.s;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class DynamicImageView extends DynamicBaseWidgetImp {
    private String a;

    public DynamicImageView(Context context, DynamicRootView dynamicRootView, h hVar) {
        super(context, dynamicRootView, hVar);
        if (this.l.o() > 0.0f) {
            TTRoundRectImageView tTRoundRectImageView = new TTRoundRectImageView(context);
            this.o = tTRoundRectImageView;
            tTRoundRectImageView.setXRound((int) com.bytedance.sdk.component.adexpress.c.e.a(context, this.l.o()));
            ((TTRoundRectImageView) this.o).setYRound((int) com.bytedance.sdk.component.adexpress.c.e.a(context, this.l.o()));
        } else if (h() || !"arrowButton".equals(hVar.j().b())) {
            this.o = new ImageView(context);
        } else {
            AnimationImageView animationImageView = new AnimationImageView(context);
            animationImageView.setBrickNativeValue(this.l);
            this.o = animationImageView;
        }
        this.a = getImageKey();
        this.o.setTag(Integer.valueOf(getClickArea()));
        if ("arrowButton".equals(hVar.j().b())) {
            if (this.l.b() > 0 || this.l.a() > 0) {
                int iMin = Math.min(this.f753g, this.h);
                this.f753g = iMin;
                this.h = Math.min(iMin, this.h);
                this.i = (int) (this.i + com.bytedance.sdk.component.adexpress.c.e.a(context, this.l.b() + (this.l.a() / 2) + 0.5f));
            } else {
                int iMax = Math.max(this.f753g, this.h);
                this.f753g = iMax;
                this.h = Math.max(iMax, this.h);
            }
            this.l.a(this.f753g / 2);
        }
        addView(this.o, new FrameLayout.LayoutParams(this.f753g, this.h));
    }

    private boolean a() {
        String strL = this.l.l();
        if (this.l.t()) {
            return true;
        }
        if (TextUtils.isEmpty(strL)) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(strL);
            return Math.abs((((float) this.f753g) / (((float) this.h) * 1.0f)) - (((float) jSONObject.optInt("width")) / (((float) jSONObject.optInt("height")) * 1.0f))) > 0.01f;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private String getImageKey() {
        Map<String, String> mapK = this.n.getRenderRequest().k();
        if (mapK == null || mapK.size() <= 0) {
            return null;
        }
        return mapK.get(this.l.k());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.d
    public boolean i() {
        super.i();
        if ("arrowButton".equals(this.m.j().b())) {
            ((ImageView) this.o).setImageResource(s.d(this.k, "tt_white_righterbackicon_titlebar"));
            if (Build.VERSION.SDK_INT >= 19 && ((ImageView) this.o).getDrawable() != null) {
                ((ImageView) this.o).getDrawable().setAutoMirrored(true);
            }
            this.o.setPadding(0, 0, 0, 0);
            ((ImageView) this.o).setScaleType(ImageView.ScaleType.FIT_XY);
            return true;
        }
        this.o.setBackgroundColor(this.l.y());
        String strC = this.m.j().c();
        if ("user".equals(strC)) {
            ((ImageView) this.o).setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            ((ImageView) this.o).setColorFilter(this.l.g());
            ((ImageView) this.o).setImageDrawable(s.c(getContext(), "tt_user"));
            ImageView imageView = (ImageView) this.o;
            int i = this.f753g;
            imageView.setPadding(i / 10, this.h / 5, i / 10, 0);
        } else if (strC != null && strC.startsWith("@")) {
            try {
                ((ImageView) this.o).setImageResource(Integer.parseInt(strC.substring(1)));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        j jVarA = com.bytedance.sdk.component.adexpress.a.a.a.a().e().a(this.l.k()).a(this.a);
        String strN = this.n.getRenderRequest().n();
        if (!TextUtils.isEmpty(strN)) {
            jVarA.b(strN);
        }
        if (!com.bytedance.sdk.component.adexpress.d.b()) {
            jVarA.a((ImageView) this.o);
        }
        if (!a() || Build.VERSION.SDK_INT < 17) {
            if (com.bytedance.sdk.component.adexpress.d.b()) {
                jVarA.a((ImageView) this.o);
            }
            ((ImageView) this.o).setScaleType(ImageView.ScaleType.FIT_XY);
        } else {
            ((ImageView) this.o).setScaleType(ImageView.ScaleType.FIT_CENTER);
            com.bytedance.sdk.component.adexpress.a.a.a.a().e().a(this.l.k()).a(u.BITMAP).a(new com.bytedance.sdk.component.d.h() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicImageView.2
                @Override // com.bytedance.sdk.component.d.h
                public Bitmap a(Bitmap bitmap) {
                    return com.bytedance.sdk.component.adexpress.c.a.a(DynamicImageView.this.k, bitmap, 25);
                }
            }).a(new o<Bitmap>() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicImageView.1
                @Override // com.bytedance.sdk.component.d.o
                public void a(int i2, String str, Throwable th) {
                }

                @Override // com.bytedance.sdk.component.d.o
                public void a(k<Bitmap> kVar) {
                    Bitmap bitmapB = kVar.b();
                    if (bitmapB == null || kVar.c() == null) {
                        return;
                    }
                    DynamicImageView.this.o.setBackground(new BitmapDrawable(DynamicImageView.this.getResources(), bitmapB));
                }
            });
        }
        if ((this.o instanceof ImageView) && "cover".equals(getImageObjectFit())) {
            ((ImageView) this.o).setScaleType(ImageView.ScaleType.CENTER_CROP);
        }
        return true;
    }
}
