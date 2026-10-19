package com.tapjoy;

import android.app.Activity;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import androidx.core.view.GravityCompat;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes4.dex */
public class TapjoyPluginAPI {
    public static TJOfferwallDiscoverView a = null;
    public static PopupWindow b = null;
    public static float c = -1.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static float f7838d = -1.0f;

    public static PopupWindow CreatePopupWindow(Activity activity, ViewGroup viewGroup, int i, int i2) {
        PopupWindow popupWindow = new PopupWindow(viewGroup, i, i2);
        popupWindow.getContentView().setSystemUiVisibility(activity.getWindow().getAttributes().flags);
        try {
            Method declaredMethod = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", Integer.TYPE);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(popupWindow, 1002);
        } catch (IllegalAccessException e2) {
            TapjoyLog.d("TapjoyPluginAPI", String.format("Unable to set popUpWindow window layout type: %s", e2.getLocalizedMessage()));
        } catch (NoSuchMethodException e3) {
            TapjoyLog.d("TapjoyPluginAPI", String.format("Unable to set popUpWindow window layout type: %s", e3.getLocalizedMessage()));
        } catch (InvocationTargetException e4) {
            TapjoyLog.d("TapjoyPluginAPI", String.format("Unable to set popUpWindow window layout type: %s", e4.getLocalizedMessage()));
        }
        return popupWindow;
    }

    public static void DestroyOWDiscover() {
        TapjoyUtil.runOnMainThread(new Runnable() { // from class: com.tapjoy.h
            @Override // java.lang.Runnable
            public final void run() {
                TapjoyPluginAPI.a();
            }
        });
    }

    public static void RequestOWDiscover(final Activity activity, final String str, final float f2, final float f3, final float f4, final float f5, final TJOfferwallDiscoverListener tJOfferwallDiscoverListener) {
        TapjoyUtil.runOnMainThread(new Runnable() { // from class: com.tapjoy.i
            @Override // java.lang.Runnable
            public final void run() {
                TapjoyPluginAPI.a(activity, tJOfferwallDiscoverListener, str, f4, f5, f2, f3);
            }
        });
    }

    public static void RequestOWDiscover(Activity activity, String str, float f2, TJOfferwallDiscoverListener tJOfferwallDiscoverListener) {
        RequestOWDiscover(activity, str, -1.0f, -1.0f, -1.0f, f2, tJOfferwallDiscoverListener);
    }

    public static void ShowOWDiscover(final Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        final float f2 = f7838d;
        if (f2 == -1.0f) {
            f2 = 0.0f;
        }
        final float height = c;
        if (height == -1.0f) {
            height = displayMetrics.heightPixels - b.getHeight();
        }
        TapjoyUtil.runOnMainThread(new Runnable() { // from class: com.tapjoy.j
            @Override // java.lang.Runnable
            public final void run() {
                TapjoyPluginAPI.a(activity, f2, height);
            }
        });
    }

    public static /* synthetic */ void a() {
        if (b != null) {
            if (Build.VERSION.SDK_INT < 22 || b.isAttachedInDecor()) {
                b.dismiss();
                TJOfferwallDiscoverView tJOfferwallDiscoverView = a;
                if (tJOfferwallDiscoverView != null) {
                    tJOfferwallDiscoverView.a();
                    a = null;
                }
            }
        }
    }

    public static /* synthetic */ void a(Activity activity, float f2, float f3) {
        PopupWindow popupWindow = b;
        if (popupWindow == null || popupWindow.isShowing() || activity.isFinishing() || activity.isDestroyed()) {
            return;
        }
        b.showAtLocation(activity.getWindow().getDecorView().getRootView(), c != -1.0f ? 8388659 : GravityCompat.END, (int) f2, (int) f3);
        c = -1.0f;
        f7838d = -1.0f;
    }

    public static /* synthetic */ void a(Activity activity, TJOfferwallDiscoverListener tJOfferwallDiscoverListener, String str, float f2, float f3, float f4, float f5) {
        DestroyOWDiscover();
        TJOfferwallDiscoverView tJOfferwallDiscoverView = new TJOfferwallDiscoverView(activity);
        a = tJOfferwallDiscoverView;
        tJOfferwallDiscoverView.setListener(tJOfferwallDiscoverListener);
        a.b(activity, str);
        float fB = new e0(activity).b();
        activity.getWindowManager().getDefaultDisplay().getMetrics(new DisplayMetrics());
        TJOfferwallDiscoverView tJOfferwallDiscoverView2 = a;
        if (f2 != -1.0f) {
            f2 *= fB;
        }
        PopupWindow popupWindowCreatePopupWindow = CreatePopupWindow(activity, tJOfferwallDiscoverView2, (int) f2, (int) (f3 * fB));
        b = popupWindowCreatePopupWindow;
        popupWindowCreatePopupWindow.setInputMethodMode(1);
        if (f4 != -1.0f) {
            f4 *= fB;
        }
        f7838d = f4;
        if (f5 != -1.0f) {
            f5 *= fB;
        }
        c = f5;
    }
}
