package com.pgl.ssdk;

import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;

/* JADX INFO: renamed from: com.pgl.ssdk.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C1647e {
    public static int a;
    public static int b;
    public static int c;

    private static void a(Context context) {
        int height;
        int i;
        try {
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 17) {
                defaultDisplay.getRealSize(point);
                i = point.x;
            } else {
                if (i2 < 13) {
                    a = defaultDisplay.getWidth();
                    height = defaultDisplay.getHeight();
                    b = height;
                }
                defaultDisplay.getSize(point);
                i = point.x;
            }
            a = i;
            height = point.y;
            b = height;
        } catch (Throwable unused) {
        }
    }

    public static String b(Context context) {
        try {
            a(context);
            if (context != null) {
                try {
                    new DisplayMetrics();
                    DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                    float f2 = displayMetrics.density;
                    c = displayMetrics.densityDpi;
                } catch (Throwable unused) {
                }
            }
            new DisplayMetrics();
            float f3 = context.getResources().getDisplayMetrics().xdpi;
        } catch (Throwable unused2) {
        }
        return "" + c + "[<!>]" + a + "," + b + "[<!>]";
    }
}
