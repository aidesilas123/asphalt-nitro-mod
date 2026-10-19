package com.applovin.impl.sdk.utils;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.os.StrictMode;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.RoundedCorner;
import android.view.WindowManager;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.applovin.sdk.AppLovinSdkUtils;
import com.gameloft.adsmanager.JavaUtils;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class h {
    private static final Map<Integer, Point> aVC = new HashMap(2);

    public static class a {
        int aVD;
        int aVE;
        int aVF;
        int aVG;

        /* JADX INFO: renamed from: com.applovin.impl.sdk.utils.h$a$a, reason: collision with other inner class name */
        public static class C0084a {
            private int aVD;
            private int aVE;
            private int aVF;
            private int aVG;

            C0084a() {
            }

            public a Ll() {
                return new a(this.aVD, this.aVE, this.aVF, this.aVG);
            }

            public C0084a gQ(int i) {
                this.aVD = i;
                return this;
            }

            public C0084a gR(int i) {
                this.aVE = i;
                return this;
            }

            public C0084a gS(int i) {
                this.aVF = i;
                return this;
            }

            public C0084a gT(int i) {
                this.aVG = i;
                return this;
            }

            public String toString() {
                return "CompatibilityUtils.ScreenCornerRadii.ScreenCornerRadiiBuilder(topLeft=" + this.aVD + ", topRight=" + this.aVE + ", bottomLeft=" + this.aVF + ", bottomRight=" + this.aVG + ")";
            }
        }

        a(int i, int i2, int i3, int i4) {
            this.aVD = i;
            this.aVE = i2;
            this.aVF = i3;
            this.aVG = i4;
        }

        public int Lh() {
            return this.aVD;
        }

        public int Li() {
            return this.aVE;
        }

        public int Lj() {
            return this.aVF;
        }

        public int Lk() {
            return this.aVG;
        }

        protected boolean canEqual(Object obj) {
            return obj instanceof a;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aVar.canEqual(this) && Lh() == aVar.Lh() && Li() == aVar.Li() && Lj() == aVar.Lj() && Lk() == aVar.Lk();
        }

        public int hashCode() {
            return ((((((Lh() + 59) * 59) + Li()) * 59) + Lj()) * 59) + Lk();
        }

        public String toString() {
            return "CompatibilityUtils.ScreenCornerRadii(topLeft=" + Lh() + ", topRight=" + Li() + ", bottomLeft=" + Lj() + ", bottomRight=" + Lk() + ")";
        }
    }

    public static void KU() {
        try {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().permitAll().build());
        } catch (Throwable unused) {
        }
    }

    @ChecksSdkIntAtLeast(api = 17)
    public static boolean KV() {
        return Build.VERSION.SDK_INT >= 17;
    }

    @ChecksSdkIntAtLeast(api = 19)
    public static boolean KW() {
        return Build.VERSION.SDK_INT >= 19;
    }

    @ChecksSdkIntAtLeast(api = 21)
    public static boolean KX() {
        return Build.VERSION.SDK_INT >= 21;
    }

    @ChecksSdkIntAtLeast(api = 23)
    public static boolean KY() {
        return Build.VERSION.SDK_INT >= 23;
    }

    @ChecksSdkIntAtLeast(api = 24)
    public static boolean KZ() {
        return Build.VERSION.SDK_INT >= 24;
    }

    @ChecksSdkIntAtLeast(api = 26)
    public static boolean La() {
        return Build.VERSION.SDK_INT >= 26;
    }

    @ChecksSdkIntAtLeast(api = 28)
    public static boolean Lb() {
        return Build.VERSION.SDK_INT >= 28;
    }

    @ChecksSdkIntAtLeast(api = 29)
    public static boolean Lc() {
        return Build.VERSION.SDK_INT >= 29;
    }

    @ChecksSdkIntAtLeast(api = 30)
    public static boolean Ld() {
        return Build.VERSION.SDK_INT >= 30;
    }

    @ChecksSdkIntAtLeast(api = 31)
    public static boolean Le() {
        return Build.VERSION.SDK_INT >= 31;
    }

    @ChecksSdkIntAtLeast(api = 33)
    public static boolean Lf() {
        return Build.VERSION.SDK_INT >= 33;
    }

    @ChecksSdkIntAtLeast(api = 34)
    public static boolean Lg() {
        return Build.VERSION.SDK_INT >= 34;
    }

    public static Point Y(Context context) {
        int orientation = AppLovinSdkUtils.getOrientation(context);
        Map<Integer, Point> map = aVC;
        if (map.containsKey(Integer.valueOf(orientation))) {
            return map.get(Integer.valueOf(orientation));
        }
        Point point = new Point();
        point.x = 480;
        point.y = JavaUtils.Constants.BANNER_WIDTH_DP;
        StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
        StrictMode.setVmPolicy(StrictMode.VmPolicy.LAX);
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager != null) {
            Display defaultDisplay = windowManager.getDefaultDisplay();
            if (Ld()) {
                Rect bounds = windowManager.getMaximumWindowMetrics().getBounds();
                point = new Point(bounds.width(), bounds.height());
            } else if (KV()) {
                defaultDisplay.getRealSize(point);
            } else {
                defaultDisplay.getSize(point);
            }
        }
        StrictMode.setVmPolicy(vmPolicy);
        map.put(Integer.valueOf(orientation), point);
        return point;
    }

    public static Point Z(Context context) {
        Point point;
        StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
        StrictMode.setVmPolicy(StrictMode.VmPolicy.LAX);
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (Ld()) {
            Rect bounds = windowManager.getCurrentWindowMetrics().getBounds();
            point = new Point(bounds.width(), bounds.height());
        } else {
            Display defaultDisplay = windowManager.getDefaultDisplay();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getMetrics(displayMetrics);
            point = new Point(displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        StrictMode.setVmPolicy(vmPolicy);
        return point;
    }

    @RequiresApi(api = 31)
    private static int a(int i, Display display) {
        RoundedCorner roundedCorner = display.getRoundedCorner(i);
        if (roundedCorner != null) {
            return roundedCorner.getRadius();
        }
        return -1;
    }

    @Nullable
    public static a a(Context context, com.applovin.impl.sdk.n nVar) {
        a aVarLl = null;
        if (((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aOO)).booleanValue() && Le()) {
            StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
            StrictMode.setVmPolicy(StrictMode.VmPolicy.LAX);
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager != null) {
                try {
                    Display defaultDisplay = windowManager.getDefaultDisplay();
                    aVarLl = new a.C0084a().gQ(a(0, defaultDisplay)).gR(a(1, defaultDisplay)).gS(a(3, defaultDisplay)).gT(a(2, defaultDisplay)).Ll();
                } catch (Throwable unused) {
                }
            }
            StrictMode.setVmPolicy(vmPolicy);
        }
        return aVarLl;
    }

    public static boolean d(String str, Context context) {
        return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
    }
}
