package com.gameloft.android.ANMP.GloftAGHM.PackageUtils.b;

import android.view.KeyEvent;
import android.view.MotionEvent;
import com.gameloft.android.ANMP.GloftAGHM.GLUtils.SUtils;
import com.gameloft.android.ANMP.GloftAGHM.PackageUtils.JNIBridge;

/* JADX INFO: compiled from: InputDispatcher.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    public boolean a(MotionEvent motionEvent) {
        return false;
    }

    public boolean b(int i, KeyEvent keyEvent) {
        if (i != 4 && i != 82) {
            return false;
        }
        JNIBridge.NativeKeyAction(i, true);
        return true;
    }

    public boolean c(int i, KeyEvent keyEvent) {
        if (i == 4 || i == 82) {
            JNIBridge.NativeKeyAction(i, false);
            return true;
        }
        String overriddenSetting = SUtils.getOverriddenSetting("/sdcard/Android/data/com.gameloft.android.ANMP.GloftAGHM/files/qaTestingConfigs.txt", "LANGUAGE_WITH_VOLUME");
        if (overriddenSetting != null && overriddenSetting.equals("1") && (i == 25 || i == 24)) {
            JNIBridge.NativeVolumeAction(i == 24);
        }
        return false;
    }

    public boolean d(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        int pointerId = motionEvent.getPointerId(actionIndex);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            JNIBridge.NativeOnTouch(0, motionEvent.getX(actionIndex), motionEvent.getY(actionIndex), pointerId);
        } else if (actionMasked == 1) {
            JNIBridge.NativeOnTouch(2, motionEvent.getX(actionIndex), motionEvent.getY(actionIndex), pointerId);
        } else if (actionMasked == 2) {
            int pointerCount = motionEvent.getPointerCount();
            for (int i = 0; i < pointerCount; i++) {
                JNIBridge.NativeOnTouch(1, motionEvent.getX(i), motionEvent.getY(i), motionEvent.getPointerId(i));
            }
        } else if (actionMasked != 3) {
            if (actionMasked != 5) {
                if (actionMasked != 6) {
                    return false;
                }
                JNIBridge.NativeOnTouch(2, motionEvent.getX(actionIndex), motionEvent.getY(actionIndex), pointerId);
            }
            JNIBridge.NativeOnTouch(0, motionEvent.getX(actionIndex), motionEvent.getY(actionIndex), pointerId);
        } else {
            JNIBridge.NativeOnTouch(3, motionEvent.getX(actionIndex), motionEvent.getY(actionIndex), pointerId);
        }
        return true;
    }
}
