package com.facebook;

/* JADX INFO: compiled from: WebDialog.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class WebDialog {
    public static final WebDialog INSTANCE = new WebDialog();

    private WebDialog() {
    }

    public static final int getWebDialogTheme() {
        return com.facebook.internal.WebDialog.Companion.getWebDialogTheme();
    }

    public static final void setWebDialogTheme(int i) {
        com.facebook.internal.WebDialog.Companion.setWebDialogTheme(i);
    }
}
