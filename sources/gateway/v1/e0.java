package gateway.v1;

import com.google.protobuf.ByteString;
import com.json.v4;
import com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase;
import gateway.v1.CampaignStateOuterClass;
import gateway.v1.DynamicDeviceInfoOuterClass;
import gateway.v1.OperativeEventRequestOuterClass;
import gateway.v1.SessionCountersOuterClass;
import gateway.v1.StaticDeviceInfoOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OperativeEventRequestKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0007\u0018\u0000 K2\u00020\u0001:\u0001KB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u00109\u001a\u00020:H\u0001J\u0006\u0010;\u001a\u00020<J\u0006\u0010=\u001a\u00020<J\u0006\u0010>\u001a\u00020<J\u0006\u0010?\u001a\u00020<J\u0006\u0010@\u001a\u00020<J\u0006\u0010A\u001a\u00020<J\u0006\u0010B\u001a\u00020<J\u0006\u0010C\u001a\u00020<J\u0006\u0010D\u001a\u00020<J\u0006\u0010E\u001a\u00020<J\u0006\u0010F\u001a\u00020GJ\u0006\u0010H\u001a\u00020GJ\u0006\u0010I\u001a\u00020GJ\u0006\u0010J\u001a\u00020GR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R$\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0019\u0010\t\"\u0004\b\u001a\u0010\u000bR$\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u001b8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R$\u0010!\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\"\u0010\t\"\u0004\b#\u0010\u000bR$\u0010%\u001a\u00020$2\u0006\u0010\u0005\u001a\u00020$8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R$\u0010+\u001a\u00020*2\u0006\u0010\u0005\u001a\u00020*8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R$\u00101\u001a\u0002002\u0006\u0010\u0005\u001a\u0002008G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b2\u00103\"\u0004\b4\u00105R$\u00106\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b7\u0010\t\"\u0004\b8\u0010\u000b¨\u0006L"}, d2 = {"Lgateway/v1/OperativeEventRequestKt$Dsl;", "", "_builder", "Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;", "(Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;)V", "value", "Lcom/google/protobuf/ByteString;", "additionalData", "getAdditionalData", "()Lcom/google/protobuf/ByteString;", "setAdditionalData", "(Lcom/google/protobuf/ByteString;)V", "Lgateway/v1/CampaignStateOuterClass$CampaignState;", "campaignState", "getCampaignState", "()Lgateway/v1/CampaignStateOuterClass$CampaignState;", "setCampaignState", "(Lgateway/v1/CampaignStateOuterClass$CampaignState;)V", "Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;", "dynamicDeviceInfo", "getDynamicDeviceInfo", "()Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;", "setDynamicDeviceInfo", "(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V", "eventId", "getEventId", "setEventId", "Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventType;", "eventType", "getEventType", "()Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventType;", "setEventType", "(Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventType;)V", "impressionOpportunityId", "getImpressionOpportunityId", "setImpressionOpportunityId", "Lgateway/v1/SessionCountersOuterClass$SessionCounters;", "sessionCounters", "getSessionCounters", "()Lgateway/v1/SessionCountersOuterClass$SessionCounters;", "setSessionCounters", "(Lgateway/v1/SessionCountersOuterClass$SessionCounters;)V", "", v4.E0, "getSid", "()Ljava/lang/String;", "setSid", "(Ljava/lang/String;)V", "Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;", "staticDeviceInfo", "getStaticDeviceInfo", "()Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;", "setStaticDeviceInfo", "(Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V", HandleAndroidInvocationsUseCase.KEY_TRACKING_TOKEN, "getTrackingToken", "setTrackingToken", "_build", "Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;", "clearAdditionalData", "", "clearCampaignState", "clearDynamicDeviceInfo", "clearEventId", "clearEventType", "clearImpressionOpportunityId", "clearSessionCounters", "clearSid", "clearStaticDeviceInfo", "clearTrackingToken", "hasCampaignState", "", "hasDynamicDeviceInfo", "hasSessionCounters", "hasStaticDeviceInfo", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class e0 {
    public static final a a = new a(null);
    private final OperativeEventRequestOuterClass.OperativeEventRequest.a b;

    /* JADX INFO: compiled from: OperativeEventRequestKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/OperativeEventRequestKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/OperativeEventRequestKt$Dsl;", "builder", "Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ e0 a(OperativeEventRequestOuterClass.OperativeEventRequest.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new e0(builder, null);
        }
    }

    private e0(OperativeEventRequestOuterClass.OperativeEventRequest.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ e0(OperativeEventRequestOuterClass.OperativeEventRequest.a aVar, kotlin.jvm.internal.n nVar) {
        this(aVar);
    }

    public final /* synthetic */ OperativeEventRequestOuterClass.OperativeEventRequest a() {
        OperativeEventRequestOuterClass.OperativeEventRequest operativeEventRequestBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(operativeEventRequestBuild, "_builder.build()");
        return operativeEventRequestBuild;
    }

    public final void b(ByteString value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.b(value);
    }

    public final void c(CampaignStateOuterClass.CampaignState value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.d(value);
    }

    public final void d(DynamicDeviceInfoOuterClass.DynamicDeviceInfo value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.e(value);
    }

    public final void e(ByteString value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.f(value);
    }

    public final void f(OperativeEventRequestOuterClass.OperativeEventType value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.g(value);
    }

    public final void g(ByteString value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.h(value);
    }

    public final void h(SessionCountersOuterClass.SessionCounters value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.i(value);
    }

    public final void i(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.j(value);
    }

    public final void j(StaticDeviceInfoOuterClass.StaticDeviceInfo value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.k(value);
    }

    public final void k(ByteString value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.l(value);
    }
}
