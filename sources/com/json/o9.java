package com.json;

import android.app.Activity;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.json.environment.ContextProvider;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.ads.nativead.AdapterNativeAdData;
import com.json.mediationsdk.adunit.adapter.internal.AdapterNativeAdInterface;
import com.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener;
import com.json.mediationsdk.adunit.adapter.internal.nativead.AdapterNativeAdViewBinder;
import com.json.mediationsdk.adunit.adapter.listener.NativeAdListener;
import com.json.mediationsdk.adunit.adapter.utility.AdData;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.model.Placement;
import com.json.t1;
import java.util.Arrays;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\u00020\u00032\u00020\u0004BI\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010!\u001a\u00020 \u0012\u0014\u0010$\u001a\u0010\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010#\u0018\u00010\"\u0012\b\u0010&\u001a\u0004\u0018\u00010%\u0012\u0006\u0010(\u001a\u00020'\u0012\b\u0010)\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b*\u0010+J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\u000b\u001a\u00020\tH\u0002J\b\u0010\f\u001a\u00020\tH\u0014J\u0006\u0010\r\u001a\u00020\tJ\u0018\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\u000f\u001a\u00020\tH\u0016J\u001c\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0016R(\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u0015\u001a\u0004\u0018\u00010\u00058\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R(\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\u0015\u001a\u0004\u0018\u00010\u00078\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d¨\u0006,"}, d2 = {"Lcom/ironsource/o9;", "Lcom/ironsource/t1;", "Lcom/ironsource/a0;", "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;", "Lcom/ironsource/u;", "Lcom/ironsource/mediationsdk/ads/nativead/AdapterNativeAdData;", "adapterNativeAdData", "Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;", "nativeAdViewBinder", "", "a", "I", "F", "O", "onAdLoadSuccess", hc.c, "Lcom/ironsource/t;", NotificationCompat.CATEGORY_EVENT, "", "", "", "<set-?>", "r", "Lcom/ironsource/mediationsdk/ads/nativead/AdapterNativeAdData;", "P", "()Lcom/ironsource/mediationsdk/ads/nativead/AdapterNativeAdData;", "s", "Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;", "Q", "()Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;", "Lcom/ironsource/pa;", "threadInterface", "Lcom/ironsource/p;", "adSmashData", "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;", "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;", "adapter", "Lcom/ironsource/mediationsdk/model/Placement;", "placement", "Lcom/ironsource/d1;", "item", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "<init>", "(Lcom/ironsource/pa;Lcom/ironsource/p;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/d1;Lcom/ironsource/a0;)V", "mediationsdk_release"}, mv = {1, 8, 0})
public final class o9 extends t1<a0> implements NativeAdListener, u {

    /* JADX INFO: renamed from: r, reason: from kotlin metadata */
    private AdapterNativeAdData adapterNativeAdData;

    /* JADX INFO: renamed from: s, reason: from kotlin metadata */
    private AdapterNativeAdViewBinder nativeAdViewBinder;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o9(pa threadInterface, p adSmashData, BaseAdAdapter<?, AdapterAdListener> baseAdAdapter, Placement placement, d1 item, a0 a0Var) {
        super(threadInterface, adSmashData, baseAdAdapter, new h0(adSmashData.g(), adSmashData.g().getNativeAdSettings(), IronSource.AD_UNIT.NATIVE_AD), item, a0Var);
        Intrinsics.checkNotNullParameter(threadInterface, "threadInterface");
        Intrinsics.checkNotNullParameter(adSmashData, "adSmashData");
        Intrinsics.checkNotNullParameter(item, "item");
        this.f6623g = placement;
    }

    private final void d0(AdapterNativeAdData adapterNativeAdData, AdapterNativeAdViewBinder adapterNativeAdViewBinder) {
        this.adapterNativeAdData = adapterNativeAdData;
        this.nativeAdViewBinder = adapterNativeAdViewBinder;
        super.onAdLoadSuccess();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e0(o9 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f0(o9 this$0, AdapterNativeAdData adapterNativeAdData, AdapterNativeAdViewBinder nativeAdViewBinder) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapterNativeAdData, "$adapterNativeAdData");
        Intrinsics.checkNotNullParameter(nativeAdViewBinder, "$nativeAdViewBinder");
        this$0.d0(adapterNativeAdData, nativeAdViewBinder);
    }

