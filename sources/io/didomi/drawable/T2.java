package io.didomi.drawable;

import android.content.Context;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J'\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0017¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000b\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0004H\u0017¢\u0006\u0004\b\u000b\u0010\u000eJ\u0017\u0010\u000b\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0017¢\u0006\u0004\b\u000b\u0010\u0012J1\u0010\u000b\u001a\u00020\u00172\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u00112\b\b\u0001\u0010\u0016\u001a\u00020\u0015H\u0017¢\u0006\u0004\b\u000b\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u0004H\u0017¢\u0006\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lio/didomi/sdk/T2;", "", "<init>", "()V", "Landroid/content/Context;", "context", "Lio/didomi/sdk/DidomiInitializeParameters;", "parameters", "Lio/didomi/sdk/z3;", "localPropertiesRepository", "Lio/didomi/sdk/Z;", "a", "(Landroid/content/Context;Lio/didomi/sdk/DidomiInitializeParameters;Lio/didomi/sdk/z3;)Lio/didomi/sdk/Z;", "Lio/didomi/sdk/J;", "(Landroid/content/Context;)Lio/didomi/sdk/J;", "Lio/didomi/sdk/F8;", "userAgentRepository", "Lio/didomi/sdk/Z2;", "(Lio/didomi/sdk/F8;)Lio/didomi/sdk/Z2;", "connectivityHelper", "httpRequestHelper", "Lkotlinx/coroutines/CoroutineDispatcher;", "coroutineDispatcher", "Lio/didomi/sdk/l5;", "(Landroid/content/Context;Lio/didomi/sdk/J;Lio/didomi/sdk/Z2;Lkotlinx/coroutines/CoroutineDispatcher;)Lio/didomi/sdk/l5;", "Lio/didomi/sdk/s5;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Landroid/content/Context;)Lio/didomi/sdk/s5;", "android_release"}, mv = {1, 8, 0})
public class T2 {
    public J a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new J(context);
    }

    public Z2 a(F8 userAgentRepository) {
        Intrinsics.checkNotNullParameter(userAgentRepository, "userAgentRepository");
        return new Z2(userAgentRepository);
    }

    public Z a(Context context, DidomiInitializeParameters parameters, C1960z3 localPropertiesRepository) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        Intrinsics.checkNotNullParameter(localPropertiesRepository, "localPropertiesRepository");
        return new Z(context, parameters, localPropertiesRepository);
    }

    public C1822l5 a(Context context, J connectivityHelper, Z2 httpRequestHelper, CoroutineDispatcher coroutineDispatcher) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(connectivityHelper, "connectivityHelper");
        Intrinsics.checkNotNullParameter(httpRequestHelper, "httpRequestHelper");
        Intrinsics.checkNotNullParameter(coroutineDispatcher, "coroutineDispatcher");
        return new C1822l5(context, connectivityHelper, httpRequestHelper, coroutineDispatcher);
    }

    public C1892s5 b(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new C1892s5(context);
    }
}
