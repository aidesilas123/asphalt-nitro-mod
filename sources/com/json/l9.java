package com.json;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.json.environment.ContextProvider;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.IronSourceSegment;
import com.json.mediationsdk.ads.nativead.internal.InternalNativeAdListener;
import com.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener;
import com.json.mediationsdk.adunit.adapter.utility.AdInfo;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.model.NetworkSettings;
import com.json.mediationsdk.model.Placement;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.mediationsdk.utils.b;
import com.json.q1;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00012\u00020\u0004BE\u0012\u0010\u0010,\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0005\u0018\u00010+\u0012\u0006\u0010.\u001a\u00020-\u0012\b\u0010/\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u00101\u001a\u000200\u0012\b\u00103\u001a\u0004\u0018\u000102\u0012\u0006\u00104\u001a\u00020\u001f¢\u0006\u0004\b5\u00106J<\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0012\u0010\b\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0014J\b\u0010\u0011\u001a\u00020\u0010H\u0014J\u0010\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012J\u0006\u0010\u0016\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u0017J \u0010\u0015\u001a\u00020\u00142\f\u0010\u001a\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00192\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0014J\u001a\u0010\u0015\u001a\u00020\u00142\b\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0006\u0010 \u001a\u00020\u001fH\u0014J\b\u0010!\u001a\u00020\u0014H\u0014J\u001c\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020%0$2\u0006\u0010#\u001a\u00020\"H\u0016J\u0010\u0010\u000f\u001a\u00020&2\u0006\u0010\u0006\u001a\u00020\u0005H\u0014J\b\u0010'\u001a\u00020\u001fH\u0014J\b\u0010(\u001a\u00020\u000bH\u0014J\b\u0010)\u001a\u00020\u001fH\u0014J\b\u0010*\u001a\u00020\u000bH\u0014¨\u00067"}, d2 = {"Lcom/ironsource/l9;", "Lcom/ironsource/q1;", "Lcom/ironsource/o9;", "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;", "Lcom/ironsource/a0;", "Lcom/ironsource/mediationsdk/model/NetworkSettings;", "providerSettings", "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;", "adapter", "", "sessionDepth", "", "currentAuctionId", "Lcom/ironsource/d1;", "item", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/ironsource/x;", "e", "Lcom/ironsource/mediationsdk/model/Placement;", "placement", "", "a", "I", "Lcom/ironsource/mediationsdk/ads/nativead/internal/InternalNativeAdListener;", "nativeAdListener", "Lcom/ironsource/t1;", "smash", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;", "adInfo", "Lcom/ironsource/mediationsdk/logger/IronSourceError;", "error", "", "isReload", "C", "Lcom/ironsource/t;", NotificationCompat.CATEGORY_EVENT, "", "", "Lorg/json/JSONObject;", "r", "l", "D", "i", "", "providersList", "Lcom/ironsource/h9;", z5.p, "userId", "Lcom/ironsource/o8;", "publisherDataHolder", "Lcom/ironsource/mediationsdk/IronSourceSegment;", "segment", "isOneToken", "<init>", "(Ljava/util/List;Lcom/ironsource/h9;Ljava/lang/String;Lcom/ironsource/o8;Lcom/ironsource/mediationsdk/IronSourceSegment;Z)V", "mediationsdk_release"}, mv = {1, 8, 0})
public final class l9 extends q1<o9, AdapterAdListener> implements a0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l9(List<? extends NetworkSettings> list, h9 configs, String str, o8 publisherDataHolder, IronSourceSegment ironSourceSegment, boolean z) {
        super(new NativeAdManagerData(str, list, configs), publisherDataHolder, ironSourceSegment, z);
        Intrinsics.checkNotNullParameter(configs, "configs");
        Intrinsics.checkNotNullParameter(publisherDataHolder, "publisherDataHolder");
    }

    @Override // com.json.q1
    protected void B(t1<?> t1Var, AdInfo adInfo) {
        if (t1Var instanceof o9) {
            o9 o9Var = (o9) t1Var;
            this.t.a(o9Var.getAdapterNativeAdData(), o9Var.getNativeAdViewBinder(), adInfo);
        }
    }

    public final void I() {
        vc vcVar;
        z8 z8Var;
        IronLog.INTERNAL.verbose();
        try {
            o9 o9Var = (o9) this.a.d();
            if (o9Var != null) {
                Integer numR = o9Var.r();
                int iA = numR == null ? this.C.a(this.o.getAdUnit()) : numR.intValue();
                v vVar = this.s;
                if (vVar != null && (z8Var = vVar.f6680g) != null) {
                    z8Var.a(iA);
                }
                o9Var.O();
                this.a.a(null);
            }
            this.i = null;
            w(q1.f.NONE);
        } catch (Throwable th) {
            String str = "destroyNativeAd - exception = " + th.getLocalizedMessage();
            IronLog.INTERNAL.error(J(str));
            v vVar2 = this.s;
            if (vVar2 == null || (vcVar = vVar2.k) == null) {
                return;
            }
            vcVar.c(str);
        }
    }

    @Override // com.json.q1
    protected JSONObject K(NetworkSettings providerSettings) {
        Intrinsics.checkNotNullParameter(providerSettings, "providerSettings");
        JSONObject nativeAdSettings = providerSettings.getNativeAdSettings();
        Intrinsics.checkNotNullExpressionValue(nativeAdSettings, "providerSettings.nativeAdSettings");
        return nativeAdSettings;
    }

    @Override // com.json.q1
    protected x X() {
        return new u3();
    }

    @Override // com.json.q1, com.json.u
    public Map<String, Object> a(t event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Map<String, Object> data = super.a(event);
        Placement placement = this.i;
        if (placement != null) {
            Intrinsics.checkNotNullExpressionValue(data, "data");
            data.put("placement", placement.getPlacementName());
        }
        UUID uuid = this.w;
        if (uuid != null) {
            Intrinsics.checkNotNullExpressionValue(data, "data");
            data.put("objectId", uuid);
        }
        Intrinsics.checkNotNullExpressionValue(data, "data");
        return data;
    }

    public final void a(InternalNativeAdListener nativeAdListener) {
        Intrinsics.checkNotNullParameter(nativeAdListener, "nativeAdListener");
        C(new k9(nativeAdListener));
    }

    public final void a(Placement placement) {
        String str;
        int iB;
        IronLog.INTERNAL.verbose("placement = " + placement);
        if (placement == null || TextUtils.isEmpty(placement.getPlacementName())) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.a;
            Object[] objArr = new Object[1];
            objArr[0] = placement == null ? "placement is null" : "placement name is empty";
            str = String.format("can't load native ad - %s", Arrays.copyOf(objArr, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(format, *args)");
            iB = s.b(this.o.getAdUnit());
        } else if (b.b(ContextProvider.getInstance().getApplicationContext(), placement.getPlacementName(), this.o.getAdUnit())) {
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.a;
            str = String.format("placement %s is capped", Arrays.copyOf(new Object[]{placement.getPlacementName()}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(format, *args)");
            iB = s.f(this.o.getAdUnit());
        } else {
            str = null;
            iB = 510;
        }
        if (TextUtils.isEmpty(str)) {
            this.i = placement;
            w();
        } else {
            IronLog.API.error(J(str));
            t(iB, str, false);
        }
    }

    @Override // com.json.q1
    protected String c0() {
        return "NA";
    }

    @Override // com.json.q1
    protected void g() {
    }

    @Override // com.json.q1
    protected String g0() {
        return IronSourceConstants.OPW_NT_MANAGER_NAME;
    }

    @Override // com.json.q1
    protected boolean i() {
        return false;
    }

    @Override // com.json.q1
    protected boolean l0() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.json.q1
    /* JADX INFO: renamed from: t0, reason: merged with bridge method [inline-methods] */
    public o9 a(NetworkSettings providerSettings, BaseAdAdapter<?, AdapterAdListener> adapter, int i, String currentAuctionId, d1 item) {
        Intrinsics.checkNotNullParameter(providerSettings, "providerSettings");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(currentAuctionId, "currentAuctionId");
        Intrinsics.checkNotNullParameter(item, "item");
        return new o9(this, new p(IronSource.AD_UNIT.NATIVE_AD, this.o.getUserId(), i, this.f6521g, currentAuctionId, this.f6519e, this.f6520f, providerSettings, this.o.getSmashLoadTimeout()), adapter, this.i, item, this);
    }

    @Override // com.json.q1
    protected void v(IronSourceError ironSourceError, boolean z) {
        this.t.a(ironSourceError);
    }
}
