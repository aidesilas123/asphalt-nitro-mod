package com.tapjoy;

import android.R;
import android.app.AlertDialog;
import android.content.Context;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.net.Uri;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.json.o2;
import com.tapjoy.internal.c5;
import com.tapjoy.internal.o4;
import com.tapjoy.internal.q5;
import com.tapjoy.internal.z3;
import java.util.Arrays;
import java.util.HashSet;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class y extends RelativeLayout {
    public TJWebView a;
    public q5 b;
    public q5 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f8054d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f8055e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f8056f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Uri f8057g;
    public HashSet h;
    public k i;
    public final Context j;
    public final Boolean k;
    public RelativeLayout l;
    public FrameLayout m;
    public ProgressBar n;
    public TextView o;
    public TJImageButton p;
    public TJImageButton q;
    public boolean r;
    public String s;
    public String t;
    public String u;

    public final void a(int i, int i2) {
        q5 q5Var = i <= i2 ? this.b : this.c;
        if (q5Var == null) {
            this.a.setVisibility(4);
            return;
        }
        double d2 = i;
        int i3 = (int) (q5Var.a * d2);
        double d3 = i2;
        int i4 = (int) (q5Var.b * d3);
        if (i3 == 0 || i4 == 0) {
            this.a.setVisibility(4);
            return;
        }
        int i5 = (int) (d2 * q5Var.c);
        int i6 = (int) (d3 * q5Var.f7965d);
        int i7 = (i - i3) - i5;
        int i8 = (i2 - i4) - i6;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.a.getLayoutParams();
        layoutParams.width = i3;
        layoutParams.height = i4;
        Boolean bool = this.k;
        if (bool == null || !bool.booleanValue()) {
            layoutParams.setMargins(i5, i6, i7, i8);
        } else {
            float fB = new e0(getContext()).b();
            int height = this.m.getHeight() + ((int) (40.0f * fB));
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.l.getLayoutParams();
            layoutParams2.setMargins(i5, i6, i7, i8);
            this.l.setLayoutParams(layoutParams2);
            layoutParams.setMargins(i5, i6 + height, i7, i8);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(i3, (int) fB);
            layoutParams3.setMargins(i5, layoutParams.topMargin - this.n.getHeight(), i7, i8);
            this.n.setLayoutParams(layoutParams3);
            this.m.setLayoutParams(layoutParams3);
        }
        this.a.setLayoutParams(layoutParams);
        this.a.setVisibility(0);
        float f2 = q5Var.f7966e;
        if (f2 <= 0.0f) {
            this.a.setBackground(null);
            this.a.setClipToOutline(false);
            Boolean bool2 = this.k;
            if (bool2 == null || !bool2.booleanValue()) {
                return;
            }
            this.l.setClipToOutline(false);
            return;
        }
        float[] fArr = new float[8];
        float f3 = f2 * getResources().getDisplayMetrics().density;
        Boolean bool3 = this.k;
        if (bool3 != null && bool3.booleanValue()) {
            this.l.setOutlineProvider(new c5(f3));
            this.l.setClipToOutline(true);
            return;
        }
        Arrays.fill(fArr, f3);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(fArr, null, null));
        shapeDrawable.getPaint().setColor(-1);
        this.a.setBackground(shapeDrawable);
        this.a.setClipToOutline(true);
    }

    public boolean b() {
        if (!this.a.canGoBack()) {
            return false;
        }
        this.a.goBack();
        return true;
    }

    public void c() {
        this.p.setEnabled(this.a.canGoBack());
        this.q.setEnabled(this.a.canGoForward());
    }

    public void d(String str) {
        TJWebView tJWebView = this.a;
        if (tJWebView != null) {
            this.f8054d = str;
            this.f8055e = str;
            tJWebView.loadUrl(str);
        }
    }

    public void e() {
        new AlertDialog.Builder(this.j, R.style.Theme.Material.Light.Dialog.Alert).setMessage(this.s).setPositiveButton(this.t, new o4()).setNegativeButton(this.u, new z3(this)).create().show();
    }

    public String getLastUrl() {
        return this.f8055e;
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (this.a != null) {
            a(size, size2);
        }
        super.onMeasure(i, i2);
    }

    public void setErrorDialog(JSONObject jSONObject) {
        if (jSONObject != null) {
            this.r = true;
            this.s = jSONObject.optString("description");
            this.t = jSONObject.optString("close");
            this.u = jSONObject.optString("reload");
        }
    }

    public void setExitHosts(JSONArray jSONArray) {
        if (jSONArray == null) {
            this.h = null;
            return;
        }
        this.h = new HashSet();
        for (int i = 0; i <= jSONArray.length(); i++) {
            String strOptString = jSONArray.optString(i);
            if (strOptString != null) {
                this.h.add(strOptString);
            }
        }
    }

    public void setLayoutOption(JSONObject jSONObject) {
        if (jSONObject != null) {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(o2.h.C);
            this.c = jSONObjectOptJSONObject != null ? new q5(jSONObjectOptJSONObject) : null;
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(o2.h.D);
            this.b = jSONObjectOptJSONObject2 != null ? new q5(jSONObjectOptJSONObject2) : null;
        }
    }

    public void setUserAgent(String str) {
        this.a.getSettings().setUserAgentString(str);
    }
}
