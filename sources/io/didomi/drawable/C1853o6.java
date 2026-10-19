package io.didomi.drawable;

import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.o2;
import io.didomi.drawable.V7;
import io.didomi.drawable.models.DeviceStorageDisclosure;
import io.didomi.drawable.models.InternalPurpose;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: renamed from: io.didomi.sdk.o6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B)\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0011\u0010\u0010J\u0015\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0012¢\u0006\u0004\b\u0013\u0010\u0014J#\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00180\u00122\u0006\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u000f\u0010\u0019R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0011\u0010\u001e\u001a\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001d¨\u0006\u001f"}, d2 = {"Lio/didomi/sdk/o6;", "Lio/didomi/sdk/C0;", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/v3;", "languagesHelper", "Lio/didomi/sdk/V8;", "vendorRepository", "Lio/didomi/sdk/C3;", "logoProvider", "<init>", "(Lio/didomi/sdk/H;Lio/didomi/sdk/v3;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;)V", "Lio/didomi/sdk/models/DeviceStorageDisclosure;", "disclosure", "", "a", "(Lio/didomi/sdk/models/DeviceStorageDisclosure;)Ljava/lang/String;", InneractiveMediationDefs.GENDER_FEMALE, "", "t", "()Ljava/util/List;", "title", "", "hasCookieSection", "Lio/didomi/sdk/V7;", "(Ljava/lang/String;Z)Ljava/util/List;", "i", "Lio/didomi/sdk/v3;", "u", "()Ljava/lang/String;", "subtitleLabel", "android_release"}, mv = {1, 8, 0})
public final class C1853o6 extends C0 {

    /* JADX INFO: renamed from: i, reason: from kotlin metadata */
    private final C1920v3 languagesHelper;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1853o6(H configurationRepository, C1920v3 languagesHelper, V8 vendorRepository, C3 logoProvider) {
        super(configurationRepository, languagesHelper, vendorRepository, logoProvider);
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(languagesHelper, "languagesHelper");
        Intrinsics.checkNotNullParameter(vendorRepository, "vendorRepository");
        Intrinsics.checkNotNullParameter(logoProvider, "logoProvider");
        this.languagesHelper = languagesHelper;
    }

    @Override // io.didomi.drawable.C0
    public String a(DeviceStorageDisclosure disclosure) {
        Intrinsics.checkNotNullParameter(disclosure, "disclosure");
        ArrayList arrayList = new ArrayList();
        String identifier = disclosure.getIdentifier();
        if (identifier != null && identifier.length() > 0) {
            arrayList.add(C1920v3.a(this.languagesHelper, "name", (W5) null, (Map) null, 6, (Object) null) + ": " + identifier);
        }
        String strG = g(disclosure);
        if (strG != null && strG.length() > 0) {
            arrayList.add(C1920v3.a(this.languagesHelper, "type", (W5) null, (Map) null, 6, (Object) null) + ": " + strG);
        }
        String domain = disclosure.getDomain();
        if (domain != null && domain.length() > 0) {
            arrayList.add(C1920v3.a(this.languagesHelper, o2.i.C, (W5) null, (Map) null, 6, (Object) null) + ": " + domain);
        }
        String strC = c(disclosure);
        if (strC != null) {
            arrayList.add(C1920v3.a(this.languagesHelper, "expiration", (W5) null, (Map) null, 6, (Object) null) + ": " + strC);
        }
        String strF = f(disclosure);
        if (strF.length() > 0) {
            arrayList.add(C1920v3.a(this.languagesHelper, "used_for_purposes", (W5) null, (Map) null, 6, (Object) null) + ": " + strF);
        }
        return C1880r3.b(C1880r3.a, arrayList, null, 2, null);
    }

    public final List<V7> a(String title, boolean hasCookieSection) {
        List<V7> listEmptyList;
        Intrinsics.checkNotNullParameter(title, "title");
        List<DeviceStorageDisclosure> disclosuresList = e().getDisclosuresList();
        if (disclosuresList != null) {
            if (disclosuresList.isEmpty()) {
                listEmptyList = CollectionsKt__CollectionsKt.emptyList();
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.add(new V7.DeviceStorageDisclosureTitle(!hasCookieSection, title, 0, 4, null));
                ArrayList arrayList2 = new ArrayList();
                Iterator<T> it = disclosuresList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    String identifier = ((DeviceStorageDisclosure) next).getIdentifier();
                    if (!(identifier == null || StringsKt__StringsJVMKt.isBlank(identifier))) {
                        arrayList2.add(next);
                    }
                }
                ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10));
                int i = 0;
                for (Object obj : arrayList2) {
                    int i2 = i + 1;
                    if (i < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    String identifier2 = ((DeviceStorageDisclosure) obj).getIdentifier();
                    if (identifier2 == null) {
                        identifier2 = "";
                    }
                    arrayList3.add(new V7.DeviceStorageDisclosure(identifier2, i, 0, 4, null));
                    i = i2;
                }
                arrayList.addAll(arrayList3);
                listEmptyList = arrayList;
            }
            if (listEmptyList != null) {
                return listEmptyList;
            }
        }
        return CollectionsKt__CollectionsKt.emptyList();
    }

    @Override // io.didomi.drawable.C0
    public String f(DeviceStorageDisclosure disclosure) {
        Intrinsics.checkNotNullParameter(disclosure, "disclosure");
        List<InternalPurpose> listE = e(disclosure);
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listE, 10));
        Iterator<T> it = listE.iterator();
        while (it.hasNext()) {
            arrayList.add(C1920v3.a(this.languagesHelper, ((InternalPurpose) it.next()).getName(), null, null, null, 14, null));
        }
        return CollectionsKt___CollectionsKt.joinToString$default(CollectionsKt___CollectionsKt.sorted(arrayList), ", ", null, null, 0, null, null, 62, null);
    }

    public final List<DeviceStorageDisclosure> t() {
        return e().getDisclosuresList();
    }

    public final String u() {
        StringBuilder sb = new StringBuilder();
        sb.append(C1920v3.a(this.languagesHelper, "device_storage", W5.UPPER_CASE, null, null, 12, null));
        sb.append(": ");
        DeviceStorageDisclosure selectedDisclosure = getSelectedDisclosure();
        sb.append(selectedDisclosure != null ? selectedDisclosure.getIdentifier() : null);
        return sb.toString();
    }
}