    private final void t() {
        vc vcVar;
        IronLog.INTERNAL.verbose(U());
        if (x()) {
            super.onAdOpened();
            return;
        }
        if (this.f6621e != t1.h.FAILED) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.a;
            String str = String.format("unexpected onAdOpened for %s, state - %s", Arrays.copyOf(new Object[]{k(), this.f6621e}, 2));
            Intrinsics.checkNotNullExpressionValue(str, "format(format, *args)");
            v vVar = this.f6620d;
            if (vVar == null || (vcVar = vVar.k) == null) {
                return;
            }
            vcVar.l(str);
        }
    }

    public final void O() {
        vc vcVar;
        z8 z8Var;
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(k());
        N(t1.h.NONE);
        Object obj = this.c;
        if (obj == null) {
            ironLog.warning("mAdapter == null");
            return;
        }
        try {
            if (obj instanceof AdapterNativeAdInterface) {
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.ironsource.mediationsdk.adunit.adapter.internal.AdapterNativeAdInterface<*>");
                AdData mCurrentAdData = this.k;
                Intrinsics.checkNotNullExpressionValue(mCurrentAdData, "mCurrentAdData");
                ((AdapterNativeAdInterface) obj).destroyAd(mCurrentAdData);
            } else {
                ironLog.error(G("adapter not instance of AdapterNativeAdInterface"));
            }
        } catch (Throwable th) {
            String str = "destroyNativeAd - exception = " + th.getLocalizedMessage();
            IronLog.INTERNAL.error(G(str));
            v vVar = this.f6620d;
            if (vVar != null && (vcVar = vVar.k) != null) {
                vcVar.c(str);
            }
        }
        v vVar2 = this.f6620d;
        if (vVar2 == null || (z8Var = vVar2.f6680g) == null) {
            return;
        }
        Integer sessionDepth = r();
        Intrinsics.checkNotNullExpressionValue(sessionDepth, "sessionDepth");
        z8Var.a(sessionDepth.intValue());
    }

    /* JADX INFO: renamed from: P, reason: from getter */
    public final AdapterNativeAdData getAdapterNativeAdData() {
        return this.adapterNativeAdData;
    }

    /* JADX INFO: renamed from: Q, reason: from getter */
    public final AdapterNativeAdViewBinder getNativeAdViewBinder() {
        return this.nativeAdViewBinder;
    }

    @Override // com.json.t1, com.json.u
    public Map<String, Object> a(t event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Map<String, Object> data = super.a(event);
        if (this.f6623g != null) {
            Intrinsics.checkNotNullExpressionValue(data, "data");
            data.put("placement", X());
        }
        Intrinsics.checkNotNullExpressionValue(data, "data");
        return data;
    }

    @Override // com.json.t1
    protected void o() {
        vc vcVar;
        if (!(this.c instanceof AdapterNativeAdInterface)) {
            IronLog.INTERNAL.error(G("adapter not instance of AdapterNativeAdInterface"));
            return;
        }
        if (ContextProvider.getInstance().getCurrentActiveActivity() == null) {
            IronLog.INTERNAL.error(G("activity must not be null"));
            v vVar = this.f6620d;
            if (vVar == null || (vcVar = vVar.k) == null) {
                return;
            }
            vcVar.c("activity must not be null");
            return;
        }
        Object obj = this.c;
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.ironsource.mediationsdk.adunit.adapter.internal.AdapterNativeAdInterface<com.ironsource.mediationsdk.adunit.adapter.listener.NativeAdListener>");
        AdData mCurrentAdData = this.k;
        Intrinsics.checkNotNullExpressionValue(mCurrentAdData, "mCurrentAdData");
        Activity currentActiveActivity = ContextProvider.getInstance().getCurrentActiveActivity();
        Intrinsics.checkNotNullExpressionValue(currentActiveActivity, "getInstance().currentActiveActivity");
        ((AdapterNativeAdInterface) obj).loadAd(mCurrentAdData, currentActiveActivity, this);
    }

    @Override // com.json.mediationsdk.adunit.adapter.listener.NativeAdListener
    public void onAdLoadSuccess(final AdapterNativeAdData adapterNativeAdData, final AdapterNativeAdViewBinder nativeAdViewBinder) {
        Intrinsics.checkNotNullParameter(adapterNativeAdData, "adapterNativeAdData");
        Intrinsics.checkNotNullParameter(nativeAdViewBinder, "nativeAdViewBinder");
        if (b0().c()) {
            b0().a(new Runnable() { // from class: com.ironsource.r6
                @Override // java.lang.Runnable
                public final void run() {
                    o9.f0(this.a, adapterNativeAdData, nativeAdViewBinder);
                }
            });
        } else {
            d0(adapterNativeAdData, nativeAdViewBinder);
        }
    }

    @Override // com.json.t1, com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener, com.json.mediationsdk.adunit.adapter.listener.BannerAdListener, com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener
    public void onAdOpened() {
        if (b0().c()) {
            b0().a(new Runnable() { // from class: com.ironsource.l7
                @Override // java.lang.Runnable
                public final void run() {
                    o9.e0(this.a);
                }
            });
        } else {
            t();
        }
    }
}
