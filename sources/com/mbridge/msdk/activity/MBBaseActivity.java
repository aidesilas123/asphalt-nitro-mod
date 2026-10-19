package com.mbridge.msdk.activity;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.OrientationEventListener;
import android.view.WindowInsets;
import android.view.WindowManager;
import androidx.core.view.InputDeviceCompat;
import com.mbridge.msdk.foundation.c.b;
import com.mbridge.msdk.foundation.tools.aa;

/* JADX INFO: loaded from: classes4.dex */
public abstract class MBBaseActivity extends Activity {
    private OrientationEventListener a;
    private Display b;
    private int c = -1;

    /* JADX INFO: Access modifiers changed from: private */
    public int a() {
        if (this.b == null) {
            if (Build.VERSION.SDK_INT >= 30) {
                this.b = getDisplay();
            } else {
                this.b = ((WindowManager) getSystemService("window")).getDefaultDisplay();
            }
        }
        Display display = this.b;
        if (display != null) {
            return display.getRotation();
        }
        return -1;
    }

    private void b() {
        try {
            if (Build.VERSION.SDK_INT >= 19) {
                getWindow().addFlags(67108864);
                getWindow().getDecorView().setSystemUiVisibility(InputDeviceCompat.SOURCE_TOUCHSCREEN);
            } else {
                getWindow().getDecorView().setSystemUiVisibility(2);
            }
        } catch (Throwable th) {
            aa.d("MBBaseActivity", th.getMessage());
        }
    }

    static /* synthetic */ void e(MBBaseActivity mBBaseActivity) {
        OrientationEventListener orientationEventListener = new OrientationEventListener(mBBaseActivity, 1) { // from class: com.mbridge.msdk.activity.MBBaseActivity.2
            @Override // android.view.OrientationEventListener
            public final void onOrientationChanged(int i) {
                int rotation = MBBaseActivity.this.b != null ? MBBaseActivity.this.b.getRotation() : 0;
                if (rotation == 1 && MBBaseActivity.this.c != 1) {
                    MBBaseActivity.this.c = 1;
                    MBBaseActivity.this.getNotchParams();
                    aa.d("MBBaseActivity", "Orientation Left");
                    return;
                }
                if (rotation == 3 && MBBaseActivity.this.c != 2) {
                    MBBaseActivity.this.c = 2;
                    MBBaseActivity.this.getNotchParams();
                    aa.d("MBBaseActivity", "Orientation Right");
                } else if (rotation == 0 && MBBaseActivity.this.c != 3) {
                    MBBaseActivity.this.c = 3;
                    MBBaseActivity.this.getNotchParams();
                    aa.d("MBBaseActivity", "Orientation Top");
                } else {
                    if (rotation != 2 || MBBaseActivity.this.c == 4) {
                        return;
                    }
                    MBBaseActivity.this.c = 4;
                    MBBaseActivity.this.getNotchParams();
                    aa.d("MBBaseActivity", "Orientation Bottom");
                }
            }
        };
        mBBaseActivity.a = orientationEventListener;
        if (orientationEventListener.canDetectOrientation()) {
            mBBaseActivity.a.enable();
        } else {
            mBBaseActivity.a.disable();
            mBBaseActivity.a = null;
        }
    }

    public void getNotchParams() {
        getWindow().getDecorView().postDelayed(new Runnable() { // from class: com.mbridge.msdk.activity.MBBaseActivity.1
            @Override // java.lang.Runnable
            public final void run() {
                int safeInsetRight;
                int safeInsetTop;
                int i;
                DisplayCutout displayCutout;
                try {
                    int i2 = Build.VERSION.SDK_INT;
                    if (i2 >= 23) {
                        WindowInsets rootWindowInsets = MBBaseActivity.this.getWindow().getDecorView().getRootWindowInsets();
                        int i3 = -1;
                        int i4 = 0;
                        if (rootWindowInsets == null || i2 < 28 || (displayCutout = rootWindowInsets.getDisplayCutout()) == null) {
                            safeInsetRight = 0;
                            safeInsetTop = 0;
                            i = 0;
                        } else {
                            int safeInsetLeft = displayCutout.getSafeInsetLeft();
                            safeInsetRight = displayCutout.getSafeInsetRight();
                            safeInsetTop = displayCutout.getSafeInsetTop();
                            int safeInsetBottom = displayCutout.getSafeInsetBottom();
                            aa.d("MBBaseActivity", "NOTCH Left:" + safeInsetLeft + " Right:" + safeInsetRight + " Top:" + safeInsetTop + " Bottom:" + safeInsetBottom);
                            int rotation = MBBaseActivity.this.b != null ? MBBaseActivity.this.b.getRotation() : MBBaseActivity.this.a();
                            if (MBBaseActivity.this.c == -1) {
                                MBBaseActivity.this.c = rotation == 0 ? 3 : rotation == 1 ? 1 : rotation == 2 ? 4 : rotation == 3 ? 2 : -1;
                                aa.d("MBBaseActivity", MBBaseActivity.this.c + "");
                            }
                            if (rotation != 0) {
                                if (rotation == 1) {
                                    i3 = 90;
                                } else if (rotation == 2) {
                                    i3 = 180;
                                } else if (rotation == 3) {
                                    i3 = 270;
                                }
                                i = safeInsetBottom;
                                i4 = safeInsetLeft;
                            } else {
                                i = safeInsetBottom;
                                i4 = safeInsetLeft;
                                i3 = 0;
                            }
                        }
                        MBBaseActivity.this.setTopControllerPadding(i3, i4, safeInsetRight, safeInsetTop, i);
                        if (MBBaseActivity.this.a == null) {
                            MBBaseActivity.e(MBBaseActivity.this);
                        }
                    }
                } catch (Exception e2) {
                    aa.d("MBBaseActivity", e2.getMessage());
                }
            }
        }, 500L);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            requestWindowFeature(1);
            getWindow().setFlags(1024, 1024);
            getWindow().addFlags(512);
            b();
            a();
            if (Build.VERSION.SDK_INT >= 28) {
                WindowManager.LayoutParams attributes = getWindow().getAttributes();
                attributes.layoutInDisplayCutoutMode = 1;
                getWindow().setAttributes(attributes);
            }
        } catch (Exception e2) {
            aa.d("MBBaseActivity", e2.getMessage());
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        OrientationEventListener orientationEventListener = this.a;
        if (orientationEventListener != null) {
            orientationEventListener.disable();
            this.a = null;
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (b.c) {
            return;
        }
        getNotchParams();
        b();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        b();
    }

    public abstract void setTopControllerPadding(int i, int i2, int i3, int i4, int i5);
}
