package com.json;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.json.o2;
import com.json.sdk.utils.Logger;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a6 extends FrameLayout implements y6 {
    private f6 a;

    class a implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;

        a(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            a6 a6Var = a6.this;
            a6Var.removeView(a6Var.a.getPresentingView());
            a6.this.a.a(this.a, this.b);
            a6.this.a = null;
        }
    }

    public a6(Context context) {
        super(context);
    }

    public a6(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public a6(f6 f6Var, Context context) {
        super(context);
        setLayoutParams(new FrameLayout.LayoutParams(f6Var.d().c(), f6Var.d().a()));
        this.a = f6Var;
        addView(f6Var.getPresentingView());
    }

    private void c() throws Exception {
        JSONObject jSONObject;
        try {
            jSONObject = this.a.c().a().getJSONObject(z5.p).getJSONObject(z5.s);
        } catch (Exception unused) {
            jSONObject = new JSONObject();
        }
        jSONObject.put("adViewId", this.a.b());
        this.a.c().a(o2.g.Y, jSONObject);
    }

    public void a() throws Exception {
        f6 f6Var = this.a;
        if (f6Var == null || f6Var.c() == null) {
            throw new Exception("mAdPresenter or mAdPresenter.getAdViewLogic() are null");
        }
        c();
    }

    @Override // com.json.y6
    public synchronized void a(String str, String str2) {
        f6 f6Var = this.a;
        if (f6Var != null && f6Var.c() != null && this.a.getPresentingView() != null) {
            this.a.c().e();
            q5.a.c(new a(str, str2));
        }
    }

    @Override // com.json.y6
    public void a(String str, String str2, String str3) {
        f6 f6Var = this.a;
        if (f6Var == null) {
            return;
        }
        f6Var.a(str, str2, str3);
    }

    @Override // com.json.y6
    public void a(JSONObject jSONObject, String str, String str2) {
        this.a.a(jSONObject, str, str2);
    }

    @Override // com.json.y6
    public void b(JSONObject jSONObject, String str, String str2) {
        this.a.b(jSONObject, str, str2);
    }

    @Override // com.json.y6
    public void c(JSONObject jSONObject, String str, String str2) throws Exception {
        this.a.c(jSONObject, str, str2);
    }

    @Override // com.json.y6
    public WebView getPresentingView() {
        return this.a.getPresentingView();
    }

    public y5 getSize() {
        f6 f6Var = this.a;
        return f6Var != null ? f6Var.d() : new y5();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        Logger.i("IronSourceAdContainer", "onVisibilityChanged: " + i);
        f6 f6Var = this.a;
        if (f6Var == null) {
            return;
        }
        try {
            f6Var.c().a(z5.k, i, isShown());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        Logger.i("IronSourceAdContainer", "onWindowVisibilityChanged: " + i);
        f6 f6Var = this.a;
        if (f6Var == null) {
            return;
        }
        try {
            f6Var.c().a(z5.l, i, isShown());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
