package com.hyprmx.android.sdk.jsAlertDialog;

import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class e implements b {
    public final c a;
    public final d b;
    public final a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinkedHashMap f4566d;

    public e(f jsAlertDialogView, d webViewPresenter, a adDialogPresenter) {
        Intrinsics.checkNotNullParameter(jsAlertDialogView, "jsAlertDialogView");
        Intrinsics.checkNotNullParameter(webViewPresenter, "webViewPresenter");
        Intrinsics.checkNotNullParameter(adDialogPresenter, "adDialogPresenter");
        this.a = jsAlertDialogView;
        this.b = webViewPresenter;
        this.c = adDialogPresenter;
        this.f4566d = new LinkedHashMap();
        jsAlertDialogView.setPresenter(this);
    }

    @Override // com.hyprmx.android.sdk.jsAlertDialog.b
    public final void a(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        String str = (String) this.f4566d.get(name);
        if (str != null) {
            if (str.length() > 0) {
                this.b.a(str);
            }
        }
    }

    @Override // com.hyprmx.android.sdk.jsAlertDialog.b
    public final void e() {
        this.c.e();
    }

    @Override // com.hyprmx.android.sdk.jsAlertDialog.b
    public final void h() {
        this.c.h();
    }
}
