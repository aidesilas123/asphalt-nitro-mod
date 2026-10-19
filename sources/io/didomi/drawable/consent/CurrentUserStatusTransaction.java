package io.didomi.drawable.consent;

import androidx.annotation.Keep;
import io.didomi.drawable.C1767g0;
import io.didomi.drawable.Didomi;
import io.didomi.drawable.Log;
import io.didomi.drawable.P8;
import io.didomi.drawable.V8;
import io.didomi.drawable.models.CurrentUserStatus;
import io.didomi.drawable.models.InternalVendor;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J'\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\b¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0014\u001a\u00020\u00002\u0012\u0010\u0013\u001a\n\u0012\u0006\b\u0001\u0012\u00020\b0\u0012\"\u00020\b¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\b¢\u0006\u0004\b\u0016\u0010\u0011J!\u0010\u0017\u001a\u00020\u00002\u0012\u0010\u0013\u001a\n\u0012\u0006\b\u0001\u0012\u00020\b0\u0012\"\u00020\b¢\u0006\u0004\b\u0017\u0010\u0015J\u0015\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\b¢\u0006\u0004\b\u0019\u0010\u0011J!\u0010\u001b\u001a\u00020\u00002\u0012\u0010\u001a\u001a\n\u0012\u0006\b\u0001\u0012\u00020\b0\u0012\"\u00020\b¢\u0006\u0004\b\u001b\u0010\u0015J\u0015\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\b¢\u0006\u0004\b\u001c\u0010\u0011J!\u0010\u001d\u001a\u00020\u00002\u0012\u0010\u001a\u001a\n\u0012\u0006\b\u0001\u0012\u00020\b0\u0012\"\u00020\b¢\u0006\u0004\b\u001d\u0010\u0015J\r\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b\u001f\u0010 R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010!R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\"R \u0010%\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020$0#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R \u0010(\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020'0#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010&R\u001a\u0010*\u001a\b\u0012\u0004\u0012\u00020\b0)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\u001a\u0010-\u001a\b\u0012\u0004\u0012\u00020\b0,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.¨\u0006/"}, d2 = {"Lio/didomi/sdk/consent/CurrentUserStatusTransaction;", "", "Lio/didomi/sdk/P8;", "userStatusRepository", "Lio/didomi/sdk/V8;", "vendorRepository", "<init>", "(Lio/didomi/sdk/P8;Lio/didomi/sdk/V8;)V", "", "method", "itemType", "itemId", "", "logInvalidItem", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "purposeId", "enablePurpose", "(Ljava/lang/String;)Lio/didomi/sdk/consent/CurrentUserStatusTransaction;", "", "purposeIds", "enablePurposes", "([Ljava/lang/String;)Lio/didomi/sdk/consent/CurrentUserStatusTransaction;", "disablePurpose", "disablePurposes", "vendorId", "enableVendor", "vendorIds", "enableVendors", "disableVendor", "disableVendors", "", "commit", "()Z", "Lio/didomi/sdk/P8;", "Lio/didomi/sdk/V8;", "", "Lio/didomi/sdk/models/CurrentUserStatus$PurposeStatus;", Didomi.VIEW_PURPOSES, "Ljava/util/Map;", "Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;", Didomi.VIEW_VENDORS, "", "requiredPurposeIds", "Ljava/util/Set;", "", "requiredVendorDidomiIds", "Ljava/util/List;", "android_release"}, mv = {1, 8, 0})
public final class CurrentUserStatusTransaction {
    private final Map<String, CurrentUserStatus.PurposeStatus> purposes;
    private final Set<String> requiredPurposeIds;
    private final List<String> requiredVendorDidomiIds;
    private final P8 userStatusRepository;
    private final V8 vendorRepository;
    private final Map<String, CurrentUserStatus.VendorStatus> vendors;

