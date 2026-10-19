package io.didomi.drawable;

import android.content.SharedPreferences;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridge;
import io.didomi.drawable.C1806k;
import io.didomi.drawable.consent.model.ConsentToken;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.h3, reason: case insensitive filesystem */
/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Metadata is missing: kotlin.Metadata.data1 must not be an empty array
    	at kotlin.metadata.jvm.internal.JvmExceptionUtilsKt.requireNotEmpty(JvmExceptionUtils.kt:12)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readKmClass$kotlin_metadata_jvm(JvmReadUtils.kt:27)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Class.<init>(KotlinClassMetadata.kt:95)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:50)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\bf\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006JE\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u0011\u001a\u00020\u0010H&¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0012\u0010\u0016J\u001f\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0012\u0010\u0019J\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0012\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u001b8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001d¨\u0006\u001f"}, d2 = {"Lio/didomi/sdk/h3;", "", "Landroid/content/SharedPreferences;", "sharedPreferences", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Landroid/content/SharedPreferences;)V", "Lio/didomi/sdk/consent/model/ConsentToken;", "consentToken", "Lio/didomi/sdk/k;", "appConfiguration", "Lio/didomi/sdk/d3;", "vendorList", "", "Lio/didomi/sdk/k4;", "publisherRestrictions", "", "languageCode", "a", "(Landroid/content/SharedPreferences;Lio/didomi/sdk/consent/model/ConsentToken;Lio/didomi/sdk/k;Lio/didomi/sdk/d3;Ljava/util/List;Ljava/lang/String;)V", "Lio/didomi/sdk/H;", "configurationRepository", "(Lio/didomi/sdk/H;Landroid/content/SharedPreferences;)V", "", "subjectToGDPR", "(Landroid/content/SharedPreferences;Z)V", "(Landroid/content/SharedPreferences;)Ljava/lang/String;", "", MobileAdsBridge.versionMethodName, "()I", "version", "android_release"}, mv = {1, 8, 0})
public interface InterfaceC1780h3 {
    public static final a a = a.a;

    /* JADX INFO: renamed from: io.didomi.sdk.h3$a */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J%\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u000b\u0010\u0011¨\u0006\u0012"}, d2 = {"Lio/didomi/sdk/h3$a;", "", "<init>", "()V", "Lio/didomi/sdk/k;", "appConfiguration", "Landroid/content/SharedPreferences;", "sharedPreferences", "Lio/didomi/sdk/d3;", "vendorList", "", "a", "(Lio/didomi/sdk/k;Landroid/content/SharedPreferences;Lio/didomi/sdk/d3;)V", "Landroid/content/SharedPreferences$Editor;", "sharedPreferencesEditor", "", "cmpId", "(Landroid/content/SharedPreferences$Editor;I)V", "android_release"}, mv = {1, 8, 0})
    public static final class a {
        static final /* synthetic */ a a = new a();

        private a() {
        }

        public final void a(SharedPreferences.Editor sharedPreferencesEditor, int cmpId) {
            Intrinsics.checkNotNullParameter(sharedPreferencesEditor, "sharedPreferencesEditor");
            sharedPreferencesEditor.putInt("IABTCF_CmpSdkID", cmpId);
            if (cmpId != 7) {
                sharedPreferencesEditor.putInt("Didomi_Custom_CMPID", cmpId);
            }
        }

        public final void a(C1806k appConfiguration, SharedPreferences sharedPreferences, InterfaceC1740d3 vendorList) {
            Intrinsics.checkNotNullParameter(appConfiguration, "appConfiguration");
            Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
            Intrinsics.checkNotNullParameter(vendorList, "vendorList");
            SharedPreferences.Editor editor = sharedPreferences.edit();
            Intrinsics.checkNotNullExpressionValue(editor, "editor");
            a(editor, C1816l.a(appConfiguration));
            C1806k.a.b.C0481a c0481aD = appConfiguration.a().m().d();
            if (c0481aD.b() && c0481aD.c()) {
                editor.putInt("IABTCF_PolicyVersion", vendorList.getTcfPolicyVersion());
            }
            editor.apply();
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.h3$b */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    public static final class b {
        public static void a(InterfaceC1780h3 interfaceC1780h3, SharedPreferences sharedPreferences) {
            Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
        }

        public static void a(InterfaceC1780h3 interfaceC1780h3, SharedPreferences sharedPreferences, boolean z) {
            Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
            sharedPreferences.edit().putInt("IABTCF_gdprApplies", 0).apply();
        }

        public static void a(InterfaceC1780h3 interfaceC1780h3, H configurationRepository, SharedPreferences sharedPreferences) {
            Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
            Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
            int iA = C1816l.a(configurationRepository.b());
            int i = sharedPreferences.getInt("IABTCF_CmpSdkID", -1);
            boolean z = i == -1 || !(i == iA || i == 7 || i == sharedPreferences.getInt("Didomi_Custom_CMPID", -1));
            boolean z2 = sharedPreferences.getInt("IABTCF_CmpSdkVersion", -1) != 1;
            SharedPreferences.Editor sharedPreferencesEditor = sharedPreferences.edit();
            if (z || z2) {
                if (z) {
                    a aVar = InterfaceC1780h3.a;
                    Intrinsics.checkNotNullExpressionValue(sharedPreferencesEditor, "sharedPreferencesEditor");
                    aVar.a(sharedPreferencesEditor, iA);
                }
                if (z2) {
                    sharedPreferencesEditor.putInt("IABTCF_CmpSdkVersion", 1);
                }
            }
            sharedPreferencesEditor.putBoolean("IABTCF_EnableAdvertiserConsentMode", configurationRepository.b().c().a().a().a());
            sharedPreferencesEditor.apply();
            interfaceC1780h3.b(sharedPreferences);
        }
    }

    String a(SharedPreferences sharedPreferences);

    void a(SharedPreferences sharedPreferences, ConsentToken consentToken, C1806k c1806k, InterfaceC1740d3 interfaceC1740d3, List<PublisherRestriction> list, String str);

    void a(SharedPreferences sharedPreferences, boolean z);

    void a(H h, SharedPreferences sharedPreferences);

    void b(SharedPreferences sharedPreferences);

    int getVersion();
}
