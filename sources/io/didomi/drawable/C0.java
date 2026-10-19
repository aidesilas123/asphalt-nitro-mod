package io.didomi.drawable;

import androidx.lifecycle.ViewModel;
import com.facebook.internal.AnalyticsEvents;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.b4;
import com.json.o2;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import io.didomi.drawable.models.DeviceStorageDisclosure;
import io.didomi.drawable.models.DeviceStorageDisclosures;
import io.didomi.drawable.models.InternalPurpose;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.p;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b*\b\u0017\u0018\u00002\u00020\u0001B)\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u001d\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0011\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0011\u0010\u0016J\u0019\u0010\u0011\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0017\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0011\u0010\u0018J\u0017\u0010\u0019\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0017\u001a\u00020\u0015¢\u0006\u0004\b\u0019\u0010\u0018J\u0017\u0010\u001a\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0017\u001a\u00020\u0015¢\u0006\u0004\b\u001a\u0010\u0018J\u0017\u0010\u001b\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0017\u001a\u00020\u0015¢\u0006\u0004\b\u001b\u0010\u0018J\u0017\u0010\u001c\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0017\u001a\u00020\u0015¢\u0006\u0004\b\u001c\u0010\u0018J\u0017\u0010\u001d\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u001d\u0010\u0018J\u0013\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001e¢\u0006\u0004\b\u001c\u0010 J\r\u0010!\u001a\u00020\u0010¢\u0006\u0004\b!\u0010\"J\r\u0010#\u001a\u00020\u0010¢\u0006\u0004\b#\u0010\"J\r\u0010\u0011\u001a\u00020$¢\u0006\u0004\b\u0011\u0010%J\u001d\u0010'\u001a\b\u0012\u0004\u0012\u00020&0\u001e2\u0006\u0010\u0017\u001a\u00020\u0015H\u0004¢\u0006\u0004\b'\u0010(R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010)R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010*R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010+R\u0017\u0010\t\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u0019\u0010,\u001a\u0004\b-\u0010.R(\u00103\u001a\u0004\u0018\u00010\u00152\b\u0010/\u001a\u0004\u0018\u00010\u00158\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b'\u00100\u001a\u0004\b1\u00102R*\u00109\u001a\u00020\u00132\u0006\u00104\u001a\u00020\u00138\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u00105\u001a\u0004\b6\u00107\"\u0004\b\u001b\u00108R$\u0010\r\u001a\u00020\f2\u0006\u0010/\u001a\u00020\f8\u0006@BX\u0086.¢\u0006\f\n\u0004\b\u001a\u0010:\u001a\u0004\b;\u0010<R\"\u0010\u000f\u001a\u00020\u000e8\u0004@\u0004X\u0084.¢\u0006\u0012\n\u0004\b-\u0010=\u001a\u0004\b'\u0010>\"\u0004\b\u0011\u0010?R\u0011\u0010A\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b@\u0010<R\u0011\u0010B\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b\u0019\u0010<R\u0011\u0010D\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\bC\u0010<R\u0011\u0010F\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\bE\u0010<R\u0011\u0010G\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b\u001d\u0010<R\u0011\u0010H\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b\u001a\u0010<R\u0011\u0010J\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\bI\u0010<R\u0011\u0010L\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\bK\u0010<R\u0011\u0010N\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\bM\u0010<R\u0011\u0010O\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b\u001b\u0010<¨\u0006P"}, d2 = {"Lio/didomi/sdk/C0;", "Landroidx/lifecycle/ViewModel;", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/v3;", "languagesHelper", "Lio/didomi/sdk/V8;", "vendorRepository", "Lio/didomi/sdk/C3;", "logoProvider", "<init>", "(Lio/didomi/sdk/H;Lio/didomi/sdk/v3;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;)V", "", "vendorName", "Lio/didomi/sdk/models/DeviceStorageDisclosures;", "disclosures", "", "a", "(Ljava/lang/String;Lio/didomi/sdk/models/DeviceStorageDisclosures;)V", "", o2.h.L, "Lio/didomi/sdk/models/DeviceStorageDisclosure;", "(I)Lio/didomi/sdk/models/DeviceStorageDisclosure;", "disclosure", "(Lio/didomi/sdk/models/DeviceStorageDisclosure;)Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "g", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", InneractiveMediationDefs.GENDER_FEMALE, "", "Lio/didomi/sdk/y0;", "()Ljava/util/List;", "s", "()V", "r", "", "()Z", "Lio/didomi/sdk/models/InternalPurpose;", "e", "(Lio/didomi/sdk/models/DeviceStorageDisclosure;)Ljava/util/List;", "Lio/didomi/sdk/H;", "Lio/didomi/sdk/v3;", "Lio/didomi/sdk/V8;", "Lio/didomi/sdk/C3;", "h", "()Lio/didomi/sdk/C3;", "<set-?>", "Lio/didomi/sdk/models/DeviceStorageDisclosure;", InneractiveMediationDefs.GENDER_MALE, "()Lio/didomi/sdk/models/DeviceStorageDisclosure;", "selectedDisclosure", "value", "I", b4.p, "()I", "(I)V", "selectedIndex", "Ljava/lang/String;", CampaignEx.JSON_KEY_AD_Q, "()Ljava/lang/String;", "Lio/didomi/sdk/models/DeviceStorageDisclosures;", "()Lio/didomi/sdk/models/DeviceStorageDisclosures;", "(Lio/didomi/sdk/models/DeviceStorageDisclosures;)V", "o", "title", "disclosureDetailsTitle", "i", "nameSectionTitle", TtmlNode.TAG_P, "typeSectionTitle", "domainSectionTitle", "expirationSectionTitle", "l", "purposesSectionTitle", CampaignEx.JSON_KEY_AD_K, "previousButtonLabel", "j", "nextButtonLabel", "accessibilityCloseDescription", "android_release"}, mv = {1, 8, 0})
public class C0 extends ViewModel {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final H configurationRepository;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final C1920v3 languagesHelper;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final V8 vendorRepository;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final C3 logoProvider;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private DeviceStorageDisclosure selectedDisclosure;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private int selectedIndex;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private String vendorName;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata */
    protected DeviceStorageDisclosures disclosures;

    public C0(H configurationRepository, C1920v3 languagesHelper, V8 vendorRepository, C3 logoProvider) {
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(languagesHelper, "languagesHelper");
        Intrinsics.checkNotNullParameter(vendorRepository, "vendorRepository");
        Intrinsics.checkNotNullParameter(logoProvider, "logoProvider");
        this.configurationRepository = configurationRepository;
        this.languagesHelper = languagesHelper;
        this.vendorRepository = vendorRepository;
        this.logoProvider = logoProvider;
    }

    public final DeviceStorageDisclosure a(int position) {
        List<DeviceStorageDisclosure> disclosuresList = e().getDisclosuresList();
        if (disclosuresList != null) {
            return (DeviceStorageDisclosure) p.getOrNull(disclosuresList, position);
        }
        return null;
    }

    public String a(DeviceStorageDisclosure disclosure) {
        Intrinsics.checkNotNullParameter(disclosure, "disclosure");
        ArrayList arrayList = new ArrayList();
        String domain = disclosure.getDomain();
        if (domain != null && domain.length() > 0) {
            arrayList.add(domain);
        }
        Long maxAgeSeconds = disclosure.getMaxAgeSeconds();
        if (maxAgeSeconds != null) {
            if (maxAgeSeconds.longValue() <= 0) {
                maxAgeSeconds = null;
            }
            if (maxAgeSeconds != null) {
                arrayList.add(C1917v0.a(C1917v0.a, this.languagesHelper, maxAgeSeconds.longValue(), (String) null, false, 12, (Object) null));
            }
        }
        return CollectionsKt___CollectionsKt.joinToString$default(arrayList, null, null, null, 0, null, null, 63, null);
    }

    protected final void a(DeviceStorageDisclosures deviceStorageDisclosures) {
        Intrinsics.checkNotNullParameter(deviceStorageDisclosures, "<set-?>");
        this.disclosures = deviceStorageDisclosures;
    }

    public final void a(String vendorName, DeviceStorageDisclosures disclosures) {
        Intrinsics.checkNotNullParameter(vendorName, "vendorName");
        Intrinsics.checkNotNullParameter(disclosures, "disclosures");
        this.vendorName = vendorName;
        a(disclosures);
    }

    public final boolean a() {
        return this.selectedDisclosure != null;
    }

    public final String b() {
        return C1920v3.a(this.languagesHelper, "close", null, null, null, 14, null);
    }

    public final String b(DeviceStorageDisclosure disclosure) {
        Intrinsics.checkNotNullParameter(disclosure, "disclosure");
        return disclosure.getDomain();
    }

    public final void b(int i) {
        this.selectedDisclosure = a(i);
        this.selectedIndex = i;
    }

    public final String c(DeviceStorageDisclosure disclosure) {
        Intrinsics.checkNotNullParameter(disclosure, "disclosure");
        Long maxAgeSeconds = disclosure.getMaxAgeSeconds();
        if (maxAgeSeconds != null) {
            if (maxAgeSeconds.longValue() <= 0) {
                maxAgeSeconds = null;
            }
            if (maxAgeSeconds != null) {
                return C1920v3.a(this.languagesHelper, "period_after_data_is_stored", (W5) null, MapsKt__MapsJVMKt.mapOf(TuplesKt.to("{humanizedStorageDuration}", C1917v0.a.b(this.languagesHelper, maxAgeSeconds.longValue()))), 2, (Object) null);
            }
        }
        return null;
    }

    public final List<DeviceStorageDisclosureItem> c() {
        List<DeviceStorageDisclosure> disclosuresList = e().getDisclosuresList();
        if (disclosuresList == null) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(disclosuresList, 10));
        for (DeviceStorageDisclosure deviceStorageDisclosure : disclosuresList) {
            long jHashCode = deviceStorageDisclosure.hashCode();
            String identifier = deviceStorageDisclosure.getIdentifier();
            String str = "";
            if (identifier == null) {
                identifier = "";
            }
            String strA = a(deviceStorageDisclosure);
            if (strA != null) {
                str = strA;
            }
            arrayList.add(new DeviceStorageDisclosureItem(jHashCode, identifier, str));
        }
        return arrayList;
    }

    public final String d() {
        return C1920v3.a(this.languagesHelper, "vendors_data_storage", (W5) null, MapsKt__MapsJVMKt.mapOf(TuplesKt.to("{vendorName}", q())), 2, (Object) null);
    }

    public final String d(DeviceStorageDisclosure disclosure) {
        Intrinsics.checkNotNullParameter(disclosure, "disclosure");
        return disclosure.getIdentifier();
    }

    protected final DeviceStorageDisclosures e() {
        DeviceStorageDisclosures deviceStorageDisclosures = this.disclosures;
        if (deviceStorageDisclosures != null) {
            return deviceStorageDisclosures;
        }
        Intrinsics.throwUninitializedPropertyAccessException("disclosures");
        return null;
    }

    protected final List<InternalPurpose> e(DeviceStorageDisclosure disclosure) {
        Collection collectionEmptyList;
        Iterable iterableEmptyList;
        Intrinsics.checkNotNullParameter(disclosure, "disclosure");
        List<String> purposes = disclosure.getPurposes();
        if (purposes != null) {
            collectionEmptyList = new ArrayList();
            Iterator<T> it = purposes.iterator();
            while (it.hasNext()) {
                InternalPurpose internalPurposeD = this.vendorRepository.d((String) it.next());
                if (internalPurposeD != null) {
                    collectionEmptyList.add(internalPurposeD);
                }
            }
        } else {
            collectionEmptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        List<String> didomiPurposes = disclosure.getDidomiPurposes();
        if (didomiPurposes == null || (iterableEmptyList = this.vendorRepository.a(CollectionsKt___CollectionsKt.toSet(didomiPurposes))) == null) {
            iterableEmptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        return CollectionsKt___CollectionsKt.plus(collectionEmptyList, iterableEmptyList);
    }

    public final String f() {
        return C1920v3.a(this.languagesHelper, o2.i.C, (W5) null, (Map) null, 6, (Object) null);
    }

    public String f(DeviceStorageDisclosure disclosure) {
        Intrinsics.checkNotNullParameter(disclosure, "disclosure");
        return C1880r3.a.a(e(disclosure));
    }

    public final String g() {
        return C1920v3.a(this.languagesHelper, "expiration", (W5) null, (Map) null, 6, (Object) null);
    }

    public final String g(DeviceStorageDisclosure disclosure) {
        String str;
        String str2;
        Intrinsics.checkNotNullParameter(disclosure, "disclosure");
        String type = disclosure.getType();
        if (type == null) {
            str = null;
        } else {
            int iHashCode = type.hashCode();
            if (iHashCode == -1354757532) {
                if (type.equals("cookie")) {
                    str2 = "cookie_storage";
                    str = str2;
                }
                str = null;
            } else if (iHashCode != 96801) {
                if (iHashCode == 117588 && type.equals(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_WEB)) {
                    str2 = "web_storage";
                    str = str2;
                }
                str = null;
            } else {
                if (type.equals(MBridgeConstans.DYNAMIC_VIEW_WX_APP)) {
                    str2 = "app_storage";
                    str = str2;
                }
                str = null;
            }
        }
        if (str == null) {
            return null;
        }
        return C1920v3.a(this.languagesHelper, str, (W5) null, (Map) null, 6, (Object) null);
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public final C3 getLogoProvider() {
        return this.logoProvider;
    }

    public final String i() {
        return C1920v3.a(this.languagesHelper, "name", (W5) null, (Map) null, 6, (Object) null);
    }

    public final String j() {
        return C1920v3.a(this.languagesHelper, "next_storage", (W5) null, (Map) null, 6, (Object) null);
    }

    public final String k() {
        return C1920v3.a(this.languagesHelper, "previous_storage", (W5) null, (Map) null, 6, (Object) null);
    }

    public final String l() {
        return C1920v3.a(this.languagesHelper, "used_for_purposes", (W5) null, (Map) null, 6, (Object) null);
    }

    /* JADX INFO: renamed from: m, reason: from getter */
    public final DeviceStorageDisclosure getSelectedDisclosure() {
        return this.selectedDisclosure;
    }

    /* JADX INFO: renamed from: n, reason: from getter */
    public final int getSelectedIndex() {
        return this.selectedIndex;
    }

    public final String o() {
        return C1761f4.a.a(this.configurationRepository, this.languagesHelper);
    }

    public final String p() {
        return C1920v3.a(this.languagesHelper, "type", (W5) null, (Map) null, 6, (Object) null);
    }

    public final String q() {
        String str = this.vendorName;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("vendorName");
        return null;
    }

    public final void r() {
        b(this.selectedIndex + 1);
    }

    public final void s() {
        b(this.selectedIndex - 1);
    }
}
