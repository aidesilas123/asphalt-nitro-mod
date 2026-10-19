package com.hyprmx.android.sdk.header;

import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.hyprmx.android.sdk.utility.w;
import java.util.Arrays;
import java.util.UnknownFormatConversionException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class e implements c {
    public final a a;
    public final d b;
    public final b c;

    public e(a headerUIModel, WebTrafficHeaderFragment webTrafficHeaderView, boolean z, b navigationPresenter) {
        Intrinsics.checkNotNullParameter(headerUIModel, "headerUIModel");
        Intrinsics.checkNotNullParameter(webTrafficHeaderView, "webTrafficHeaderView");
        Intrinsics.checkNotNullParameter(navigationPresenter, "navigationPresenter");
        this.a = headerUIModel;
        this.b = webTrafficHeaderView;
        this.c = navigationPresenter;
        webTrafficHeaderView.setPresenter(this);
        if (z) {
            webTrafficHeaderView.showCloseButton(w.a(headerUIModel.d()));
        }
        webTrafficHeaderView.setBackgroundColor(w.a(headerUIModel.c()));
        webTrafficHeaderView.setMinHeight(headerUIModel.e());
    }

    @Override // com.hyprmx.android.sdk.header.c
    public final void a() {
        this.b.hideCountDown();
        this.b.hideFinishButton();
        this.b.hideNextButton();
        this.b.setTitleText("");
        this.b.hidePageCount();
        this.b.hideProgressSpinner();
        this.b.showCloseButton(w.a(this.a.o));
    }

    @Override // com.hyprmx.android.sdk.header.c
    public final void a(int i) {
        this.b.setPageCount(i, w.a(this.a.l));
        this.b.setTitleText(this.a.b);
    }

    @Override // com.hyprmx.android.sdk.header.c
    public final void a(String time) {
        Intrinsics.checkNotNullParameter(time, "time");
        this.b.hideFinishButton();
        this.b.hideNextButton();
        this.b.hideProgressSpinner();
        try {
            String str = String.format(this.a.f4551e, Arrays.copyOf(new Object[]{time}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(this, *args)");
            time = str;
        } catch (UnknownFormatConversionException unused) {
            HyprMXLog.e("UnknownFormatConversionException formatting time.  Using default time format.");
        }
        this.b.setCountDown(time);
    }

    @Override // com.hyprmx.android.sdk.header.c
    public final void b(int i) {
        this.b.setPageCountState(i, w.a(this.a.m));
    }

    @Override // com.hyprmx.android.sdk.header.c
    public final void c() {
        this.c.c();
    }

    @Override // com.hyprmx.android.sdk.header.c
    public final void d() {
        this.c.d();
    }

    @Override // com.hyprmx.android.sdk.header.c
    public final void f() {
        this.c.f();
    }

    @Override // com.hyprmx.android.sdk.header.c
    public final void showFinishButton() {
        this.b.hideCloseButton();
        this.b.hideCountDown();
        this.b.hideNextButton();
        this.b.hideProgressSpinner();
        d dVar = this.b;
        a aVar = this.a;
        String str = aVar.f4550d;
        int iA = w.a(aVar.k);
        int iA2 = w.a(this.a.p);
        a aVar2 = this.a;
        dVar.showFinishButton(str, iA, iA2, aVar2.f4553g, aVar2.f4552f);
    }

    @Override // com.hyprmx.android.sdk.header.c
    public final void showNextButton() {
        this.b.hideCountDown();
        this.b.hideFinishButton();
        this.b.hideProgressSpinner();
        d dVar = this.b;
        a aVar = this.a;
        String str = aVar.c;
        int iA = w.a(aVar.j);
        int iA2 = w.a(this.a.p);
        a aVar2 = this.a;
        dVar.showNextButton(str, iA, iA2, aVar2.i, aVar2.h);
    }

    @Override // com.hyprmx.android.sdk.header.c
    public final void showProgressSpinner() {
        this.b.hideCountDown();
        this.b.hideFinishButton();
        this.b.hideNextButton();
        String str = this.a.q;
        if (str == null) {
            this.b.showProgressSpinner();
        } else {
            this.b.showProgressSpinner(w.a(str));
        }
    }
}
