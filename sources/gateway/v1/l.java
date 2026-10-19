package gateway.v1;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.protobuf.kotlin.DslList;
import gateway.v1.DeveloperConsentOuterClass;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DeveloperConsentKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u001c\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0004\b\u0007\u0018\u0000 \u001e2\u00020\u0001:\u0002\u001e\u001fB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000b\u001a\u00020\fH\u0001J%\u0010\r\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\u0006\u0010\u000f\u001a\u00020\u0007H\u0007¢\u0006\u0002\b\u0010J+\u0010\u0011\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00070\u0013H\u0007¢\u0006\u0002\b\u0014J\u001d\u0010\u0015\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006H\u0007¢\u0006\u0002\b\u0016J&\u0010\u0017\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\u0006\u0010\u000f\u001a\u00020\u0007H\u0087\n¢\u0006\u0002\b\u0018J,\u0010\u0017\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00070\u0013H\u0087\n¢\u0006\u0002\b\u0019J.\u0010\u001a\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u000f\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0002\b\u001dR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00068F¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006 "}, d2 = {"Lgateway/v1/DeveloperConsentKt$Dsl;", "", "_builder", "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;", "(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;)V", SDKConstants.PARAM_GAME_REQUESTS_OPTIONS, "Lcom/google/protobuf/kotlin/DslList;", "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;", "Lgateway/v1/DeveloperConsentKt$Dsl$OptionsProxy;", "getOptions", "()Lcom/google/protobuf/kotlin/DslList;", "_build", "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;", "add", "", "value", "addOptions", "addAll", "values", "", "addAllOptions", "clear", "clearOptions", "plusAssign", "plusAssignOptions", "plusAssignAllOptions", "set", "index", "", "setOptions", "Companion", "OptionsProxy", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class l {
    public static final a a = new a(null);
    private final DeveloperConsentOuterClass.DeveloperConsent.a b;

    /* JADX INFO: compiled from: DeveloperConsentKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/DeveloperConsentKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/DeveloperConsentKt$Dsl;", "builder", "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ l a(DeveloperConsentOuterClass.DeveloperConsent.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new l(builder, null);
        }
    }

    private l(DeveloperConsentOuterClass.DeveloperConsent.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ l(DeveloperConsentOuterClass.DeveloperConsent.a aVar, kotlin.jvm.internal.n nVar) {
        this(aVar);
    }

    public final /* synthetic */ DeveloperConsentOuterClass.DeveloperConsent a() {
        DeveloperConsentOuterClass.DeveloperConsent developerConsentBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(developerConsentBuild, "_builder.build()");
        return developerConsentBuild;
    }

    public final /* synthetic */ void b(DslList dslList, Iterable values) {
        Intrinsics.checkNotNullParameter(dslList, "<this>");
        Intrinsics.checkNotNullParameter(values, "values");
        this.b.b(values);
    }

    public final /* synthetic */ DslList c() {
        List<DeveloperConsentOuterClass.DeveloperConsentOption> optionsList = this.b.getOptionsList();
        Intrinsics.checkNotNullExpressionValue(optionsList, "_builder.getOptionsList()");
        return new DslList(optionsList);
    }
}
