package io.didomi.drawable;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\b\u0017\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0002H\u0011¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0006H\u0017¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H\u0017¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\bH\u0017¢\u0006\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0003\u001a\u00020\u00028\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0014R\u0014\u0010\u0005\u001a\u00020\u00048\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0015R\u0014\u0010\u0007\u001a\u00020\u00068\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u0016R\u0014\u0010\t\u001a\u00020\b8\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0017¨\u0006\u0018"}, d2 = {"Lio/didomi/sdk/Q3;", "", "Lio/didomi/sdk/DidomiInitializeParameters;", "parameters", "Lio/didomi/sdk/F8;", "userAgentRepository", "Lio/didomi/sdk/P3;", "organizationUserRepository", "Lio/didomi/sdk/z3;", "localPropertiesRepository", "<init>", "(Lio/didomi/sdk/DidomiInitializeParameters;Lio/didomi/sdk/F8;Lio/didomi/sdk/P3;Lio/didomi/sdk/z3;)V", "a", "()Lio/didomi/sdk/DidomiInitializeParameters;", "c", "()Lio/didomi/sdk/P3;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Lio/didomi/sdk/F8;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()Lio/didomi/sdk/z3;", "Lio/didomi/sdk/DidomiInitializeParameters;", "Lio/didomi/sdk/F8;", "Lio/didomi/sdk/P3;", "Lio/didomi/sdk/z3;", "android_release"}, mv = {1, 8, 0})
public class Q3 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final DidomiInitializeParameters parameters;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final F8 userAgentRepository;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final P3 organizationUserRepository;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final C1960z3 localPropertiesRepository;

    public Q3(DidomiInitializeParameters parameters, F8 userAgentRepository, P3 organizationUserRepository, C1960z3 localPropertiesRepository) {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        Intrinsics.checkNotNullParameter(userAgentRepository, "userAgentRepository");
        Intrinsics.checkNotNullParameter(organizationUserRepository, "organizationUserRepository");
        Intrinsics.checkNotNullParameter(localPropertiesRepository, "localPropertiesRepository");
        this.parameters = parameters;
        this.userAgentRepository = userAgentRepository;
        this.organizationUserRepository = organizationUserRepository;
        this.localPropertiesRepository = localPropertiesRepository;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public DidomiInitializeParameters getParameters() {
        return this.parameters;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public C1960z3 getLocalPropertiesRepository() {
        return this.localPropertiesRepository;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public P3 getOrganizationUserRepository() {
        return this.organizationUserRepository;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public F8 getUserAgentRepository() {
        return this.userAgentRepository;
    }
}
