package gateway.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.Timestamp;
import gateway.v1.DeveloperConsentOuterClass;
import gateway.v1.PiiOuterClass;
import gateway.v1.TimestampsOuterClass;
import gateway.v1.UniversalRequestOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UniversalRequestKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\n\b\u0007\u0018\u0000 U2\u00020\u0001:\u0001UB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010?\u001a\u00020@H\u0001J\u0006\u0010A\u001a\u00020BJ\u0006\u0010C\u001a\u00020BJ\u0006\u0010D\u001a\u00020BJ\u0006\u0010E\u001a\u00020BJ\u0006\u0010F\u001a\u00020BJ\u0006\u0010G\u001a\u00020BJ\u0006\u0010H\u001a\u00020BJ\u0006\u0010I\u001a\u00020BJ\u0006\u0010J\u001a\u00020BJ\u0006\u0010K\u001a\u00020LJ\u0006\u0010M\u001a\u00020LJ\u0006\u0010N\u001a\u00020LJ\u0006\u0010O\u001a\u00020LJ\u0006\u0010P\u001a\u00020LJ\u0006\u0010Q\u001a\u00020LJ\u0006\u0010R\u001a\u00020LJ\u0006\u0010S\u001a\u00020LJ\u0006\u0010T\u001a\u00020LR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R$\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR$\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001f\u0010\t\"\u0004\b \u0010\u000bR$\u0010!\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\"\u0010\u000f\"\u0004\b#\u0010\u0011R$\u0010%\u001a\u00020$2\u0006\u0010\u0005\u001a\u00020$8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R$\u0010+\u001a\u00020*2\u0006\u0010\u0005\u001a\u00020*8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R$\u00101\u001a\u0002002\u0006\u0010\u0005\u001a\u0002008G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\u0017\u00106\u001a\u0004\u0018\u00010\u0012*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b7\u00108R\u0017\u00109\u001a\u0004\u0018\u00010\u0018*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b:\u0010;R\u0017\u0010<\u001a\u0004\u0018\u00010$*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b=\u0010>¨\u0006V"}, d2 = {"Lgateway/v1/UniversalRequestKt$SharedDataKt$Dsl;", "", "_builder", "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$Builder;", "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$Builder;)V", "value", "Lcom/google/protobuf/Timestamp;", "appStartTime", "getAppStartTime", "()Lcom/google/protobuf/Timestamp;", "setAppStartTime", "(Lcom/google/protobuf/Timestamp;)V", "Lcom/google/protobuf/ByteString;", "currentState", "getCurrentState", "()Lcom/google/protobuf/ByteString;", "setCurrentState", "(Lcom/google/protobuf/ByteString;)V", "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;", "developerConsent", "getDeveloperConsent", "()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;", "setDeveloperConsent", "(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;)V", "Lgateway/v1/PiiOuterClass$Pii;", "pii", "getPii", "()Lgateway/v1/PiiOuterClass$Pii;", "setPii", "(Lgateway/v1/PiiOuterClass$Pii;)V", "sdkStartTime", "getSdkStartTime", "setSdkStartTime", "sessionToken", "getSessionToken", "setSessionToken", "Lgateway/v1/TestDataOuterClass$TestData;", "testData", "getTestData", "()Lgateway/v1/TestDataOuterClass$TestData;", "setTestData", "(Lgateway/v1/TestDataOuterClass$TestData;)V", "Lgateway/v1/TimestampsOuterClass$Timestamps;", "timestamps", "getTimestamps", "()Lgateway/v1/TimestampsOuterClass$Timestamps;", "setTimestamps", "(Lgateway/v1/TimestampsOuterClass$Timestamps;)V", "", "webviewVersion", "getWebviewVersion", "()I", "setWebviewVersion", "(I)V", "developerConsentOrNull", "getDeveloperConsentOrNull", "(Lgateway/v1/UniversalRequestKt$SharedDataKt$Dsl;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;", "piiOrNull", "getPiiOrNull", "(Lgateway/v1/UniversalRequestKt$SharedDataKt$Dsl;)Lgateway/v1/PiiOuterClass$Pii;", "testDataOrNull", "getTestDataOrNull", "(Lgateway/v1/UniversalRequestKt$SharedDataKt$Dsl;)Lgateway/v1/TestDataOuterClass$TestData;", "_build", "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;", "clearAppStartTime", "", "clearCurrentState", "clearDeveloperConsent", "clearPii", "clearSdkStartTime", "clearSessionToken", "clearTestData", "clearTimestamps", "clearWebviewVersion", "hasAppStartTime", "", "hasCurrentState", "hasDeveloperConsent", "hasPii", "hasSdkStartTime", "hasSessionToken", "hasTestData", "hasTimestamps", "hasWebviewVersion", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class u0 {
    public static final a a = new a(null);
    private final UniversalRequestOuterClass.UniversalRequest.SharedData.a b;

    /* JADX INFO: compiled from: UniversalRequestKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/UniversalRequestKt$SharedDataKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/UniversalRequestKt$SharedDataKt$Dsl;", "builder", "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ u0 a(UniversalRequestOuterClass.UniversalRequest.SharedData.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new u0(builder, null);
        }
    }

    private u0(UniversalRequestOuterClass.UniversalRequest.SharedData.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ u0(UniversalRequestOuterClass.UniversalRequest.SharedData.a aVar, kotlin.jvm.internal.n nVar) {
        this(aVar);
    }

    public final /* synthetic */ UniversalRequestOuterClass.UniversalRequest.SharedData a() {
        UniversalRequestOuterClass.UniversalRequest.SharedData sharedDataBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(sharedDataBuild, "_builder.build()");
        return sharedDataBuild;
    }

    public final void b(Timestamp value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.b(value);
    }

    public final void c(DeveloperConsentOuterClass.DeveloperConsent value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.d(value);
    }

    public final void d(PiiOuterClass.Pii value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.e(value);
    }

    public final void e(Timestamp value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.f(value);
    }

    public final void f(ByteString value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.g(value);
    }

    public final void g(TimestampsOuterClass.Timestamps value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.h(value);
    }
}
