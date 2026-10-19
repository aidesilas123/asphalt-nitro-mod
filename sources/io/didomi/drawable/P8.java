package io.didomi.drawable;

import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.consent.model.ConsentStatus;
import io.didomi.drawable.consent.model.ConsentToken;
import io.didomi.drawable.models.CurrentUserStatus;
import io.didomi.drawable.models.InternalPurpose;
import io.didomi.drawable.models.InternalVendor;
import io.didomi.drawable.models.UserStatus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.ranges.RangesKt___RangesKt;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Exception occurred when reading Kotlin metadata
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:108)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    Caused by: kotlin.metadata.internal.protobuf.InvalidProtocolBufferException: Message was missing required fields.  (Lite runtime could not determine which fields were missing).
    	at kotlin.metadata.internal.protobuf.UninitializedMessageException.asInvalidProtocolBufferException(UninitializedMessageException.java:81)
    	at kotlin.metadata.internal.protobuf.AbstractParser.checkMessageInitialized(AbstractParser.java:71)
    	at kotlin.metadata.internal.protobuf.AbstractParser.parseFrom(AbstractParser.java:209)
    	at kotlin.metadata.internal.protobuf.AbstractParser.parseFrom(AbstractParser.java:49)
    	at kotlin.metadata.internal.metadata.ProtoBuf$Class.parseFrom(ProtoBuf.java:10614)
    	at kotlin.metadata.internal.metadata.jvm.deserialization.JvmProtoBufUtil.readClassDataFrom(JvmProtoBufUtil.kt:37)
    	at kotlin.metadata.internal.metadata.jvm.deserialization.JvmProtoBufUtil.readClassDataFrom(JvmProtoBufUtil.kt:32)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readKmClass$kotlin_metadata_jvm(JvmReadUtils.kt:27)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Class.<init>(KotlinClassMetadata.kt:95)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:50)
    	... 5 more
    */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001BA\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u001d\u0010\u0015\u001a\u00020\u00172\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0002¢\u0006\u0004\b\u0015\u0010\u001dJ\u001d\u0010\u001e\u001a\u00020\u00172\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0002¢\u0006\u0004\b\u001e\u0010\u001dJ-\u0010\u0015\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020\u00172\u0006\u0010 \u001a\u00020\u00172\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0002¢\u0006\u0004\b\u0015\u0010\"J\r\u0010$\u001a\u00020#¢\u0006\u0004\b$\u0010%J\r\u0010\u001e\u001a\u00020&¢\u0006\u0004\b\u001e\u0010'J\u0015\u0010\u0015\u001a\u00020\u00142\u0006\u0010(\u001a\u00020&¢\u0006\u0004\b\u0015\u0010)R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010*R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010+R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010.R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010/R\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101R\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\u001b\u00108\u001a\u0002048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b5\u00106\u001a\u0004\b,\u00107R\u001b\u0010;\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b9\u00106\u001a\u0004\b0\u0010:R\u0014\u0010>\u001a\u00020<8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010=¨\u0006?"}, d2 = {"Lio/didomi/sdk/P8;", "", "Lio/didomi/sdk/apiEvents/b;", "apiEventsRepository", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/V;", "consentRepository", "Lio/didomi/sdk/j0;", "dcsRepository", "Lio/didomi/sdk/M2;", "eventsRepository", "Lio/didomi/sdk/M8;", "userRepository", "Lio/didomi/sdk/V8;", "vendorRepository", "<init>", "(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/j0;Lio/didomi/sdk/M2;Lio/didomi/sdk/M8;Lio/didomi/sdk/V8;)V", "Lio/didomi/sdk/consent/model/ConsentStatus;", "status", "", "a", "(Lio/didomi/sdk/consent/model/ConsentStatus;)Z", "Lio/didomi/sdk/models/UserStatus$Ids;", "e", "()Lio/didomi/sdk/models/UserStatus$Ids;", "", "", "vendorIDsWithEssentialPurposesOnly", "(Ljava/util/Set;)Lio/didomi/sdk/models/UserStatus$Ids;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "globalConsentVendorStatusIDs", "globalLegitimateVendorStatusIDs", "vendorsWithNoConsentNorLIPurposes", "(Lio/didomi/sdk/models/UserStatus$Ids;Lio/didomi/sdk/models/UserStatus$Ids;Ljava/util/Set;)Lio/didomi/sdk/models/UserStatus$Ids;", "Lio/didomi/sdk/models/UserStatus;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Lio/didomi/sdk/models/UserStatus;", "Lio/didomi/sdk/models/CurrentUserStatus;", "()Lio/didomi/sdk/models/CurrentUserStatus;", "currentUserStatus", "(Lio/didomi/sdk/models/CurrentUserStatus;)Z", "Lio/didomi/sdk/apiEvents/b;", "Lio/didomi/sdk/H;", "c", "Lio/didomi/sdk/V;", "Lio/didomi/sdk/j0;", "Lio/didomi/sdk/M2;", InneractiveMediationDefs.GENDER_FEMALE, "Lio/didomi/sdk/M8;", "g", "Lio/didomi/sdk/V8;", "Lio/didomi/sdk/Regulation;", "h", "Lkotlin/Lazy;", "()Lio/didomi/sdk/Regulation;", "regulation", "i", "()Z", "isNoRegulation", "Lio/didomi/sdk/consent/model/ConsentToken;", "()Lio/didomi/sdk/consent/model/ConsentToken;", "consentToken", "android_release"}, mv = {1, 8, 0})