    public CurrentUserStatusTransaction(P8 userStatusRepository, V8 vendorRepository) {
        Intrinsics.checkNotNullParameter(userStatusRepository, "userStatusRepository");
        Intrinsics.checkNotNullParameter(vendorRepository, "vendorRepository");
        this.userStatusRepository = userStatusRepository;
        this.vendorRepository = vendorRepository;
        this.purposes = new LinkedHashMap();
        this.vendors = new LinkedHashMap();
        this.requiredPurposeIds = vendorRepository.i();
        Set<InternalVendor> setQ = vendorRepository.q();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(setQ, 10));
        for (InternalVendor internalVendor : setQ) {
            String didomiId = internalVendor.getDidomiId();
            if (didomiId == null) {
                didomiId = internalVendor.getId();
            }
            arrayList.add(didomiId);
        }
        this.requiredVendorDidomiIds = arrayList;
    }

    private final void logInvalidItem(String method, String itemType, String itemId) {
        Log.e$default("Ignored " + method + " update for " + itemType + " id \"" + itemId + "\", as it is not part of the required " + itemType + "s of the Notice Config.", null, 2, null);
    }

    public final boolean commit() {
        CurrentUserStatus currentUserStatusB = this.userStatusRepository.b();
        C1767g0.b(C1767g0.a(currentUserStatusB, this.purposes), this.vendors);
        return this.userStatusRepository.a(currentUserStatusB);
    }

    public final CurrentUserStatusTransaction disablePurpose(String purposeId) {
        Intrinsics.checkNotNullParameter(purposeId, "purposeId");
        if (this.requiredPurposeIds.contains(purposeId)) {
            this.purposes.put(purposeId, new CurrentUserStatus.PurposeStatus(purposeId, false));
        } else {
            logInvalidItem("disablePurpose", "purpose", purposeId);
        }
        return this;
    }

    public final CurrentUserStatusTransaction disablePurposes(String... purposeIds) {
        Intrinsics.checkNotNullParameter(purposeIds, "purposeIds");
        for (String str : purposeIds) {
            disablePurpose(str);
        }
        return this;
    }

    public final CurrentUserStatusTransaction disableVendor(String vendorId) {
        Intrinsics.checkNotNullParameter(vendorId, "vendorId");
        if (this.requiredVendorDidomiIds.contains(vendorId)) {
            this.vendors.put(vendorId, new CurrentUserStatus.VendorStatus(vendorId, false));
        } else {
            logInvalidItem("disableVendor", "vendor", vendorId);
        }
        return this;
    }

    public final CurrentUserStatusTransaction disableVendors(String... vendorIds) {
        Intrinsics.checkNotNullParameter(vendorIds, "vendorIds");
        for (String str : vendorIds) {
            disableVendor(str);
        }
        return this;
    }

    public final CurrentUserStatusTransaction enablePurpose(String purposeId) {
        Intrinsics.checkNotNullParameter(purposeId, "purposeId");
        if (this.requiredPurposeIds.contains(purposeId)) {
            this.purposes.put(purposeId, new CurrentUserStatus.PurposeStatus(purposeId, true));
        } else {
            logInvalidItem("enablePurpose", "purpose", purposeId);
        }
        return this;
    }

    public final CurrentUserStatusTransaction enablePurposes(String... purposeIds) {
        Intrinsics.checkNotNullParameter(purposeIds, "purposeIds");
        for (String str : purposeIds) {
            enablePurpose(str);
        }
        return this;
    }

    public final CurrentUserStatusTransaction enableVendor(String vendorId) {
        Intrinsics.checkNotNullParameter(vendorId, "vendorId");
        if (this.requiredVendorDidomiIds.contains(vendorId)) {
            this.vendors.put(vendorId, new CurrentUserStatus.VendorStatus(vendorId, true));
        } else {
            logInvalidItem("enableVendor", "vendor", vendorId);
        }
        return this;
    }

    public final CurrentUserStatusTransaction enableVendors(String... vendorIds) {
        Intrinsics.checkNotNullParameter(vendorIds, "vendorIds");
        for (String str : vendorIds) {
            enableVendor(str);
        }
        return this;
    }
}
