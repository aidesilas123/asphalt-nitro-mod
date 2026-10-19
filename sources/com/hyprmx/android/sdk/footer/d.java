package com.hyprmx.android.sdk.footer;

import com.hyprmx.android.sdk.footer.FooterContract;
import com.hyprmx.android.sdk.utility.f0;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements FooterContract.Presenter, CoroutineScope {
    public final FooterContract.URLPresenter a;
    public final FooterContract.NavigationPresenter b;
    public final FooterContract.View c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final f0 f4535d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CompletableJob f4536e;

    /* JADX WARN: Removed duplicated region for block: B:15:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public d(com.hyprmx.android.sdk.footer.FooterContract.URLPresenter r7, com.hyprmx.android.sdk.footer.FooterContract.NavigationPresenter r8, com.hyprmx.android.sdk.footer.a r9, com.hyprmx.android.sdk.footer.FooterFragment r10, boolean r11, com.hyprmx.android.sdk.utility.f0 r12) {
        /*
            r6 = this;
            java.lang.String r0 = "footerUIModel"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.lang.String r0 = "footerView"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            java.lang.String r0 = "imageCacheManager"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r0)
            r6.<init>()
            r6.a = r7
            r6.b = r8
            r6.c = r10
            r6.f4535d = r12
            r7 = 0
            r8 = 1
            kotlinx.coroutines.CompletableJob r12 = kotlinx.coroutines.JobKt.Job$default(r7, r8, r7)
            r6.f4536e = r12
            r10.setPresenter(r6)
            boolean r12 = r9.g()
            r0 = 0
            if (r12 != 0) goto L4a
            java.lang.String r12 = r9.h()
            if (r12 == 0) goto L3b
            java.lang.CharSequence r12 = kotlin.text.g.trim(r12)
            java.lang.String r12 = r12.toString()
            goto L3c
        L3b:
            r12 = r7
        L3c:
            if (r12 == 0) goto L47
            int r12 = r12.length()
            if (r12 != 0) goto L45
            goto L47
        L45:
            r12 = 0
            goto L48
        L47:
            r12 = 1
        L48:
            if (r12 == 0) goto L50
        L4a:
            com.hyprmx.android.sdk.footer.e r12 = r9.d()
            if (r12 == 0) goto L52
        L50:
            r12 = 1
            goto L53
        L52:
            r12 = 0
        L53:
            r10.setVisible(r12)
            int r12 = r9.f()
            r10.setMinimumHeight(r12)
            r10.enableNavigation(r11)
            java.lang.String r11 = r9.h()
            if (r11 == 0) goto L7b
            java.lang.CharSequence r12 = kotlin.text.g.trim(r11)
            java.lang.String r12 = r12.toString()
            int r12 = r12.length()
            if (r12 <= 0) goto L75
            goto L76
        L75:
            r8 = 0
        L76:
            if (r8 == 0) goto L7b
            r10.setText(r11)
        L7b:
            java.lang.String r8 = r9.c()
            if (r8 == 0) goto L88
            int r8 = com.hyprmx.android.sdk.utility.w.a(r8)
            r10.setBackgroundColor(r8)
        L88:
            com.hyprmx.android.sdk.footer.e r8 = r9.d()
            if (r8 == 0) goto La7
            int r10 = r8.d()
            if (r10 <= 0) goto La7
            int r10 = r8.c()
            if (r10 <= 0) goto La7
            com.hyprmx.android.sdk.footer.b r3 = new com.hyprmx.android.sdk.footer.b
            r3.<init>(r6, r8, r7)
            r1 = 0
            r2 = 0
            r4 = 3
            r5 = 0
            r0 = r6
            kotlinx.coroutines.BuildersKt.launch$default(r0, r1, r2, r3, r4, r5)
        La7:
            com.hyprmx.android.sdk.footer.e r8 = r9.e()
            if (r8 == 0) goto Lc6
            int r9 = r8.d()
            if (r9 <= 0) goto Lc6
            int r9 = r8.c()
            if (r9 <= 0) goto Lc6
            com.hyprmx.android.sdk.footer.c r3 = new com.hyprmx.android.sdk.footer.c
            r3.<init>(r6, r8, r7)
            r1 = 0
            r2 = 0
            r4 = 3
            r5 = 0
            r0 = r6
            kotlinx.coroutines.BuildersKt.launch$default(r0, r1, r2, r3, r4, r5)
        Lc6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.footer.d.<init>(com.hyprmx.android.sdk.footer.FooterContract$URLPresenter, com.hyprmx.android.sdk.footer.FooterContract$NavigationPresenter, com.hyprmx.android.sdk.footer.a, com.hyprmx.android.sdk.footer.FooterFragment, boolean, com.hyprmx.android.sdk.utility.f0):void");
    }

    @Override // com.hyprmx.android.sdk.footer.FooterContract.Presenter
    public final void didTapBack() {
        FooterContract.NavigationPresenter navigationPresenter = this.b;
        if (navigationPresenter != null) {
            navigationPresenter.didTapBack();
        }
    }

    @Override // com.hyprmx.android.sdk.footer.FooterContract.Presenter
    public final void didTapForward() {
        FooterContract.NavigationPresenter navigationPresenter = this.b;
        if (navigationPresenter != null) {
            navigationPresenter.didTapForward();
        }
    }

    @Override // com.hyprmx.android.sdk.footer.FooterContract.Presenter
    public final void didTapURL(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        FooterContract.URLPresenter uRLPresenter = this.a;
        if (uRLPresenter != null) {
            uRLPresenter.didTapURL(url);
        }
    }

    @Override // com.hyprmx.android.sdk.footer.FooterContract.Presenter
    public final void enableBackwardNavigation(boolean z) {
        if (z) {
            this.c.setVisible(true);
        }
        this.c.enableBackNavigation(z);
    }

    @Override // com.hyprmx.android.sdk.footer.FooterContract.Presenter
    public final void enableForwardNavigation(boolean z) {
        if (z) {
            this.c.setVisible(true);
        }
        this.c.enableForwardNavigation(z);
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        return this.f4536e.plus(Dispatchers.getMain());
    }

    @Override // com.hyprmx.android.sdk.footer.FooterContract.Presenter
    public final void setVisible(boolean z) {
        this.c.setVisible(z);
    }
}
