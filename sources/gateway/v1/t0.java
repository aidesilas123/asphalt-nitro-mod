package gateway.v1;

import gateway.v1.AdDataRefreshRequestOuterClass;
import gateway.v1.AdRequestOuterClass;
import gateway.v1.DiagnosticEventRequestOuterClass;
import gateway.v1.InitializationCompletedEventRequestOuterClass;
import gateway.v1.InitializationRequestOuterClass;
import gateway.v1.OperativeEventRequestOuterClass;
import gateway.v1.PrivacyUpdateRequestOuterClass;
import gateway.v1.UniversalRequestOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UniversalRequestKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\n\b\u0007\u0018\u0000 W2\u00020\u0001:\u0001WB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010@\u001a\u00020AH\u0001J\u0006\u0010B\u001a\u00020CJ\u0006\u0010D\u001a\u00020CJ\u0006\u0010E\u001a\u00020CJ\u0006\u0010F\u001a\u00020CJ\u0006\u0010G\u001a\u00020CJ\u0006\u0010H\u001a\u00020CJ\u0006\u0010I\u001a\u00020CJ\u0006\u0010J\u001a\u00020CJ\u0006\u0010K\u001a\u00020CJ\u0006\u0010L\u001a\u00020CJ\u0006\u0010M\u001a\u00020NJ\u0006\u0010O\u001a\u00020NJ\u0006\u0010P\u001a\u00020NJ\u0006\u0010Q\u001a\u00020NJ\u0006\u0010R\u001a\u00020NJ\u0006\u0010S\u001a\u00020NJ\u0006\u0010T\u001a\u00020NJ\u0006\u0010U\u001a\u00020NJ\u0006\u0010V\u001a\u00020NR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R$\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR$\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u001e8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R$\u0010%\u001a\u00020$2\u0006\u0010\u0005\u001a\u00020$8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R$\u0010+\u001a\u00020*2\u0006\u0010\u0005\u001a\u00020*8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R$\u00101\u001a\u0002002\u0006\u0010\u0005\u001a\u0002008G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b2\u00103\"\u0004\b4\u00105R$\u00107\u001a\u0002062\u0006\u0010\u0005\u001a\u0002068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\u0011\u0010<\u001a\u00020=8G¢\u0006\u0006\u001a\u0004\b>\u0010?¨\u0006X"}, d2 = {"Lgateway/v1/UniversalRequestKt$PayloadKt$Dsl;", "", "_builder", "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;", "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;)V", "value", "Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;", "adDataRefreshRequest", "getAdDataRefreshRequest", "()Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;", "setAdDataRefreshRequest", "(Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;)V", "Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;", "adPlayerConfigRequest", "getAdPlayerConfigRequest", "()Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;", "setAdPlayerConfigRequest", "(Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;)V", "Lgateway/v1/AdRequestOuterClass$AdRequest;", "adRequest", "getAdRequest", "()Lgateway/v1/AdRequestOuterClass$AdRequest;", "setAdRequest", "(Lgateway/v1/AdRequestOuterClass$AdRequest;)V", "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;", "diagnosticEventRequest", "getDiagnosticEventRequest", "()Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;", "setDiagnosticEventRequest", "(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;)V", "Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;", "getTokenEventRequest", "getGetTokenEventRequest", "()Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;", "setGetTokenEventRequest", "(Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;)V", "Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;", "initializationCompletedEventRequest", "getInitializationCompletedEventRequest", "()Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;", "setInitializationCompletedEventRequest", "(Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;)V", "Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;", "initializationRequest", "getInitializationRequest", "()Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;", "setInitializationRequest", "(Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;)V", "Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;", "operativeEvent", "getOperativeEvent", "()Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;", "setOperativeEvent", "(Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;)V", "Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;", "privacyUpdateRequest", "getPrivacyUpdateRequest", "()Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;", "setPrivacyUpdateRequest", "(Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;)V", "valueCase", "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;", "getValueCase", "()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;", "_build", "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;", "clearAdDataRefreshRequest", "", "clearAdPlayerConfigRequest", "clearAdRequest", "clearDiagnosticEventRequest", "clearGetTokenEventRequest", "clearInitializationCompletedEventRequest", "clearInitializationRequest", "clearOperativeEvent", "clearPrivacyUpdateRequest", "clearValue", "hasAdDataRefreshRequest", "", "hasAdPlayerConfigRequest", "hasAdRequest", "hasDiagnosticEventRequest", "hasGetTokenEventRequest", "hasInitializationCompletedEventRequest", "hasInitializationRequest", "hasOperativeEvent", "hasPrivacyUpdateRequest", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class t0 {
    public static final a a = new a(null);
    private final UniversalRequestOuterClass.UniversalRequest.Payload.a b;

    /* JADX INFO: compiled from: UniversalRequestKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/UniversalRequestKt$PayloadKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/UniversalRequestKt$PayloadKt$Dsl;", "builder", "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ t0 a(UniversalRequestOuterClass.UniversalRequest.Payload.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new t0(builder, null);
        }
    }

    private t0(UniversalRequestOuterClass.UniversalRequest.Payload.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ t0(UniversalRequestOuterClass.UniversalRequest.Payload.a aVar, kotlin.jvm.internal.n nVar) {
        this(aVar);
    }

    public final /* synthetic */ UniversalRequestOuterClass.UniversalRequest.Payload a() {
        UniversalRequestOuterClass.UniversalRequest.Payload payloadBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(payloadBuild, "_builder.build()");
        return payloadBuild;
    }

    public final void b(AdDataRefreshRequestOuterClass.AdDataRefreshRequest value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.b(value);
    }

    public final void c(AdRequestOuterClass.AdRequest value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.d(value);
    }

    public final void d(DiagnosticEventRequestOuterClass.DiagnosticEventRequest value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.e(value);
    }

    public final void e(InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequest value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.f(value);
    }

    public final void f(InitializationRequestOuterClass.InitializationRequest value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.g(value);
    }

    public final void g(OperativeEventRequestOuterClass.OperativeEventRequest value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.h(value);
    }

    public final void h(PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.i(value);
    }
}
