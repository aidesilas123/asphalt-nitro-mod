package com.bytedance.sdk.component.e.a.c;

import android.util.Log;
import com.bytedance.sdk.component.e.a.f;
import com.bytedance.sdk.component.e.a.i;

/* JADX INFO: compiled from: LDebug.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {
    public static void a(String str) {
        try {
            f fVarP = i.g().p();
            if (fVarP == null || !fVarP.b()) {
                return;
            }
            String strC = fVarP.c();
            if (strC == null) {
                strC = "";
            }
            Log.d(strC + "-log", str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void a(String str, String str2) {
        try {
            f fVarP = i.g().p();
            if (fVarP == null || !fVarP.b()) {
                return;
            }
            String strC = fVarP.c();
            if (strC == null) {
                strC = "";
            }
            Log.d((strC + "-log") + str, str2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void b(String str) {
        try {
            f fVarP = i.g().p();
            if (fVarP == null || !fVarP.b()) {
                return;
            }
            String strC = fVarP.c();
            if (strC == null) {
                strC = "";
            }
            Log.i(strC + "-log", str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void b(String str, String str2) {
        try {
            f fVarP = i.g().p();
            if (fVarP == null || !fVarP.b()) {
                return;
            }
            String strC = fVarP.c();
            if (strC == null) {
                strC = "";
            }
            Log.i((strC + "-log") + str, str2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void c(String str) {
        try {
            f fVarP = i.g().p();
            if (fVarP == null || !fVarP.b()) {
                return;
            }
            String strC = fVarP.c();
            if (strC == null) {
                strC = "";
            }
            Log.w(strC + "-log", str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void c(String str, String str2) {
        try {
            f fVarP = i.g().p();
            if (fVarP == null || !fVarP.b()) {
                return;
            }
            String strC = fVarP.c();
            if (strC == null) {
                strC = "";
            }
            Log.w((strC + "-log") + str, str2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void d(String str) {
        try {
            f fVarP = i.g().p();
            if (fVarP == null || !fVarP.b()) {
                return;
            }
            String strC = fVarP.c();
            if (strC == null) {
                strC = "";
            }
            Log.e(strC + "-log", str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
