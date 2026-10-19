package io.didomi.drawable;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J7\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0017¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lio/didomi/sdk/F;", "", "<init>", "()V", "Landroid/content/Context;", "context", "Lio/didomi/sdk/Z;", "contextHelper", "Lio/didomi/sdk/z3;", "localPropertiesRepository", "Lio/didomi/sdk/DidomiInitializeParameters;", "parameters", "Lio/didomi/sdk/l5;", "remoteFilesHelper", "Lio/didomi/sdk/H;", "a", "(Landroid/content/Context;Lio/didomi/sdk/Z;Lio/didomi/sdk/z3;Lio/didomi/sdk/DidomiInitializeParameters;Lio/didomi/sdk/l5;)Lio/didomi/sdk/H;", "android_release"}, mv = {1, 8, 0})
public class F {
    public H a(Context context, Z contextHelper, C1960z3 localPropertiesRepository, DidomiInitializeParameters parameters, C1822l5 remoteFilesHelper) throws Exception {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(contextHelper, "contextHelper");
        Intrinsics.checkNotNullParameter(localPropertiesRepository, "localPropertiesRepository");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        Intrinsics.checkNotNullParameter(remoteFilesHelper, "remoteFilesHelper");
        H h = new H(remoteFilesHelper, contextHelper, localPropertiesRepository, parameters);
        h.a(context);
        return h;
    }
}
