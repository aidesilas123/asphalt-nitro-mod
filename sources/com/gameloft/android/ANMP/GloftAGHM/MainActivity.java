package com.gameloft.android.ANMP.GloftAGHM;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.widget.RelativeLayout;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.NotificationCompat;
import com.gameloft.android.ANMP.GloftAGHM.GLUtils.LowProfileListener;
import com.gameloft.android.ANMP.GloftAGHM.GLUtils.TopLayer;
import com.gameloft.android.ANMP.GloftAGHM.PackageUtils.JNIBridge;
import com.gameloft.android2d.iap.IAPLib;
import com.save;

/* JADX INFO: loaded from: classes2.dex */
public class MainActivity extends AppCompatActivity implements SurfaceHolder.Callback {
    public static MainActivity a;
    private boolean i;
    private boolean b = false;
    private boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2812d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private RelativeLayout f2813e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private SurfaceView f2814f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.gameloft.android.ANMP.GloftAGHM.PackageUtils.b.a f2815g = null;
    private com.gameloft.android.ANMP.GloftAGHM.PackageUtils.b.b h = null;
    boolean j = false;
    public Intent k = null;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MainActivity.this.moveTaskToBack(true);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MainActivity.this.T();
        }
    }

    class c implements Runnable {
        final /* synthetic */ boolean a;

        c(boolean z) {
            this.a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            MainActivity.this.Y(this.a);
        }
    }

    private int O() {
        int rotation = getWindowManager().getDefaultDisplay().getRotation();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        if (((rotation == 0 || rotation == 2) && i2 > i) || ((rotation == 1 || rotation == 3) && i > i2)) {
            if (rotation != 0) {
                if (rotation != 1) {
                    if (rotation != 2) {
                        if (rotation == 3) {
                            return 8;
                        }
                    }
                    return 9;
                }
                return 0;
            }
            return 1;
        }
        if (rotation != 0) {
            if (rotation != 1) {
                if (rotation == 2) {
                    return 8;
                }
                if (rotation == 3) {
                    return 9;
                }
            }
            return 1;
        }
        return 0;
    }

    private void Q() {
        R();
        S();
        LowProfileListener.ActivateImmersiveMode(this);
    }

    private void R() {
        this.f2815g = new com.gameloft.android.ANMP.GloftAGHM.PackageUtils.b.a();
        com.gameloft.android.ANMP.GloftAGHM.PackageUtils.b.b bVar = new com.gameloft.android.ANMP.GloftAGHM.PackageUtils.b.b();
        this.h = bVar;
        bVar.d(this, this.f2813e);
    }

    private void S() {
        JNIBridge.NativeSetActivityContainer(this);
        JNIBridge.NativeInit();
    }

    private void Start() {
        Toast.makeText(this, new String(Base64.decode("TElURUFQS1MuQ09NICYgOU1PRC5DT00=", 0)), 1).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T() {
        if (this.b) {
            ((AlarmManager) getSystemService(NotificationCompat.CATEGORY_ALARM)).set(1, System.currentTimeMillis() + 900, PendingIntent.getActivity(this, 0, new Intent(getIntent()), 32768));
        }
        if (Build.VERSION.SDK_INT > 7) {
            Process.killProcess(Process.myPid());
        } else {
            System.exit(0);
        }
    }

    private void V() {
        if (this.i) {
            this.c = false;
            this.h.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y(boolean z) {
        this.f2814f.setKeepScreenOn(z);
    }

    public static Activity getActivityContext() {
        return a;
    }

    public void N(boolean z) {
        this.b = z;
        runOnUiThread(new b());
    }

    public int P() {
        int rotation = getWindowManager().getDefaultDisplay().getRotation();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        if ((rotation == 0 || rotation == 2) && i2 > i) {
            return 0;
        }
        return ((rotation == 1 || rotation == 3) && i > i2) ? 0 : 1;
    }

    public void U() {
        runOnUiThread(new a());
    }

    public void W(boolean z) {
        runOnUiThread(new c(z));
    }

    public void X(boolean z) {
        if (!z) {
            setRequestedOrientation(O());
            return;
        }
        if (!this.j) {
            if (Build.VERSION.SDK_INT >= 18) {
                setRequestedOrientation(12);
                return;
            } else {
                setRequestedOrientation(7);
                return;
            }
        }
        if (Build.VERSION.SDK_INT < 18) {
            setRequestedOrientation(6);
        } else if (Build.MODEL.equals("SO-01G")) {
            setRequestedOrientation(8);
        } else {
            setRequestedOrientation(11);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        IAPLib.handleActivityResult(i, i2, intent);
        if (this.i) {
            this.h.a(i, i2, intent);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (Build.VERSION.SDK_INT >= 18) {
            setRequestedOrientation(11);
        } else {
            setRequestedOrientation(6);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        String action;
        Start();
        save.a(this);
        super.onCreate(bundle);
        this.k = getIntent();
        if (!isTaskRoot() && (action = getIntent().getAction()) != null && action.equals("android.intent.action.MAIN")) {
            finish();
            return;
        }
        a = this;
        getWindowManager().getDefaultDisplay().getMetrics(new DisplayMetrics());
        this.j = true;
        X(true);
        this.i = false;
        System.loadLibrary("asphaltnitro");
        this.f2813e = new RelativeLayout(this);
        SurfaceView surfaceView = new SurfaceView(this);
        this.f2814f = surfaceView;
        surfaceView.setEnabled(true);
        this.f2814f.setFocusable(true);
        this.f2814f.setFocusableInTouchMode(true);
        this.f2814f.getHolder().addCallback(this);
        this.f2813e.addView(this.f2814f);
        setContentView(this.f2813e);
        TopLayer.SetContainer(this.f2813e);
        Q();
        this.i = true;
    }

    @Override // android.app.Activity
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if (this.i && this.f2815g.a(motionEvent)) {
            return true;
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        LowProfileListener.onKeyDown(this, i);
        if (this.i && this.f2815g.b(i, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 19) {
            LowProfileListener.inVisibleImmersive(a);
        }
        if (this.i && this.f2815g.c(i, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        if (this.i && !this.c) {
            this.c = true;
            this.f2812d = false;
            this.h.b();
        }
        if (isFinishing()) {
            this.i = false;
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.f2812d) {
            return;
        }
        V();
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.i && this.f2815g.d(motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        JNIBridge.NotifyTrimMemory(i);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        boolean z2;
        super.onWindowFocusChanged(z);
        if (Build.VERSION.SDK_INT >= 17) {
            z2 = false;
        } else {
            if (z) {
                if (this.c) {
                    V();
                    z2 = true;
                }
            } else if (this.i) {
                if (!this.c) {
                    this.c = true;
                    this.h.b();
                }
                this.f2812d = true;
            }
            z2 = false;
        }
        if (Build.MODEL.equals("Galaxy Nexus")) {
            if (!z) {
                if (!this.c) {
                    this.c = true;
                    this.h.b();
                }
                this.f2812d = true;
            } else if (!z2 && this.c) {
                V();
            }
        }
        if (z) {
            LowProfileListener.ActivateImmersiveMode(this);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        if (!this.i || i2 <= i3) {
            return;
        }
        JNIBridge.NativeSurfaceChanged(surfaceHolder.getSurface(), i2, i3);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        if (this.i) {
            JNIBridge.NativeSurfaceChanged(null, 0, 0);
        }
    }
}
