package com.google.android.material.color;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;

/* JADX INFO: compiled from: ThemeUtils.java */
/* JADX INFO: loaded from: classes3.dex */
final class e {
    static void a(@NonNull Context context, @StyleRes int i) {
        Resources.Theme themeB;
        context.getTheme().applyStyle(i, true);
        if (!(context instanceof Activity) || (themeB = b((Activity) context)) == null) {
            return;
        }
        themeB.applyStyle(i, true);
    }

    @Nullable
    private static Resources.Theme b(@NonNull Activity activity) {
        View viewPeekDecorView;
        Context context;
        Window window = activity.getWindow();
        if (window == null || (viewPeekDecorView = window.peekDecorView()) == null || (context = viewPeekDecorView.getContext()) == null) {
            return null;
        }
        return context.getTheme();
    }
}