public final class P8 {
    private final io.didomi.drawable.apiEvents.b a;
    private final H b;
    private final V c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final C1797j0 f8331d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final M2 f8332e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final M8 f8333f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final V8 f8334g;
    private final Lazy h;
    private final Lazy i;

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class a extends Lambda implements Function0<Boolean> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(P8.this.c() == Regulation.NONE);
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/Regulation;", "a", "()Lio/didomi/sdk/Regulation;"}, mv = {1, 8, 0})
    static final class b extends Lambda implements Function0<Regulation> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Regulation invoke() {
            return P8.this.b.e();
        }
    }

    public P8(io.didomi.drawable.apiEvents.b apiEventsRepository, H configurationRepository, V consentRepository, C1797j0 dcsRepository, M2 eventsRepository, M8 userRepository, V8 vendorRepository) {
        Intrinsics.checkNotNullParameter(apiEventsRepository, "apiEventsRepository");
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(consentRepository, "consentRepository");
        Intrinsics.checkNotNullParameter(dcsRepository, "dcsRepository");
        Intrinsics.checkNotNullParameter(eventsRepository, "eventsRepository");
        Intrinsics.checkNotNullParameter(userRepository, "userRepository");
        Intrinsics.checkNotNullParameter(vendorRepository, "vendorRepository");
        this.a = apiEventsRepository;
        this.b = configurationRepository;
        this.c = consentRepository;
        this.f8331d = dcsRepository;
        this.f8332e = eventsRepository;
        this.f8333f = userRepository;
        this.f8334g = vendorRepository;
        this.h = LazyKt__LazyJVMKt.lazy(new b());
        this.i = LazyKt__LazyJVMKt.lazy(new a());
    }

    private final ConsentToken a() {
        return this.c.b();
    }

    private final UserStatus.Ids a(UserStatus.Ids ids, UserStatus.Ids ids2, Set<String> set) {
        if (f()) {
            return new UserStatus.Ids(null, this.f8334g.s(), 1, null);
        }
        Set setPlus = SetsKt___SetsKt.plus((Set) CollectionsKt___CollectionsKt.subtract(CollectionsKt___CollectionsKt.subtract(SetsKt___SetsKt.plus((Set) ids.getEnabled(), (Iterable) ids2.getEnabled()), ids.getDisabled()), ids2.getDisabled()), (Iterable) set);
        return new UserStatus.Ids(CollectionsKt___CollectionsKt.subtract(SetsKt___SetsKt.plus((Set) this.f8334g.o(), (Iterable) this.f8334g.p()), setPlus), setPlus);
    }

    private final UserStatus.Ids a(Set<String> set) {
        Set set2 = CollectionsKt___CollectionsKt.toSet(a().getEnabledVendors().keySet());
        ArrayList arrayList = new ArrayList();
        for (Object obj : set2) {
            if (this.c.b((String) obj) == ConsentStatus.ENABLE) {
                arrayList.add(obj);
            }
        }
        Set setPlus = SetsKt___SetsKt.plus((Set) CollectionsKt___CollectionsKt.toSet(arrayList), (Iterable) set);
        return new UserStatus.Ids(CollectionsKt___CollectionsKt.subtract(this.f8334g.o(), setPlus), setPlus);
    }

    private final boolean a(ConsentStatus consentStatus) {
        return consentStatus == ConsentStatus.ENABLE || (c().getMixed() && consentStatus == ConsentStatus.UNKNOWN);
    }

    private final UserStatus.Ids b(Set<String> set) {
        Set<String> setKeySet = a().getEnabledLegitimateVendors().keySet();
        ArrayList arrayList = new ArrayList();
        for (Object obj : setKeySet) {
            if (this.c.d((String) obj) == ConsentStatus.ENABLE) {
                arrayList.add(obj);
            }
        }
        Set setPlus = SetsKt___SetsKt.plus((Set) CollectionsKt___CollectionsKt.toSet(arrayList), (Iterable) set);
        return new UserStatus.Ids(CollectionsKt___CollectionsKt.subtract(this.f8334g.p(), setPlus), setPlus);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Regulation c() {
        return (Regulation) this.h.getValue();
    }

    private final UserStatus.Ids e() {
        if (f()) {
            return new UserStatus.Ids(null, this.f8334g.i(), 1, null);
        }
        Set setPlus = SetsKt___SetsKt.plus((Set) SetsKt___SetsKt.plus((Set) CollectionsKt___CollectionsKt.toSet(this.c.f()), (Iterable) CollectionsKt___CollectionsKt.toSet(a().getEnabledPurposes().keySet())), (Iterable) CollectionsKt___CollectionsKt.toSet(a().getEnabledLegitimatePurposes().keySet()));
        return new UserStatus.Ids(CollectionsKt___CollectionsKt.subtract(this.f8334g.i(), setPlus), setPlus);
    }

    private final boolean f() {
        return ((Boolean) this.i.getValue()).booleanValue();
    }

    public final boolean a(CurrentUserStatus currentUserStatus) {
        Intrinsics.checkNotNullParameter(currentUserStatus, "currentUserStatus");
        if (!C1767g0.a(currentUserStatus)) {
            Log.e$default("currentUserStatus is not valid, user status not set", null, 2, null);
            return false;
        }
        if (f()) {
            Log.e$default("Regulation is NONE, user status not set", null, 2, null);
            return false;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        LinkedHashSet linkedHashSet3 = new LinkedHashSet();
        LinkedHashSet linkedHashSet4 = new LinkedHashSet();
        for (InternalPurpose internalPurpose : this.f8334g.a(currentUserStatus.getPurposes().keySet())) {
            CurrentUserStatus.PurposeStatus purposeStatus = currentUserStatus.getPurposes().get(internalPurpose.getId());
            if (purposeStatus != null) {
                if (internalPurpose.isLegitimateInterest()) {
                    if (purposeStatus.getEnabled()) {
                        linkedHashSet3.add(internalPurpose);
                    } else {
                        linkedHashSet4.add(internalPurpose);
                    }
                }
                if (internalPurpose.isConsent()) {
                    if (purposeStatus.getEnabled()) {
                        linkedHashSet.add(internalPurpose);
                    } else {
                        linkedHashSet2.add(internalPurpose);
                    }
                }
            }
        }
        LinkedHashSet linkedHashSet5 = new LinkedHashSet();
        LinkedHashSet linkedHashSet6 = new LinkedHashSet();
        LinkedHashSet linkedHashSet7 = new LinkedHashSet();
        LinkedHashSet linkedHashSet8 = new LinkedHashSet();
        Set<InternalVendor> setQ = this.f8334g.q();
        ArrayList<InternalVendor> arrayList = new ArrayList();
        for (Object obj : setQ) {
            if (CollectionsKt___CollectionsKt.contains(currentUserStatus.getVendors().keySet(), ((InternalVendor) obj).getDidomiId())) {
                arrayList.add(obj);
            }
        }
        for (InternalVendor internalVendor : arrayList) {
            CurrentUserStatus.VendorStatus vendorStatus = currentUserStatus.getVendors().get(internalVendor.getDidomiId());
            if (vendorStatus != null) {
                if (C1870q3.f(internalVendor)) {
                    if (vendorStatus.getEnabled()) {
                        linkedHashSet7.add(internalVendor);
                    } else {
                        linkedHashSet8.add(internalVendor);
                    }
                }
                if (C1870q3.d(internalVendor)) {
                    if (vendorStatus.getEnabled()) {
                        linkedHashSet5.add(internalVendor);
                    } else {
                        linkedHashSet6.add(internalVendor);
                    }
                }
            }
        }
        return this.c.a((Set<InternalPurpose>) linkedHashSet, (Set<InternalPurpose>) linkedHashSet2, (Set<InternalPurpose>) linkedHashSet3, (Set<InternalPurpose>) linkedHashSet4, (Set<InternalVendor>) linkedHashSet5, (Set<InternalVendor>) linkedHashSet6, (Set<InternalVendor>) linkedHashSet7, (Set<InternalVendor>) linkedHashSet8, true, "external", this.a, this.f8332e, this);
    }

    public final CurrentUserStatus b() {
        Set<InternalPurpose> setK = this.f8334g.k();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(setK, 10)), 16));
        Iterator<T> it = setK.iterator();
        while (true) {
            boolean z = false;
            if (!it.hasNext()) {
                break;
            }
            InternalPurpose internalPurpose = (InternalPurpose) it.next();
            String id = internalPurpose.getId();
            String id2 = internalPurpose.getId();
            if (f() || ((!internalPurpose.isConsent() || this.c.a(internalPurpose.getId()) == ConsentStatus.ENABLE) && (!internalPurpose.isLegitimateInterest() || a(this.c.c(internalPurpose.getId()))))) {
                z = true;
            }
            Pair pair = TuplesKt.to(id, new CurrentUserStatus.PurposeStatus(id2, z));
            linkedHashMap.put(pair.f(), pair.g());
        }
        Set<InternalVendor> setQ = this.f8334g.q();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(setQ, 10)), 16));
        for (InternalVendor internalVendor : setQ) {
            String didomiId = internalVendor.getDidomiId();
            if (didomiId == null) {
                didomiId = internalVendor.getId();
            }
            Pair pair2 = TuplesKt.to(didomiId, new CurrentUserStatus.VendorStatus(didomiId, f() || ((!C1870q3.d(internalVendor) || this.c.b(internalVendor.getId()) == ConsentStatus.ENABLE) && (!C1870q3.f(internalVendor) || a(this.c.d(internalVendor.getId()))))));
            linkedHashMap2.put(pair2.f(), pair2.g());
        }
        String strD = this.c.d();
        String str = strD == null ? "" : strD;
        String strA = this.c.a();
        String str2 = strA == null ? "" : strA;
        C1917v0 c1917v0 = C1917v0.a;
        String strD2 = c1917v0.d(a().getCreated());
        String str3 = strD2 == null ? "" : strD2;
        String strD3 = c1917v0.d(a().getUpdated());
        String str4 = strD3 == null ? "" : strD3;
        String userId = this.f8333f.getUserId();
        String strD4 = this.f8331d.d();
        return new CurrentUserStatus(linkedHashMap, linkedHashMap2, userId, str3, str4, str2, str, strD4 == null ? "" : strD4, c().getValue());
    }

    public final UserStatus d() {
        Set<String> setW = this.f8334g.w();
        Set<String> setX = this.f8334g.x();
        UserStatus.Ids idsA = a(setW);
        UserStatus.Ids idsB = b(setW);
        UserStatus.Ids ids = f() ? new UserStatus.Ids(null, this.f8334g.m(), 1, null) : new UserStatus.Ids(CollectionsKt___CollectionsKt.toSet(a().getDisabledPurposes().keySet()), CollectionsKt___CollectionsKt.toSet(a().getEnabledPurposes().keySet()));
        UserStatus.Purposes purposes = new UserStatus.Purposes(e(), ids, f() ? new UserStatus.Ids(null, this.f8334g.j(), 1, null) : new UserStatus.Ids(CollectionsKt___CollectionsKt.toSet(a().getDisabledLegitimatePurposes().keySet()), CollectionsKt___CollectionsKt.toSet(a().getEnabledLegitimatePurposes().keySet())), this.c.f());
        UserStatus.Ids ids2 = f() ? new UserStatus.Ids(null, this.f8334g.o(), 1, null) : new UserStatus.Ids(CollectionsKt___CollectionsKt.toSet(a().getDisabledVendors().keySet()), CollectionsKt___CollectionsKt.toSet(a().getEnabledVendors().keySet()));
        UserStatus.Ids idsA2 = a(idsA, idsB, setX);
        if (f()) {
            idsA = new UserStatus.Ids(null, this.f8334g.o(), 1, null);
        }
        UserStatus.Ids ids3 = idsA;
        if (f()) {
            idsB = new UserStatus.Ids(null, this.f8334g.p(), 1, null);
        }
        UserStatus.Vendors vendors = new UserStatus.Vendors(idsA2, ids3, idsB, ids2, f() ? new UserStatus.Ids(null, this.f8334g.p(), 1, null) : new UserStatus.Ids(CollectionsKt___CollectionsKt.toSet(a().getDisabledLegitimateVendors().keySet()), CollectionsKt___CollectionsKt.toSet(a().getEnabledLegitimateVendors().keySet())));
        String strD = this.c.d();
        String str = strD == null ? "" : strD;
        String strA = this.c.a();
        String str2 = strA == null ? "" : strA;
        C1917v0 c1917v0 = C1917v0.a;
        String strD2 = c1917v0.d(a().getCreated());
        String str3 = strD2 == null ? "" : strD2;
        String strD3 = c1917v0.d(a().getUpdated());
        String str4 = strD3 == null ? "" : strD3;
        String userId = this.f8333f.getUserId();
        String strD4 = this.f8331d.d();
        return new UserStatus(purposes, vendors, userId, str3, str4, str2, str, strD4 == null ? "" : strD4, c().getValue());
    }
}
