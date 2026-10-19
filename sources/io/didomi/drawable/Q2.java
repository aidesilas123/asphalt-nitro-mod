package io.didomi.drawable;

import android.content.SharedPreferences;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import io.didomi.drawable.consent.model.ConsentStatus;
import io.didomi.drawable.models.AdditionalConsent;
import io.didomi.drawable.models.GoogleConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00172\u00020\u0001:\u0001\rB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\r\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000f\u001a\u00020\b¢\u0006\u0004\b\r\u0010\u0011R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u0012R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, d2 = {"Lio/didomi/sdk/Q2;", "", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/V8;", "vendorRepository", "<init>", "(Lio/didomi/sdk/H;Lio/didomi/sdk/V8;)V", "Landroid/content/SharedPreferences;", "preferences", "Lio/didomi/sdk/V;", "consentRepository", "", "a", "(Landroid/content/SharedPreferences;Lio/didomi/sdk/V;)V", "sharedPreferences", "", "(Landroid/content/SharedPreferences;)Ljava/lang/String;", "Lio/didomi/sdk/V8;", "Lio/didomi/sdk/models/GoogleConfig;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/models/GoogleConfig;", "googleConfig", "c", "android_release"}, mv = {1, 8, 0})
public final class Q2 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final V8 vendorRepository;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final GoogleConfig googleConfig;

    public Q2(H configurationRepository, V8 vendorRepository) {
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(vendorRepository, "vendorRepository");
        this.vendorRepository = vendorRepository;
        this.googleConfig = configurationRepository.b().a().m().c();
    }

    public final String a(SharedPreferences sharedPreferences) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
        return sharedPreferences.getString("IABTCF_AddtlConsent", null);
    }

    public final void a(SharedPreferences preferences, V consentRepository) {
        GoogleConfig googleConfig;
        AdditionalConsent additionalConsent;
        Intrinsics.checkNotNullParameter(preferences, "preferences");
        Intrinsics.checkNotNullParameter(consentRepository, "consentRepository");
        if (!W8.a(this.vendorRepository) || (googleConfig = this.googleConfig) == null || (additionalConsent = googleConfig.getAdditionalConsent()) == null) {
            return;
        }
        String positive = consentRepository.b(AndroidStaticDeviceInfoDataSource.STORE_GOOGLE) == ConsentStatus.ENABLE ? additionalConsent.getPositive() : additionalConsent.getNegative();
        if (positive == null) {
            return;
        }
        preferences.edit().putString("IABTCF_AddtlConsent", positive).apply();
    }
}
