package com.bytedance.sdk.openadsdk.utils;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: AdmobOverlayHelper.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: compiled from: AdmobOverlayHelper.java */
    private static class a implements View.OnLayoutChangeListener {
        private final Drawable a;
        private int b;
        private int c;

        public a(Drawable drawable) {
            this.a = drawable;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            int i9 = i3 - i;
            int i10 = i4 - i2;
            if (i9 == this.b && i10 == this.c) {
                return;
            }
            this.b = i9;
            this.c = i10;
            this.a.setBounds(0, 0, i9, i10);
        }
    }

    @Nullable
    private static Drawable a(Resources resources, com.bytedance.sdk.openadsdk.core.model.q qVar) {
        try {
            String strBq = qVar.bq();
            if (TextUtils.isEmpty(strBq)) {
                return null;
            }
            byte[] bArrDecode = Base64.decode(strBq, 0);
            BitmapDrawable bitmapDrawable = new BitmapDrawable(resources, BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length));
            Shader.TileMode tileMode = Shader.TileMode.REPEAT;
            bitmapDrawable.setTileModeXY(tileMode, tileMode);
            bitmapDrawable.setTargetDensity(resources.getDisplayMetrics());
            return bitmapDrawable;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void a(Activity activity, com.bytedance.sdk.openadsdk.core.model.q qVar) {
        if (activity == null || qVar == null || TextUtils.isEmpty(qVar.bq())) {
            return;
        }
        try {
            View decorView = activity.getWindow().getDecorView();
            int i = i.bu;
            if (decorView.getTag(i) != null) {
                return;
            }
            activity.getWindow().getDecorView().setTag(i, Integer.valueOf(i));
            Drawable drawableA = a(activity.getResources(), qVar);
            if (drawableA == null) {
                return;
            }
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 23) {
                activity.getWindow().getDecorView().setForeground(drawableA);
            } else if (i2 >= 18) {
                activity.getWindow().getDecorView().getOverlay().add(drawableA);
                activity.getWindow().getDecorView().addOnLayoutChangeListener(new a(drawableA));
            } else {
                View view = new View(activity);
                view.setBackground(drawableA);
                view.setClickable(false);
                view.setFocusable(false);
                activity.getWindow().addContentView(view, new ViewGroup.LayoutParams(-1, -1));
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.e("add overlay fail", th.getMessage());
        }
    }

    public static void a(ViewGroup viewGroup, com.bytedance.sdk.openadsdk.core.model.q qVar) {
        if (viewGroup == null || qVar == null || TextUtils.isEmpty(qVar.bq())) {
            return;
        }
        try {
            int i = i.bu;
            if (viewGroup.getTag(i) != null) {
                return;
            }
            viewGroup.setTag(i, Integer.valueOf(i));
            Drawable drawableA = a(viewGroup.getResources(), qVar);
            if (drawableA == null) {
                return;
            }
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 23) {
                viewGroup.setForeground(drawableA);
            } else if (i2 >= 18) {
                viewGroup.getOverlay().add(drawableA);
                viewGroup.addOnLayoutChangeListener(new a(drawableA));
            } else {
                View view = new View(viewGroup.getContext());
                view.setBackground(drawableA);
                view.setClickable(false);
                view.setFocusable(false);
                viewGroup.addView(view);
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.e("add overlay fail", th.getMessage());
        }
    }
}
