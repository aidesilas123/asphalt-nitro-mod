package gateway.v1;

import gateway.v1.DeveloperConsentOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DeveloperConsentOptionKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0007\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0017\u001a\u00020\u0018H\u0001J\u0006\u0010\u0019\u001a\u00020\u001aJ\u0006\u0010\u001b\u001a\u00020\u001aJ\u0006\u0010\u001c\u001a\u00020\u001aJ\u0006\u0010\u001d\u001a\u00020\u001eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0005\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006 "}, d2 = {"Lgateway/v1/DeveloperConsentOptionKt$Dsl;", "", "_builder", "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;", "(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;)V", "value", "", "customType", "getCustomType", "()Ljava/lang/String;", "setCustomType", "(Ljava/lang/String;)V", "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;", "type", "getType", "()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;", "setType", "(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;)V", "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;", "getValue", "()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;", "setValue", "(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;)V", "_build", "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;", "clearCustomType", "", "clearType", "clearValue", "hasCustomType", "", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class m {
    public static final a a = new a(null);
    private final DeveloperConsentOuterClass.DeveloperConsentOption.a b;

    /* JADX INFO: compiled from: DeveloperConsentOptionKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/DeveloperConsentOptionKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/DeveloperConsentOptionKt$Dsl;", "builder", "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ m a(DeveloperConsentOuterClass.DeveloperConsentOption.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new m(builder, null);
        }
    }

    private m(DeveloperConsentOuterClass.DeveloperConsentOption.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ m(DeveloperConsentOuterClass.DeveloperConsentOption.a aVar, kotlin.jvm.internal.n nVar) {
        this(aVar);
    }

    public final /* synthetic */ DeveloperConsentOuterClass.DeveloperConsentOption a() {
        DeveloperConsentOuterClass.DeveloperConsentOption developerConsentOptionBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(developerConsentOptionBuild, "_builder.build()");
        return developerConsentOptionBuild;
    }

    public final DeveloperConsentOuterClass.DeveloperConsentType b() {
        DeveloperConsentOuterClass.DeveloperConsentType developerConsentTypeB = this.b.b();
        Intrinsics.checkNotNullExpressionValue(developerConsentTypeB, "_builder.getType()");
        return developerConsentTypeB;
    }

    public final void c(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.d(value);
    }

    public final void d(DeveloperConsentOuterClass.DeveloperConsentType value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.e(value);
    }

    public final void e(DeveloperConsentOuterClass.DeveloperConsentChoice value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.f(value);
    }
}
