package com.json.sdk.controller;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.core.view.InputDeviceCompat;
import com.json.b4;
import com.json.bd;
import com.json.e5;
import com.json.e9;
import com.json.f0;
import com.json.g;
import com.json.g1;
import com.json.g6;
import com.json.gb;
import com.json.h;
import com.json.h6;
import com.json.ha;
import com.json.j6;
import com.json.o2;
import com.json.o6;
import com.json.od;
import com.json.sdk.controller.t;
import com.json.sdk.utils.Logger;
import com.json.sdk.utils.SDKUtils;
import com.json.u7;

/* JADX INFO: loaded from: classes4.dex */
public class ControllerActivity extends Activity implements ha, bd {
    private static final String a = "ControllerActivity";
    private static String b = "removeWebViewContainerView | mContainer is null";
    private static String c = "removeWebViewContainerView | view is null";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6545d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private t f6546e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private RelativeLayout f6547f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private FrameLayout f6548g;
    private e5 h;
    private String j;
    private f0 n;
    private boolean o;
    private boolean p;
    public int currentRequestedRotation = -1;
    private boolean i = false;
    private Handler k = new Handler();
    private final Runnable l = new a();
    final RelativeLayout.LayoutParams m = new RelativeLayout.LayoutParams(-1, -1);

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ControllerActivity.this.getWindow().getDecorView().setSystemUiVisibility(SDKUtils.getActivityUIFlags(ControllerActivity.this.i));
        }
    }

    class b implements View.OnSystemUiVisibilityChangeListener {
        b() {
        }

        @Override // android.view.View.OnSystemUiVisibilityChangeListener
        public void onSystemUiVisibilityChange(int i) {
            if ((i & InputDeviceCompat.SOURCE_TOUCHSCREEN) == 0) {
                ControllerActivity.this.k.removeCallbacks(ControllerActivity.this.l);
                ControllerActivity.this.k.postDelayed(ControllerActivity.this.l, 500L);
            }
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ControllerActivity.this.getWindow().addFlags(128);
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ControllerActivity.this.getWindow().clearFlags(128);
        }
    }

    private View a(ViewGroup viewGroup) {
        return k() ? viewGroup.findViewById(1) : g6.a().a(this.f6545d).getPresentingView();
    }

    private FrameLayout b(String str) {
        return !h(str) ? this.f6546e.l() : od.a(getApplicationContext(), g6.a().a(str).getPresentingView());
    }

    private void c() {
        runOnUiThread(new d());
    }

    private void d(String str, int i) {
        int i2;
        if (str != null) {
            if (o2.h.C.equalsIgnoreCase(str)) {
                n();
                return;
            }
            if (o2.h.D.equalsIgnoreCase(str)) {
                o();
                return;
            }
            if ("device".equalsIgnoreCase(str)) {
                if (!this.h.B(this)) {
                    return;
                } else {
                    i2 = 1;
                }
            } else if (getRequestedOrientation() != -1) {
                return;
            } else {
                i2 = 4;
            }
            setRequestedOrientation(i2);
        }
    }

    private void g() {
        String str = a;
        Logger.i(str, "clearWebviewController");
        t tVar = this.f6546e;
        if (tVar == null) {
            Logger.i(str, "clearWebviewController, null");
            return;
        }
        tVar.a(t.x.Gone);
        this.f6546e.v();
        this.f6546e.w();
        this.f6546e.e(this.j, "onDestroy");
    }

    private boolean h(String str) {
        return (TextUtils.isEmpty(str) || str.equals(Integer.toString(1))) ? false : true;
    }

    private void j() {
        Intent intent = getIntent();
        d(intent.getStringExtra(o2.h.A), intent.getIntExtra(o2.h.B, 0));
    }

    private boolean k() {
        return this.f6545d == null;
    }

    private void l() {
        runOnUiThread(new c());
    }

    private void m() {
        ViewGroup viewGroup;
        try {
            if (this.f6547f == null) {
                throw new Exception(b);
            }
            ViewGroup viewGroup2 = (ViewGroup) this.f6548g.getParent();
            View viewA = a(viewGroup2);
            if (viewA == null) {
                throw new Exception(c);
            }
            if (isFinishing() && (viewGroup = (ViewGroup) viewA.getParent()) != null) {
                viewGroup.removeView(viewA);
            }
            viewGroup2.removeView(this.f6548g);
        } catch (Exception e2) {
            o6.a(gb.s, new j6().a(b4.z, e2.getMessage()).a());
            Logger.i(a, "removeWebViewContainerView fail " + e2.getMessage());
        }
    }

    private void n() {
        String str;
        String str2;
        int I = this.h.I(this);
        String str3 = a;
        Logger.i(str3, "setInitiateLandscapeOrientation");
        if (I != 0) {
            if (I == 2) {
                str2 = "ROTATION_180";
            } else if (I == 3) {
                str2 = "ROTATION_270 Right Landscape";
            } else {
                if (I != 1) {
                    Logger.i(str3, "No Rotation");
                    return;
                }
                str = "ROTATION_90 Left Landscape";
            }
            Logger.i(str3, str2);
            setRequestedOrientation(8);
            return;
        }
        str = "ROTATION_0";
        Logger.i(str3, str);
        setRequestedOrientation(0);
    }

    private void o() {
        String str;
        int I = this.h.I(this);
        String str2 = a;
        Logger.i(str2, "setInitiatePortraitOrientation");
        if (I == 0) {
            str = "ROTATION_0";
        } else if (I == 2) {
            Logger.i(str2, "ROTATION_180");
            setRequestedOrientation(9);
            return;
        } else if (I == 1) {
            str = "ROTATION_270 Right Landscape";
        } else {
            if (I != 3) {
                Logger.i(str2, "No Rotation");
                return;
            }
            str = "ROTATION_90 Left Landscape";
        }
        Logger.i(str2, str);
        setRequestedOrientation(1);
    }

    @Override // com.json.ha
    public boolean onBackButtonPressed() {
        onBackPressed();
        return true;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        Logger.i(a, "onBackPressed");
        if (g1.a().a(this)) {
            return;
        }
        super.onBackPressed();
    }

    @Override // com.json.ha
    public void onCloseRequested() {
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.h = e9.h().c();
        try {
            new h(this).a();
            new g(this).a();
            t tVar = (t) u7.b((Context) this).a().j();
            this.f6546e = tVar;
            tVar.l().setId(1);
            this.f6546e.a((ha) this);
            this.f6546e.a((bd) this);
            Intent intent = getIntent();
            this.j = intent.getStringExtra(o2.h.m);
            this.i = intent.getBooleanExtra(o2.h.v, false);
            this.f6545d = intent.getStringExtra("adViewId");
            this.o = false;
            this.p = intent.getBooleanExtra(o2.h.z0, false);
            if (this.i) {
                getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new b());
                runOnUiThread(this.l);
            }
            if (!TextUtils.isEmpty(this.j) && h6.e.OfferWall.toString().equalsIgnoreCase(this.j)) {
                if (bundle != null) {
                    f0 f0Var = (f0) bundle.getParcelable("state");
                    if (f0Var != null) {
                        this.n = f0Var;
                        this.f6546e.a(f0Var);
                    }
                    finish();
                } else {
                    this.n = this.f6546e.n();
                }
            }
            RelativeLayout relativeLayout = new RelativeLayout(this);
            this.f6547f = relativeLayout;
            setContentView(relativeLayout, this.m);
            this.f6548g = b(this.f6545d);
            if (this.f6547f.findViewById(1) == null && this.f6548g.getParent() != null) {
                finish();
            }
            j();
            this.f6547f.addView(this.f6548g, this.m);
        } catch (Exception e2) {
            e2.printStackTrace();
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        String str = a;
        Logger.i(str, "onDestroy");
        m();
        if (this.o) {
            return;
        }
        Logger.i(str, "onDestroy | destroyedFromBackground");
        g();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4 && this.f6546e.r()) {
            this.f6546e.q();
            return true;
        }
        if (this.i && (i == 25 || i == 24)) {
            this.k.removeCallbacks(this.l);
            this.k.postDelayed(this.l, 500L);
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.json.ha
    public void onOrientationChanged(String str, int i) {
        d(str, i);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        Logger.i(a, "onPause, isFinishing=" + isFinishing());
        r.a(this);
        t tVar = this.f6546e;
        if (tVar != null) {
            tVar.a((Context) this);
            if (!this.p) {
                this.f6546e.u();
            }
            this.f6546e.a(false, o2.h.Z);
            this.f6546e.e(this.j, o2.h.t0);
        }
        if (isFinishing()) {
            this.o = true;
            g();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        Logger.i(a, o2.h.u0);
        t tVar = this.f6546e;
        if (tVar != null) {
            tVar.b(this);
            if (!this.p) {
                this.f6546e.y();
            }
            this.f6546e.a(true, o2.h.Z);
            this.f6546e.e(this.j, o2.h.u0);
        }
        r.b(this);
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (TextUtils.isEmpty(this.j) || !h6.e.OfferWall.toString().equalsIgnoreCase(this.j)) {
            return;
        }
        this.n.c(true);
        bundle.putParcelable("state", this.n);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        Logger.i(a, "onStart");
        t tVar = this.f6546e;
        if (tVar != null) {
            tVar.e(this.j, "onStart");
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        Logger.i(a, "onStop");
        t tVar = this.f6546e;
        if (tVar != null) {
            tVar.e(this.j, "onStop");
        }
    }

    @Override // android.app.Activity
    protected void onUserLeaveHint() {
        super.onUserLeaveHint();
        Logger.i(a, "onUserLeaveHint");
        t tVar = this.f6546e;
        if (tVar != null) {
            tVar.e(this.j, "onUserLeaveHint");
        }
    }

    @Override // com.json.bd
    public void onVideoEnded() {
        toggleKeepScreen(false);
    }

    @Override // com.json.bd
    public void onVideoPaused() {
        toggleKeepScreen(false);
    }

    @Override // com.json.bd
    public void onVideoResumed() {
        toggleKeepScreen(true);
    }

    @Override // com.json.bd
    public void onVideoStarted() {
        toggleKeepScreen(true);
    }

    @Override // com.json.bd
    public void onVideoStopped() {
        toggleKeepScreen(false);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (this.i && z) {
            runOnUiThread(this.l);
        }
    }

    @Override // android.app.Activity
    public void setRequestedOrientation(int i) {
        if (this.currentRequestedRotation != i) {
            Logger.i(a, "Rotation: Req = " + i + " Curr = " + this.currentRequestedRotation);
            this.currentRequestedRotation = i;
            super.setRequestedOrientation(i);
        }
    }

    public void toggleKeepScreen(boolean z) {
        if (z) {
            l();
        } else {
            c();
        }
    }
}
