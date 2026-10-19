package io.didomi.drawable;

import android.content.SharedPreferences;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridge;
import io.didomi.drawable.InterfaceC1780h3;
import io.didomi.drawable.consent.model.ConsentToken;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003JE\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0012\u0010\u0014R\u001a\u0010\u001a\u001a\u00020\u00158\u0016X\u0096D¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, d2 = {"Lio/didomi/sdk/E3;", "Lio/didomi/sdk/h3;", "<init>", "()V", "Landroid/content/SharedPreferences;", "sharedPreferences", "Lio/didomi/sdk/consent/model/ConsentToken;", "consentToken", "Lio/didomi/sdk/k;", "appConfiguration", "Lio/didomi/sdk/d3;", "vendorList", "", "Lio/didomi/sdk/k4;", "publisherRestrictions", "", "languageCode", "", "a", "(Landroid/content/SharedPreferences;Lio/didomi/sdk/consent/model/ConsentToken;Lio/didomi/sdk/k;Lio/didomi/sdk/d3;Ljava/util/List;Ljava/lang/String;)V", "(Landroid/content/SharedPreferences;)Ljava/lang/String;", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", MobileAdsBridge.versionMethodName, "()I", "version", "android_release"}, mv = {1, 8, 0})
public final class E3 implements InterfaceC1780h3 {

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final int version = 1;

    @Override // io.didomi.drawable.InterfaceC1780h3
    public String a(SharedPreferences sharedPreferences) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
        return null;
    }

    @Override // io.didomi.drawable.InterfaceC1780h3
    public void a(SharedPreferences sharedPreferences, ConsentToken consentToken, C1806k appConfiguration, InterfaceC1740d3 vendorList, List<PublisherRestriction> publisherRestrictions, String languageCode) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
        Intrinsics.checkNotNullParameter(consentToken, "consentToken");
        Intrinsics.checkNotNullParameter(appConfiguration, "appConfiguration");
        Intrinsics.checkNotNullParameter(vendorList, "vendorList");
        Intrinsics.checkNotNullParameter(publisherRestrictions, "publisherRestrictions");
        Intrinsics.checkNotNullParameter(languageCode, "languageCode");
        InterfaceC1780h3.a.a(appConfiguration, sharedPreferences, vendorList);
    }

    @Override // io.didomi.drawable.InterfaceC1780h3
    public void a(SharedPreferences sharedPreferences, boolean z) {
        InterfaceC1780h3.b.a(this, sharedPreferences, z);
    }

    @Override // io.didomi.drawable.InterfaceC1780h3
    public void a(H h, SharedPreferences sharedPreferences) {
        InterfaceC1780h3.b.a(this, h, sharedPreferences);
    }

    @Override // io.didomi.drawable.InterfaceC1780h3
    public void b(SharedPreferences sharedPreferences) {
        InterfaceC1780h3.b.a(this, sharedPreferences);
    }

    @Override // io.didomi.drawable.InterfaceC1780h3
    public int getVersion() {
        return this.version;
    }
}
