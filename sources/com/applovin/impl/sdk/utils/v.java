package com.applovin.impl.sdk.utils;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class v {
    public static void B(View view) {
        if (view == null) {
            return;
        }
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(view);
        }
    }

    public static boolean T(int i, int i2) {
        return gZ(i) != gZ(i2);
    }

    public static void a(@NonNull View view, long j) {
        a(view, j, null);
    }

    public static void a(@NonNull final View view, long j, @Nullable final Runnable runnable) {
        view.setVisibility(4);
        view.bringToFront();
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(j);
        alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.applovin.impl.sdk.utils.v.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                view.setVisibility(0);
            }
        });
        view.startAnimation(alphaAnimation);
    }

    public static void b(@NonNull final View view, long j, @Nullable final Runnable runnable) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(j);
        alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.applovin.impl.sdk.utils.v.2
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                view.setVisibility(4);
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                view.setVisibility(0);
            }
        });
        view.startAnimation(alphaAnimation);
    }

    public static boolean gZ(int i) {
        return i == 0;
    }

    public static String ha(int i) {
        return i == 0 ? "VISIBLE" : i == 4 ? "INVISIBLE" : i == 8 ? "GONE" : String.valueOf(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int[] m(int r6, int r7, int r8) {
        /*
            r0 = 2
            r1 = 0
            r2 = 1
            if (r6 != 0) goto Lc
            int[] r6 = new int[r0]
            r6[r1] = r7
            r6[r2] = r8
            return r6
        Lc:
            r3 = r6 & 119(0x77, float:1.67E-43)
            r4 = 119(0x77, float:1.67E-43)
            if (r3 != r4) goto L19
            int[] r6 = new int[r2]
            r7 = 13
            r6[r1] = r7
            return r6
        L19:
            r3 = r6 & 112(0x70, float:1.57E-43)
            r4 = 15
            r5 = 112(0x70, float:1.57E-43)
            if (r3 != r5) goto L24
        L21:
            r7 = 15
            goto L3d
        L24:
            r3 = r6 & 48
            r5 = 48
            if (r3 != r5) goto L2d
            r7 = 10
            goto L3d
        L2d:
            r3 = r6 & 80
            r5 = 80
            if (r3 != r5) goto L36
            r7 = 12
            goto L3d
        L36:
            r3 = r6 & 16
            r5 = 16
            if (r3 != r5) goto L3d
            goto L21
        L3d:
            r3 = r6 & 7
            r4 = 14
            r5 = 7
            if (r3 != r5) goto L47
        L44:
            r8 = 14
            goto L7b
        L47:
            boolean r3 = com.applovin.impl.sdk.utils.h.KV()
            if (r3 == 0) goto L57
            r3 = 8388611(0x800003, float:1.1754948E-38)
            r5 = r6 & r3
            if (r5 != r3) goto L57
            r8 = 20
            goto L7b
        L57:
            r3 = r6 & 3
            r5 = 3
            if (r3 != r5) goto L5f
            r8 = 9
            goto L7b
        L5f:
            boolean r3 = com.applovin.impl.sdk.utils.h.KV()
            if (r3 == 0) goto L6f
            r3 = 8388613(0x800005, float:1.175495E-38)
            r5 = r6 & r3
            if (r5 != r3) goto L6f
            r8 = 21
            goto L7b
        L6f:
            r3 = r6 & 5
            r5 = 5
            if (r3 != r5) goto L77
            r8 = 11
            goto L7b
        L77:
            r6 = r6 & r2
            if (r6 != r2) goto L7b
            goto L44
        L7b:
            int[] r6 = new int[r0]
            r6[r1] = r8
            r6[r2] = r7
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.utils.v.m(int, int, int):int[]");
    }
}
