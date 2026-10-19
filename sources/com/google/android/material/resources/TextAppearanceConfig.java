package com.google.android.material.resources;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public class TextAppearanceConfig {
    private static boolean a;

    public static void setShouldLoadFontSynchronously(boolean z) {
        a = z;
    }

    public static boolean shouldLoadFontSynchronously() {
        return a;
    }
}
