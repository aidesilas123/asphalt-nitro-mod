package com.hyprmx.android.sdk.om;

import com.facebook.login.LoginLogger;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.json.o2;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.v;

/* JADX INFO: loaded from: classes2.dex */
public final class i implements com.hyprmx.android.sdk.tracking.a {
    public final com.iab.omid.library.jungroup.adsession.media.b a;
    public final float b;

    public i(com.iab.omid.library.jungroup.adsession.media.b mediaEvents, float f2) {
        Intrinsics.checkNotNullParameter(mediaEvents, "mediaEvents");
        this.a = mediaEvents;
        this.b = f2;
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public /* synthetic */ Object a(long j, Continuation continuation) {
        return com.hyprmx.android.sdk.tracking.d.a(this, j, continuation);
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public /* synthetic */ Object a(Continuation continuation) {
        return com.hyprmx.android.sdk.tracking.d.b(this, continuation);
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public final Object b(Continuation<? super v> continuation) {
        HyprMXLog.d("onComplete");
        try {
            com.iab.omid.library.jungroup.adsession.media.b bVar = this.a;
            com.iab.omid.library.jungroup.d.d.a(bVar.a);
            bVar.a.f4956e.a(CampaignEx.JSON_NATIVE_VIDEO_COMPLETE);
        } catch (IllegalStateException e2) {
            HyprMXLog.e("Error notifying video complete with error msg - " + e2.getLocalizedMessage());
        }
        return v.a;
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public final Object c(Continuation<? super v> continuation) {
        HyprMXLog.d("onSkip");
        try {
            com.iab.omid.library.jungroup.adsession.media.b bVar = this.a;
            com.iab.omid.library.jungroup.d.d.a(bVar.a);
            bVar.a.f4956e.a(LoginLogger.EVENT_PARAM_METHOD_RESULT_SKIPPED);
        } catch (IllegalStateException e2) {
            HyprMXLog.e("Error notifying video skipped with error msg - " + e2.getLocalizedMessage());
        }
        return v.a;
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public /* synthetic */ Object d(Continuation continuation) {
        return com.hyprmx.android.sdk.tracking.d.e(this, continuation);
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public final Object e(Continuation<? super v> continuation) {
        HyprMXLog.d("onMidPoint");
        try {
            com.iab.omid.library.jungroup.adsession.media.b bVar = this.a;
            com.iab.omid.library.jungroup.d.d.a(bVar.a);
            bVar.a.f4956e.a(CampaignEx.JSON_NATIVE_VIDEO_MIDPOINT);
        } catch (IllegalStateException e2) {
            HyprMXLog.e("Error notifying video midpoint with error msg - " + e2.getLocalizedMessage());
        }
        return v.a;
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public final Object f(Continuation<? super v> continuation) {
        HyprMXLog.d("onFirstQuartile");
        try {
            com.iab.omid.library.jungroup.adsession.media.b bVar = this.a;
            com.iab.omid.library.jungroup.d.d.a(bVar.a);
            bVar.a.f4956e.a("firstQuartile");
        } catch (IllegalStateException e2) {
            HyprMXLog.e("Error notifying video firstQuartile with error msg - " + e2.getLocalizedMessage());
        }
        return v.a;
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public final Object g(Continuation<? super v> continuation) {
        HyprMXLog.d(o2.h.u0);
        try {
            com.iab.omid.library.jungroup.adsession.media.b bVar = this.a;
            com.iab.omid.library.jungroup.d.d.a(bVar.a);
            bVar.a.f4956e.a(CampaignEx.JSON_NATIVE_VIDEO_RESUME);
        } catch (IllegalStateException e2) {
            HyprMXLog.e("Error notifying video resume with error msg - " + e2.getLocalizedMessage());
        }
        return v.a;
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public final Object h(Continuation<? super v> continuation) {
        StringBuilder sb;
        HyprMXLog.d("onClick");
        try {
            this.a.a();
        } catch (IllegalArgumentException e2) {
            e = e2;
            sb = new StringBuilder("Error notifying video adUserInteraction with error msg - ");
            sb.append(e.getLocalizedMessage());
            HyprMXLog.e(sb.toString());
        } catch (IllegalStateException e3) {
            e = e3;
            sb = new StringBuilder("Error notifying video adUserInteraction with error msg - ");
            sb.append(e.getLocalizedMessage());
            HyprMXLog.e(sb.toString());
        }
        return v.a;
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public /* synthetic */ Object i(Continuation continuation) {
        return com.hyprmx.android.sdk.tracking.d.j(this, continuation);
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public final Object j(Continuation<? super v> continuation) {
        HyprMXLog.d("onThirdQuartile");
        try {
            com.iab.omid.library.jungroup.adsession.media.b bVar = this.a;
            com.iab.omid.library.jungroup.d.d.a(bVar.a);
            bVar.a.f4956e.a("thirdQuartile");
        } catch (IllegalStateException e2) {
            HyprMXLog.e("Error notifying video thirdQuartile with error msg - " + e2.getLocalizedMessage());
        }
        return v.a;
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public final Object k(Continuation<? super v> continuation) {
        HyprMXLog.d(o2.h.t0);
        try {
            com.iab.omid.library.jungroup.adsession.media.b bVar = this.a;
            com.iab.omid.library.jungroup.d.d.a(bVar.a);
            bVar.a.f4956e.a(CampaignEx.JSON_NATIVE_VIDEO_PAUSE);
        } catch (IllegalStateException e2) {
            HyprMXLog.e("Error notifying video pause with error msg - " + e2.getLocalizedMessage());
        }
        return v.a;
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public /* synthetic */ Object l(Continuation continuation) {
        return com.hyprmx.android.sdk.tracking.d.m(this, continuation);
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public /* synthetic */ Object m(Continuation continuation) {
        return com.hyprmx.android.sdk.tracking.d.n(this, continuation);
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public final Object n(Continuation<? super v> continuation) {
        StringBuilder sb;
        HyprMXLog.d("onStart");
        try {
            this.a.a(this.b);
        } catch (IllegalArgumentException e2) {
            e = e2;
            sb = new StringBuilder("Error notifying video start with error msg - ");
            sb.append(e.getLocalizedMessage());
            HyprMXLog.e(sb.toString());
        } catch (IllegalStateException e3) {
            e = e3;
            sb = new StringBuilder("Error notifying video start with error msg - ");
            sb.append(e.getLocalizedMessage());
            HyprMXLog.e(sb.toString());
        }
        return v.a;
    }
}
