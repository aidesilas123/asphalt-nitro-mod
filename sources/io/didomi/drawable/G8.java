package io.didomi.drawable;

import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.d1;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.consent.model.ConsentToken;
import io.didomi.drawable.models.InternalPurpose;
import io.didomi.drawable.models.InternalVendor;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\"\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0015\u0018\u0000 \u00132\u00020\u0001:\u0001\tB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J3\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\b2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\t\u0010\nJ%\u0010\t\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u000b2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002¢\u0006\u0004\b\t\u0010\u000fJ%\u0010\t\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u000b2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00050\u0010H\u0002¢\u0006\u0004\b\t\u0010\u0012J\r\u0010\u0013\u001a\u00020\u000e¢\u0006\u0004\b\u0013\u0010\u0003J1\u0010\t\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u000b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\t\u0010\u0015J\u0015\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0005¢\u0006\u0004\b\u0017\u0010\u0018J\u0015\u0010\t\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0005¢\u0006\u0004\b\t\u0010\u0018J\u0015\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0005¢\u0006\u0004\b\u0019\u0010\u0018J\u0015\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0005¢\u0006\u0004\b\u001a\u0010\u0018J\u0015\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0005¢\u0006\u0004\b\u001b\u0010\u0018J\u0015\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u0017\u0010\u001eJ\u0015\u0010\t\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\t\u0010\u001eJ\u0015\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u0019\u0010\u001eJ\u0015\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001a\u0010\u001eJ\u0015\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001b\u0010\u001eJ\u001b\u0010\t\u001a\u00020\u000e2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00050\u0010¢\u0006\u0004\b\t\u0010 J\u001b\u0010\u001b\u001a\u00020\u000e2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00050\u0010¢\u0006\u0004\b\u001b\u0010 R\"\u0010'\u001a\u00020!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R(\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00050\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010 R(\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00050\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010(\u001a\u0004\b\u001b\u0010*\"\u0004\b\u0017\u0010 R(\u00100\u001a\b\u0012\u0004\u0012\u00020\u00050\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010(\u001a\u0004\b.\u0010*\"\u0004\b/\u0010 R(\u00101\u001a\b\u0012\u0004\u0012\u00020\u00050\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010(\u001a\u0004\b\u001a\u0010*\"\u0004\b\u0019\u0010 R(\u00102\u001a\b\u0012\u0004\u0012\u00020\u001c0\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010(\u001a\u0004\b+\u0010*\"\u0004\b.\u0010 R(\u00103\u001a\b\u0012\u0004\u0012\u00020\u001c0\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010(\u001a\u0004\b\u0017\u0010*\"\u0004\b\u001a\u0010 R(\u00104\u001a\b\u0012\u0004\u0012\u00020\u001c0\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010(\u001a\u0004\b/\u0010*\"\u0004\b\u0013\u0010 R(\u00105\u001a\b\u0012\u0004\u0012\u00020\u001c0\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u0010(\u001a\u0004\b\u0019\u0010*\"\u0004\b)\u0010 ¨\u00066"}, d2 = {"Lio/didomi/sdk/G8;", "", "<init>", "()V", "", "Lio/didomi/sdk/models/InternalPurpose;", Didomi.VIEW_PURPOSES, "requiredPurposes", "", "a", "(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Set;", "Lio/didomi/sdk/consent/model/ConsentToken;", "consentToken", "legitimatePurposes", "", "(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/util/Collection;)V", "", "personalData", "(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/util/Set;)V", "j", "requiredLegIntPurposes", "(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/util/Collection;Ljava/util/Collection;)V", "purpose", "c", "(Lio/didomi/sdk/models/InternalPurpose;)V", "e", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/models/InternalVendor;", "vendor", "(Lio/didomi/sdk/models/InternalVendor;)V", "requiredConsentPurposes", "(Ljava/util/Set;)V", "", "Z", "getReady", "()Z", "setReady", "(Z)V", o2.h.s, "Ljava/util/Set;", InneractiveMediationDefs.GENDER_FEMALE, "()Ljava/util/Set;", "g", "enabledConsentPurposes", "disabledConsentPurposes", "h", "i", "enabledLegIntPurposes", "disabledLegIntPurposes", "enabledConsentVendors", "disabledConsentVendors", "enabledLegIntVendors", "disabledLegIntVendors", "android_release"}, mv = {1, 8, 0})
public final class G8 {

    /* JADX INFO: renamed from: j, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final G8 k = new G8();

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private boolean ready;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private Set<InternalPurpose> enabledConsentPurposes = new LinkedHashSet();

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private Set<InternalPurpose> disabledConsentPurposes = new LinkedHashSet();

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private Set<InternalPurpose> enabledLegIntPurposes = new LinkedHashSet();

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private Set<InternalPurpose> disabledLegIntPurposes = new LinkedHashSet();

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private Set<InternalVendor> enabledConsentVendors = new LinkedHashSet();

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private Set<InternalVendor> disabledConsentVendors = new LinkedHashSet();

    /* JADX INFO: renamed from: h, reason: from kotlin metadata */
    private Set<InternalVendor> enabledLegIntVendors = new LinkedHashSet();

    /* JADX INFO: renamed from: i, reason: from kotlin metadata */
    private Set<InternalVendor> disabledLegIntVendors = new LinkedHashSet();

    /* JADX INFO: renamed from: io.didomi.sdk.G8$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lio/didomi/sdk/G8$a;", "", "<init>", "()V", "Lio/didomi/sdk/G8;", d1.o, "Lio/didomi/sdk/G8;", "a", "()Lio/didomi/sdk/G8;", "android_release"}, mv = {1, 8, 0})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        public final G8 a() {
            return G8.k;
        }
    }

    private final Set<InternalPurpose> a(Collection<InternalPurpose> purposes, Collection<InternalPurpose> requiredPurposes) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : purposes) {
            InternalPurpose internalPurpose = (InternalPurpose) obj;
            if (requiredPurposes != null && C1860p3.a(requiredPurposes, internalPurpose)) {
                arrayList.add(obj);
            }
        }
        return CollectionsKt___CollectionsKt.toMutableSet(arrayList);
    }

    private final void a(ConsentToken consentToken, Collection<InternalPurpose> legitimatePurposes) {
        if (Y.m(consentToken)) {
            this.enabledLegIntPurposes = CollectionsKt___CollectionsKt.toMutableSet(legitimatePurposes);
            this.disabledLegIntPurposes = new LinkedHashSet();
            return;
        }
        Collection<InternalPurpose> collectionValues = consentToken.getDisabledLegitimatePurposes().values();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : legitimatePurposes) {
            if (C1860p3.a(collectionValues, (InternalPurpose) obj)) {
                arrayList.add(obj);
            } else {
                arrayList2.add(obj);
            }
        }
        Pair pair = new Pair(arrayList, arrayList2);
        List list = (List) pair.c();
        this.enabledLegIntPurposes = CollectionsKt___CollectionsKt.toMutableSet((List) pair.d());
        this.disabledLegIntPurposes = CollectionsKt___CollectionsKt.toMutableSet(list);
    }

    private final void a(ConsentToken consentToken, Set<InternalPurpose> personalData) {
        if (Y.n(consentToken)) {
            Iterator<T> it = personalData.iterator();
            while (it.hasNext()) {
                a((InternalPurpose) it.next());
            }
        }
    }

    public final void a(ConsentToken consentToken, Collection<InternalPurpose> requiredPurposes, Collection<InternalPurpose> requiredLegIntPurposes) {
        Intrinsics.checkNotNullParameter(consentToken, "consentToken");
        Intrinsics.checkNotNullParameter(requiredPurposes, "requiredPurposes");
        Intrinsics.checkNotNullParameter(requiredLegIntPurposes, "requiredLegIntPurposes");
        if (this.ready) {
            return;
        }
        this.enabledConsentPurposes = a(consentToken.getEnabledPurposes().values(), requiredPurposes);
        this.disabledConsentPurposes = a(consentToken.getDisabledPurposes().values(), requiredPurposes);
        ArrayList arrayList = new ArrayList();
        for (Object obj : requiredPurposes) {
            if (C1860p3.a((InternalPurpose) obj)) {
                arrayList.add(obj);
            }
        }
        a(consentToken, CollectionsKt___CollectionsKt.toSet(arrayList));
        this.enabledConsentVendors = CollectionsKt___CollectionsKt.toMutableSet(consentToken.getEnabledVendors().values());
        this.disabledConsentVendors = CollectionsKt___CollectionsKt.toMutableSet(consentToken.getDisabledVendors().values());
        a(consentToken, requiredLegIntPurposes);
        this.enabledLegIntVendors = CollectionsKt___CollectionsKt.toMutableSet(consentToken.getEnabledLegitimateVendors().values());
        this.disabledLegIntVendors = CollectionsKt___CollectionsKt.toMutableSet(consentToken.getDisabledLegitimateVendors().values());
        this.ready = true;
    }

    public final void a(InternalPurpose purpose) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        C1860p3.b(this.enabledConsentPurposes, purpose);
        this.disabledConsentPurposes.add(purpose);
    }

    public final void a(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        this.enabledConsentVendors.remove(vendor);
        this.disabledConsentVendors.add(vendor);
    }

    public final void a(Set<InternalPurpose> requiredConsentPurposes) {
        Intrinsics.checkNotNullParameter(requiredConsentPurposes, "requiredConsentPurposes");
        for (InternalPurpose internalPurpose : requiredConsentPurposes) {
            if (!C1860p3.a(this.enabledConsentPurposes, internalPurpose)) {
                this.disabledConsentPurposes.add(internalPurpose);
            }
        }
    }

    public final Set<InternalPurpose> b() {
        return this.disabledConsentPurposes;
    }

    public final void b(InternalPurpose purpose) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        C1860p3.b(this.enabledLegIntPurposes, purpose);
        this.disabledLegIntPurposes.add(purpose);
    }

    public final void b(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        this.enabledLegIntVendors.remove(vendor);
        this.disabledLegIntVendors.add(vendor);
    }

    public final void b(Set<InternalPurpose> requiredLegIntPurposes) {
        Intrinsics.checkNotNullParameter(requiredLegIntPurposes, "requiredLegIntPurposes");
        for (InternalPurpose internalPurpose : requiredLegIntPurposes) {
            if (!C1860p3.a(this.disabledLegIntPurposes, internalPurpose)) {
                this.enabledLegIntPurposes.add(internalPurpose);
            }
        }
    }

    public final Set<InternalVendor> c() {
        return this.disabledConsentVendors;
    }

    public final void c(InternalPurpose purpose) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        C1860p3.b(this.disabledConsentPurposes, purpose);
        this.enabledConsentPurposes.add(purpose);
    }

    public final void c(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        this.disabledConsentVendors.remove(vendor);
        this.enabledConsentVendors.add(vendor);
    }

    public final void c(Set<InternalPurpose> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.disabledConsentPurposes = set;
    }

    public final Set<InternalPurpose> d() {
        return this.disabledLegIntPurposes;
    }

    public final void d(InternalPurpose purpose) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        C1860p3.b(this.disabledLegIntPurposes, purpose);
        this.enabledLegIntPurposes.add(purpose);
    }

    public final void d(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        this.disabledLegIntVendors.remove(vendor);
        this.enabledLegIntVendors.add(vendor);
    }

    public final void d(Set<InternalVendor> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.disabledConsentVendors = set;
    }

    public final Set<InternalVendor> e() {
        return this.disabledLegIntVendors;
    }

    public final void e(InternalPurpose purpose) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        C1860p3.b(this.enabledConsentPurposes, purpose);
        C1860p3.b(this.disabledConsentPurposes, purpose);
    }

    public final void e(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        this.enabledConsentVendors.remove(vendor);
        this.disabledConsentVendors.remove(vendor);
    }

    public final void e(Set<InternalPurpose> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.disabledLegIntPurposes = set;
    }

    public final Set<InternalPurpose> f() {
        return this.enabledConsentPurposes;
    }

    public final void f(Set<InternalVendor> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.disabledLegIntVendors = set;
    }

    public final Set<InternalVendor> g() {
        return this.enabledConsentVendors;
    }

    public final void g(Set<InternalPurpose> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.enabledConsentPurposes = set;
    }

    public final Set<InternalPurpose> h() {
        return this.enabledLegIntPurposes;
    }

    public final void h(Set<InternalVendor> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.enabledConsentVendors = set;
    }

    public final Set<InternalVendor> i() {
        return this.enabledLegIntVendors;
    }

    public final void i(Set<InternalPurpose> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.enabledLegIntPurposes = set;
    }

    public final void j() {
        this.ready = false;
        this.enabledConsentPurposes = new LinkedHashSet();
        this.disabledConsentPurposes = new LinkedHashSet();
        this.enabledLegIntPurposes = new LinkedHashSet();
        this.disabledLegIntPurposes = new LinkedHashSet();
        this.enabledConsentVendors = new LinkedHashSet();
        this.disabledConsentVendors = new LinkedHashSet();
        this.enabledLegIntVendors = new LinkedHashSet();
        this.disabledLegIntVendors = new LinkedHashSet();
    }

    public final void j(Set<InternalVendor> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.enabledLegIntVendors = set;
    }
}
