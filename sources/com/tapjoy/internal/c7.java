package com.tapjoy.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class c7 extends RelativeLayout implements View.OnClickListener {
    public boolean a;
    public float b;
    public View c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public View f7876d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public FrameLayout f7877e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ImageView f7878f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public j3 f7879g;
    public final t3 h;
    public final y5 i;

    public c7(Context context, t3 t3Var, y5 y5Var) {
        g8 g8Var;
        n3 n3Var;
        super(context);
        this.b = 1.0f;
        this.h = t3Var;
        this.i = y5Var;
        b();
        this.f7878f.setImageBitmap(t3Var.c.a());
        j3 j3Var = this.f7879g;
        if (j3Var == null || (g8Var = t3Var.l) == null || (n3Var = g8Var.b) == null) {
            return;
        }
        j3Var.setImageBitmap(n3Var.a());
    }

    public final int a(int i) {
        return (int) (i * this.b);
    }

    public final void b() {
        Context context = getContext();
        View view = new View(context);
        this.c = view;
        boolean z = true;
        view.setId(1);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(0, 0);
        layoutParams.addRule(13);
        addView(this.c, layoutParams);
        this.f7876d = new View(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(0, 0);
        layoutParams2.addRule(13);
        addView(this.f7876d, layoutParams2);
        this.f7877e = new FrameLayout(context);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(0, 0);
        layoutParams3.addRule(13);
        addView(this.f7877e, layoutParams3);
        ImageView imageView = new ImageView(context);
        this.f7878f = imageView;
        imageView.setOnClickListener(this);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(0, 0);
        layoutParams4.addRule(7, this.c.getId());
        layoutParams4.addRule(6, this.c.getId());
        addView(this.f7878f, layoutParams4);
        g8 g8Var = this.h.l;
        if (g8Var != null) {
            if (g8Var.b == null || (g8Var.c == null && g8Var.f7905d == null)) {
                z = false;
            }
            if (z) {
                j3 j3Var = new j3(context);
                this.f7879g = j3Var;
                j3Var.setOnClickListener(this);
                RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(0, 0);
                layoutParams5.addRule(5, this.f7876d.getId());
                layoutParams5.addRule(8, this.f7876d.getId());
                addView(this.f7879g, layoutParams5);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        j3 j3Var;
        if (view == this.f7878f) {
            this.i.c.h.cancel();
            return;
        }
        if (view != null && view == (j3Var = this.f7879g)) {
            boolean z = !j3Var.a;
            j3Var.a = z;
            if (z) {
                j3Var.f7921e = j3Var.c;
            } else {
                j3Var.f7921e = j3Var.f7920d;
            }
            j3Var.invalidate();
            i6 i6Var = this.i.c;
            i6Var.l = true ^ i6Var.l;
            return;
        }
        if (view.getTag() instanceof j9) {
            y5 y5Var = this.i;
            j9 j9Var = (j9) view.getTag();
            i6 i6Var2 = y5Var.c;
            v1 v1Var = i6Var2.f7914e;
            LinkedHashMap linkedHashMap = i6Var2.f7916g.k;
            String str = j9Var.c;
            i5 i5Var = v1Var.i;
            i5Var.getClass();
            d4 d4VarA = i5Var.a(r1.CAMPAIGN, CampaignEx.JSON_NATIVE_VIDEO_CLICK);
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(linkedHashMap);
            linkedHashMap2.put(TtmlNode.TAG_REGION, str);
            StringWriter stringWriter = new StringWriter();
            h1 h1Var = new h1(stringWriter);
            try {
                h1Var.a(linkedHashMap2);
                try {
                    h1Var.a.flush();
                    stringWriter.toString();
                    i5Var.b(d4VarA);
                    Activity activity = y5Var.a;
                    String str2 = j9Var.f7925e;
                    if (!TextUtils.isEmpty(str2)) {
                        try {
                            activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str2)));
                        } catch (Exception unused) {
                        }
                    }
                    if (!TextUtils.isEmpty(j9Var.f7926f)) {
                        y5Var.c.b.a(y5Var.a, j9Var.f7926f, r9.a(j9Var.f7927g));
                        y5Var.c.a = true;
                    }
                    y5Var.b.a(y5Var.c.f7915f, j9Var.h);
                    if (j9Var.f7924d) {
                        y5Var.c.h.dismiss();
                    }
                } catch (IOException e2) {
                    s9.a(e2);
                    throw null;
                }
            } catch (IOException e3) {
                s9.a(e3);
                throw null;
            }
        }
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0156  */
    @Override // android.widget.RelativeLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onMeasure(int r8, int r9) {
        /*
            Method dump skipped, instruction units count: 361
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tapjoy.internal.c7.onMeasure(int, int):void");
    }

    public void setLandscape(boolean z) {
        Bitmap bitmap;
        Bitmap bitmap2;
        ArrayList<j9> arrayList;
        this.a = z;
        if (z) {
            t3 t3Var = this.h;
            bitmap = t3Var.b.f7944d;
            bitmap2 = t3Var.f8005f.f7944d;
            arrayList = t3Var.j;
        } else {
            t3 t3Var2 = this.h;
            bitmap = t3Var2.a.f7944d;
            bitmap2 = t3Var2.f8004e.f7944d;
            arrayList = t3Var2.i;
        }
        ta.a(this.c, new BitmapDrawable((Resources) null, bitmap));
        ta.a(this.f7876d, new BitmapDrawable((Resources) null, bitmap2));
        if (this.f7877e.getChildCount() > 0) {
            this.f7877e.removeAllViews();
        }
        Context context = getContext();
        for (j9 j9Var : arrayList) {
            View view = new View(context);
            view.setTag(j9Var);
            view.setOnClickListener(this);
            this.f7877e.addView(view, new FrameLayout.LayoutParams(0, 0, 51));
        }
    }
}
