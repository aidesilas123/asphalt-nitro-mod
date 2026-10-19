package io.didomi.drawable;

import android.content.Context;
import android.content.SharedPreferences;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J?\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0017¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0011\u001a\u00020\u00152\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0013H\u0017¢\u0006\u0004\b\u0011\u0010\u0016¨\u0006\u0017"}, d2 = {"Lio/didomi/sdk/L;", "", "<init>", "()V", "Landroid/content/SharedPreferences;", "sharedPreferences", "Lio/didomi/sdk/V8;", "vendorRepository", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/j0;", "dcsRepository", "Lio/didomi/sdk/h3;", "iabStorageRepository", "Lio/didomi/sdk/v3;", "languagesHelper", "Lio/didomi/sdk/V;", "a", "(Landroid/content/SharedPreferences;Lio/didomi/sdk/V8;Lio/didomi/sdk/H;Lio/didomi/sdk/j0;Lio/didomi/sdk/h3;Lio/didomi/sdk/v3;)Lio/didomi/sdk/V;", "Landroid/content/Context;", "context", "Lio/didomi/sdk/s3;", "(Lio/didomi/sdk/H;Landroid/content/Context;)Lio/didomi/sdk/s3;", "android_release"}, mv = {1, 8, 0})
public class L {
    public V a(SharedPreferences sharedPreferences, V8 vendorRepository, H configurationRepository, C1797j0 dcsRepository, InterfaceC1780h3 iabStorageRepository, C1920v3 languagesHelper) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
        Intrinsics.checkNotNullParameter(vendorRepository, "vendorRepository");
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(dcsRepository, "dcsRepository");
        Intrinsics.checkNotNullParameter(iabStorageRepository, "iabStorageRepository");
        Intrinsics.checkNotNullParameter(languagesHelper, "languagesHelper");
        return new V(sharedPreferences, vendorRepository, configurationRepository, dcsRepository, iabStorageRepository, languagesHelper);
    }

    public InterfaceC1890s3 a(H configurationRepository, Context context) {
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(context, "context");
        return configurationRepository.b().b().a() ? new C1782h5() : new J2(false);
    }
}
