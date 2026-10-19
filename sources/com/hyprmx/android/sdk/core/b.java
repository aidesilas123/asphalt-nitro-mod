package com.hyprmx.android.sdk.core;

import android.content.Context;
import com.hyprmx.android.sdk.consent.ConsentStatus;
import com.hyprmx.android.sdk.p002assert.ThreadAssert;
import com.hyprmx.android.sdk.utility.n0;
import java.util.List;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
public interface b {
    com.hyprmx.android.sdk.preferences.c C();

    com.hyprmx.android.sdk.placement.a E();

    com.hyprmx.android.sdk.bidding.a F();

    com.hyprmx.android.sdk.initialization.g G();

    n0 H();

    com.hyprmx.android.sdk.webview.s I();

    com.hyprmx.android.sdk.activity.b a(b bVar, com.hyprmx.android.sdk.api.data.a aVar, com.hyprmx.android.sdk.presentation.a aVar2, com.hyprmx.android.sdk.presentation.e eVar, com.hyprmx.android.sdk.fullscreen.d dVar);

    com.hyprmx.android.sdk.activity.f0 a(com.hyprmx.android.sdk.presentation.b bVar, com.hyprmx.android.sdk.api.data.r rVar);

    com.hyprmx.android.sdk.activity.g0 a(com.hyprmx.android.sdk.presentation.b bVar, com.hyprmx.android.sdk.utility.f0 f0Var, com.hyprmx.android.sdk.model.a aVar, com.hyprmx.android.sdk.api.data.r rVar, List list);

    com.hyprmx.android.sdk.preload.n a();

    void a(com.hyprmx.android.sdk.om.b bVar);

    com.hyprmx.android.sdk.network.k c();

    i0 d();

    com.hyprmx.android.sdk.analytics.b e();

    com.hyprmx.android.sdk.analytics.d f();

    com.hyprmx.android.sdk.preload.v g();

    ConsentStatus getConsentStatus();

    com.hyprmx.android.sdk.consent.b h();

    com.hyprmx.android.sdk.powersavemode.a i();

    com.hyprmx.android.sdk.initialization.b j();

    com.hyprmx.android.sdk.analytics.f k();

    com.hyprmx.android.sdk.core.js.a n();

    com.hyprmx.android.sdk.utility.f0 p();

    ThreadAssert q();

    com.hyprmx.android.sdk.model.a r();

    String s();

    com.hyprmx.android.sdk.presentation.j t();

    com.hyprmx.android.sdk.preload.z u();

    CoroutineScope w();

    com.hyprmx.android.sdk.om.g x();

    String y();

    Context z();
}
