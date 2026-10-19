package io.didomi.drawable;

import android.content.Context;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.C1817l0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J=\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0011\u0010\u0012R$\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00138\u0006@BX\u0086.¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0011\u0010\u0017R$\u0010 \u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR$\u0010(\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R$\u00100\u001a\u0004\u0018\u00010)8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R$\u00108\u001a\u0004\u0018\u0001018\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107¨\u00069"}, d2 = {"Lio/didomi/sdk/K0;", "", "<init>", "()V", "Landroid/content/Context;", "context", "Lio/didomi/sdk/M2;", "eventsRepository", "Lio/didomi/sdk/F8;", "userAgentRepository", "Lio/didomi/sdk/P3;", "organizationUserRepository", "Lio/didomi/sdk/z3;", "localPropertiesRepository", "Lio/didomi/sdk/DidomiInitializeParameters;", "parameters", "", "a", "(Landroid/content/Context;Lio/didomi/sdk/M2;Lio/didomi/sdk/F8;Lio/didomi/sdk/P3;Lio/didomi/sdk/z3;Lio/didomi/sdk/DidomiInitializeParameters;)V", "Lio/didomi/sdk/J0;", "<set-?>", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/J0;", "()Lio/didomi/sdk/J0;", "component", "Lio/didomi/sdk/F;", "c", "Lio/didomi/sdk/F;", "getConfigurationModule", "()Lio/didomi/sdk/F;", "setConfigurationModule", "(Lio/didomi/sdk/F;)V", "configurationModule", "Lio/didomi/sdk/L;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lio/didomi/sdk/L;", "getConsentModule", "()Lio/didomi/sdk/L;", "setConsentModule", "(Lio/didomi/sdk/L;)V", "consentModule", "Lio/didomi/sdk/T2;", "e", "Lio/didomi/sdk/T2;", "getHelperModule", "()Lio/didomi/sdk/T2;", "setHelperModule", "(Lio/didomi/sdk/T2;)V", "helperModule", "Lio/didomi/sdk/m5;", InneractiveMediationDefs.GENDER_FEMALE, "Lio/didomi/sdk/m5;", "getRepositoryModule", "()Lio/didomi/sdk/m5;", "setRepositoryModule", "(Lio/didomi/sdk/m5;)V", "repositoryModule", "android_release"}, mv = {1, 8, 0})
public final class K0 {
    public static final K0 a = new K0();

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private static J0 component;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private static F configurationModule;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private static L consentModule;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private static T2 helperModule;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private static C1832m5 repositoryModule;

    private K0() {
    }

    public final J0 a() {
        J0 j0 = component;
        if (j0 != null) {
            return j0;
        }
        Intrinsics.throwUninitializedPropertyAccessException("component");
        return null;
    }

    public final void a(Context context, M2 eventsRepository, F8 userAgentRepository, P3 organizationUserRepository, C1960z3 localPropertiesRepository, DidomiInitializeParameters parameters) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(eventsRepository, "eventsRepository");
        Intrinsics.checkNotNullParameter(userAgentRepository, "userAgentRepository");
        Intrinsics.checkNotNullParameter(organizationUserRepository, "organizationUserRepository");
        Intrinsics.checkNotNullParameter(localPropertiesRepository, "localPropertiesRepository");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        C1817l0.b bVarA = C1817l0.a().a(new C1766g()).a(new C1717b0(context)).a(new K2(eventsRepository)).a(new Q3(parameters, userAgentRepository, organizationUserRepository, localPropertiesRepository));
        Intrinsics.checkNotNullExpressionValue(bVarA, "builder()\n            .a…calPropertiesRepository))");
        F f2 = configurationModule;
        if (f2 != null) {
            bVarA.a(f2);
        }
        L l = consentModule;
        if (l != null) {
            bVarA.a(l);
        }
        T2 t2 = helperModule;
        if (t2 != null) {
            bVarA.a(t2);
        }
        C1832m5 c1832m5 = repositoryModule;
        if (c1832m5 != null) {
            bVarA.a(c1832m5);
        }
        J0 j0A = bVarA.a();
        Intrinsics.checkNotNullExpressionValue(j0A, "builder.build()");
        component = j0A;
    }
}
