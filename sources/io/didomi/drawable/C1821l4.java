package io.didomi.drawable;

import com.kidoz.sdk.api.players.web_player.WebPreferenceConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.C1806k;
import io.didomi.drawable.models.InternalPurpose;
import io.didomi.drawable.models.InternalVendor;
import io.didomi.iabtcf.decoder.v2.RestrictionType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.ranges.IntRange;

/* JADX INFO: renamed from: io.didomi.sdk.l4, reason: case insensitive filesystem */
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
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u001d2\u00020\u0001:\u0001\u0011BA\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0013R \u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u001d\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00180\u00028\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u0014\u0010\u001b¨\u0006\u001e"}, d2 = {"Lio/didomi/sdk/l4;", "", "", "Lio/didomi/sdk/k$a$b$a$b;", "configRestrictions", "Lio/didomi/sdk/d3;", "iabConfiguration", "", "", "Lio/didomi/sdk/models/InternalPurpose;", "availablePurposes", "", "Lio/didomi/sdk/models/InternalVendor;", "requiredVendors", "<init>", "(Ljava/util/List;Lio/didomi/sdk/d3;Ljava/util/Map;Ljava/util/Set;)V", "", "a", "()V", "Lio/didomi/sdk/d3;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/util/Map;", "c", "Ljava/util/Set;", "Lio/didomi/sdk/k4;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/util/List;", "()Ljava/util/List;", "publisherRestrictions", "e", "android_release"}, mv = {1, 8, 0})
public final class C1821l4 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f8684e = new a(null);
    private final InterfaceC1740d3 a;
    private final Map<String, InternalPurpose> b;
    private final Set<InternalVendor> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<PublisherRestriction> f8685d;

    /* JADX INFO: renamed from: io.didomi.sdk.l4$a */
    @Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\r\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003JC\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0005\u001a\u00020\u00042\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J1\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0010\u0010\u0018J\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0019\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0010\u0010\u001aJ\u001f\u0010\u0010\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0010\u0010\u001dJS\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u001e\u001a\u00020\u000f2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u001f\u001a\u0004\u0018\u00010\u00072\u0006\u0010 \u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\b2\b\u0010\"\u001a\u0004\u0018\u00010!H\u0002¢\u0006\u0004\b\u0010\u0010#J5\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00070\n2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0010\b\u0002\u0010$\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\nH\u0002¢\u0006\u0004\b\u0010\u0010%J\u001d\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\n2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0010\u0010&J+\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\n2\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00040'H\u0002¢\u0006\u0004\b\u0010\u0010(J3\u0010\u0010\u001a\u00020*2\u0006\u0010\u001e\u001a\u00020\u000f2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00070\nH\u0002¢\u0006\u0004\b\u0010\u0010+J\u001f\u0010\u0010\u001a\u00020*2\u0006\u0010,\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0010\u0010.J\u001f\u00100\u001a\u00020*2\u0006\u0010,\u001a\u00020\u000b2\u0006\u0010/\u001a\u00020\u0007H\u0002¢\u0006\u0004\b0\u0010.J\u001f\u00101\u001a\u00020*2\u0006\u0010,\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020\u0007H\u0002¢\u0006\u0004\b1\u0010.J\u001f\u00102\u001a\u00020*2\u0006\u0010,\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020\u0007H\u0002¢\u0006\u0004\b2\u0010.J\u001f\u00101\u001a\u00020\u00142\u0006\u0010,\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u000fH\u0000¢\u0006\u0004\b1\u00103J\u001f\u0010\u0010\u001a\u00020*2\u0006\u0010,\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u000fH\u0000¢\u0006\u0004\b\u0010\u00104R\u0014\u00105\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b5\u00106¨\u00067"}, d2 = {"Lio/didomi/sdk/l4$a;", "", "<init>", "()V", "", "maxVendorId", "", "", "Lio/didomi/sdk/models/InternalPurpose;", "availablePurposes", "", "Lio/didomi/sdk/models/InternalVendor;", "requiredVendors", "Lio/didomi/sdk/k$a$b$a$b;", "configPublisherRestriction", "Lio/didomi/sdk/k4;", "a", "(ILjava/util/Map;Ljava/util/Set;Lio/didomi/sdk/k$a$b$a$b;)Lio/didomi/sdk/k4;", "purposeId", "purposeIabId", "", "specialFeature", "Lio/didomi/sdk/k$a$b$a$b$b;", "configRestrictionType", "(Ljava/lang/String;IZLio/didomi/sdk/k$a$b$a$b$b;)Lio/didomi/sdk/k4;", "purpose", "(Lio/didomi/sdk/models/InternalPurpose;)Ljava/lang/Integer;", "forPurpose", "restrictionType", "(Lio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/k$a$b$a$b$b;)Z", "restriction", "restrictionId", "excludeVendorsFromList", "Lio/didomi/sdk/k$a$b$a$b$a;", "restrictionVendors", "(Lio/didomi/sdk/k4;Ljava/util/Set;ILjava/lang/String;ZLio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/k$a$b$a$b$a;)Lio/didomi/sdk/k4;", "excludedVendorIds", "(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;", "(I)Ljava/util/Set;", "", "(ILjava/util/List;)Ljava/util/Set;", "vendorIds", "", "(Lio/didomi/sdk/k4;Ljava/util/Set;Ljava/util/Set;)V", "vendor", "restrictedPurposeId", "(Lio/didomi/sdk/models/InternalVendor;Ljava/lang/String;)V", "restrictedSpecialFeatureIabId", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", "(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/k4;)Z", "(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/k4;)V", "COOKIES_PURPOSE_ID", "Ljava/lang/String;", "android_release"}, mv = {1, 8, 0})
    public static final class a {

        /* JADX INFO: renamed from: io.didomi.sdk.l4$a$a, reason: collision with other inner class name */
        @Metadata(mv = {1, 8, 0}, xi = 48)
        public /* synthetic */ class C0495a {
            public static final /* synthetic */ int[] a;
            public static final /* synthetic */ int[] b;
            public static final /* synthetic */ int[] c;

            static {
                int[] iArr = new int[C1806k.a.b.C0481a.C0483b.EnumC0488b.values().length];
                try {
                    iArr[C1806k.a.b.C0481a.C0483b.EnumC0488b.DISALLOW.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[C1806k.a.b.C0481a.C0483b.EnumC0488b.ALLOW.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[C1806k.a.b.C0481a.C0483b.EnumC0488b.REQUIRE_CONSENT.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[C1806k.a.b.C0481a.C0483b.EnumC0488b.REQUIRE_LI.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                a = iArr;
                int[] iArr2 = new int[C1806k.a.b.C0481a.C0483b.C0484a.EnumC0485a.values().length];
                try {
                    iArr2[C1806k.a.b.C0481a.C0483b.C0484a.EnumC0485a.ALL.ordinal()] = 1;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr2[C1806k.a.b.C0481a.C0483b.C0484a.EnumC0485a.LIST.ordinal()] = 2;
                } catch (NoSuchFieldError unused6) {
                }
                b = iArr2;
                int[] iArr3 = new int[RestrictionType.values().length];
                try {
                    iArr3[RestrictionType.NOT_ALLOWED.ordinal()] = 1;
                } catch (NoSuchFieldError unused7) {
                }
                try {
                    iArr3[RestrictionType.REQUIRE_CONSENT.ordinal()] = 2;
                } catch (NoSuchFieldError unused8) {
                }
                try {
                    iArr3[RestrictionType.REQUIRE_LEGITIMATE_INTEREST.ordinal()] = 3;
                } catch (NoSuchFieldError unused9) {
                }
                c = iArr3;
            }
        }

        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final PublisherRestriction a(int i, Map<String, InternalPurpose> map, Set<InternalVendor> set, C1806k.a.b.C0481a.C0483b c0483b) {
            String strB = c0483b.b();
            InternalPurpose internalPurpose = map.get(strB);
            if (internalPurpose == null) {
                Log.e$default("Purpose id " + strB + " specified in publisher restrictions is not an existing purpose", null, 2, null);
                return null;
            }
            Integer numA = a(internalPurpose);
            if (numA == null) {
                return null;
            }
            int iIntValue = numA.intValue();
            if (!a(internalPurpose, C1816l.a(c0483b))) {
                return null;
            }
            C1806k.a.b.C0481a.C0483b.C0484a c0484aD = c0483b.d();
            if (c0484aD == null) {
                Log.e$default("No Vendor information for publisher restriction " + c0483b.a(), null, 2, null);
                return null;
            }
            boolean z = C1816l.a(c0483b) == C1806k.a.b.C0481a.C0483b.EnumC0488b.ALLOW;
            boolean zIsSpecialFeature = internalPurpose.isSpecialFeature();
            if (strB == null) {
                strB = "";
            }
            PublisherRestriction publisherRestrictionA = a(strB, iIntValue, zIsSpecialFeature, C1816l.a(c0483b));
            if (publisherRestrictionA == null) {
                return null;
            }
            return a(publisherRestrictionA, set, i, c0483b.a(), z, internalPurpose, c0484aD);
        }

        private final PublisherRestriction a(PublisherRestriction publisherRestriction, Set<InternalVendor> set, int i, String str, boolean z, InternalPurpose internalPurpose, C1806k.a.b.C0481a.C0483b.C0484a c0484a) {
            Integer numValueOf;
            if (c0484a == null) {
                Log.e$default("No Vendor information for publisher restriction " + str, null, 2, null);
                return null;
            }
            C1806k.a.b.C0481a.C0483b.C0484a.EnumC0485a enumC0485aB = c0484a.b();
            if (z && enumC0485aB == C1806k.a.b.C0481a.C0483b.C0484a.EnumC0485a.ALL) {
                Log.d$default("Ignored restriction of type 'allow' with vendors type 'all' for purpose " + internalPurpose.getId(), null, 2, null);
                return null;
            }
            if (internalPurpose.isSpecialFeature() && enumC0485aB != C1806k.a.b.C0481a.C0483b.C0484a.EnumC0485a.ALL) {
                Log.e$default("Invalid restriction vendors type " + enumC0485aB + " for purpose " + internalPurpose.getId() + ": Only vendor restriction 'all' is valid for special features", null, 2, null);
                return null;
            }
            int i2 = C0495a.b[enumC0485aB.ordinal()];
            if (i2 == 1) {
                publisherRestriction.b(a(this, set, (Set) null, 2, (Object) null));
                publisherRestriction.a(a(i));
            } else {
                if (i2 != 2) {
                    Log.e$default("Invalid restriction vendors type: " + c0484a.b(), null, 2, null);
                    return null;
                }
                if (z) {
                    publisherRestriction.b(a(set, c0484a.a()));
                    Set<String> setA = c0484a.a();
                    ArrayList arrayList = new ArrayList();
                    for (String str2 : setA) {
                        try {
                            numValueOf = Integer.valueOf(Integer.parseInt(str2));
                        } catch (NumberFormatException unused) {
                            Log.e$default("Invalid vendor id " + str2 + " in publisher restriction for purpose " + internalPurpose.getId(), null, 2, null);
                            numValueOf = null;
                        }
                        if (numValueOf != null) {
                            arrayList.add(numValueOf);
                        }
                    }
                    publisherRestriction.a(a(i, arrayList));
                } else {
                    a(publisherRestriction, set, c0484a.a());
                }
            }
            Set<String> setF = publisherRestriction.f();
            if (setF != null && !setF.isEmpty()) {
                return publisherRestriction;
            }
            Log.e$default("No valid vendor information for publisher restriction " + str, null, 2, null);
            return null;
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0025 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0026  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private final io.didomi.drawable.PublisherRestriction a(java.lang.String r12, int r13, boolean r14, io.didomi.drawable.C1806k.a.b.C0481a.C0483b.EnumC0488b r15) {
            /*
                r11 = this;
                int[] r0 = io.didomi.drawable.C1821l4.a.C0495a.a
                int r15 = r15.ordinal()
                r15 = r0[r15]
                r0 = 1
                r1 = 0
                if (r15 == r0) goto L20
                r0 = 2
                if (r15 == r0) goto L1d
                r0 = 3
                if (r15 == r0) goto L1a
                r0 = 4
                if (r15 == r0) goto L17
                r6 = r1
                goto L23
            L17:
                io.didomi.iabtcf.decoder.v2.RestrictionType r15 = io.didomi.iabtcf.decoder.v2.RestrictionType.REQUIRE_LEGITIMATE_INTEREST
                goto L22
            L1a:
                io.didomi.iabtcf.decoder.v2.RestrictionType r15 = io.didomi.iabtcf.decoder.v2.RestrictionType.REQUIRE_CONSENT
                goto L22
            L1d:
                io.didomi.iabtcf.decoder.v2.RestrictionType r15 = io.didomi.iabtcf.decoder.v2.RestrictionType.NOT_ALLOWED
                goto L22
            L20:
                io.didomi.iabtcf.decoder.v2.RestrictionType r15 = io.didomi.iabtcf.decoder.v2.RestrictionType.NOT_ALLOWED
            L22:
                r6 = r15
            L23:
                if (r6 != 0) goto L26
                return r1
            L26:
                io.didomi.sdk.k4 r15 = new io.didomi.sdk.k4
                r7 = 0
                r8 = 0
                r9 = 48
                r10 = 0
                r2 = r15
                r3 = r12
                r4 = r13
                r5 = r14
                r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10)
                return r15
            */
            throw new UnsupportedOperationException("Method not decompiled: io.didomi.drawable.C1821l4.a.a(java.lang.String, int, boolean, io.didomi.sdk.k$a$b$a$b$b):io.didomi.sdk.k4");
        }

        private final Integer a(InternalPurpose internalPurpose) {
            String iabId = internalPurpose.getIabId();
            if (iabId == null) {
                Log.e$default("Purpose " + internalPurpose.getId() + " specified in publisher restrictions is not a TCF purpose", null, 2, null);
                return null;
            }
            try {
                return Integer.valueOf(Integer.parseInt(iabId));
            } catch (NumberFormatException unused) {
                Log.e$default("Error: Purpose iabId " + iabId + " is not an integer", null, 2, null);
                return null;
            }
        }

        private final Set<Integer> a(int i) {
            return CollectionsKt___CollectionsKt.toSet(new IntRange(1, i));
        }

        private final Set<Integer> a(int i, List<Integer> list) {
            IntRange intRange = new IntRange(1, i);
            ArrayList arrayList = new ArrayList();
            for (Integer num : intRange) {
                if (!list.contains(Integer.valueOf(num.intValue()))) {
                    arrayList.add(num);
                }
            }
            return CollectionsKt___CollectionsKt.toSet(arrayList);
        }

        /* JADX WARN: Multi-variable type inference failed */
        static /* synthetic */ Set a(a aVar, Set set, Set set2, int i, Object obj) {
            if ((i & 2) != 0) {
                set2 = null;
            }
            return aVar.a((Set<InternalVendor>) set, (Set<String>) set2);
        }

        private final Set<String> a(Set<InternalVendor> set, Set<String> set2) {
            ArrayList arrayList = new ArrayList();
            for (InternalVendor internalVendor : set) {
                String iabId = internalVendor.getIabId();
                if (iabId == null) {
                    iabId = internalVendor.getId();
                }
                if (set2 != null && set2.contains(iabId)) {
                    iabId = null;
                }
                if (iabId != null) {
                    arrayList.add(iabId);
                }
            }
            return CollectionsKt___CollectionsKt.toSet(arrayList);
        }

        private final void a(PublisherRestriction publisherRestriction, Set<InternalVendor> set, Set<String> set2) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
            for (String str : set2) {
                InternalVendor internalVendorA = C1870q3.a(set, str);
                if (internalVendorA != null) {
                    if (internalVendorA.isIabVendor()) {
                        linkedHashSet.add(str);
                        if (b(internalVendorA, publisherRestriction)) {
                            try {
                                linkedHashSet2.add(Integer.valueOf(Integer.parseInt(str)));
                            } catch (NumberFormatException unused) {
                                Log.e$default("Vendor ids for publisher restrictions should be numerical values. Invalid value: " + str, null, 2, null);
                            }
                        }
                    } else {
                        Log.e$default("Vendor " + str + " specified in publisher restrictions is not a valid IAB vendor.", null, 2, null);
                    }
                }
            }
            publisherRestriction.b(linkedHashSet);
            publisherRestriction.a(linkedHashSet2);
        }

        private final void a(InternalVendor internalVendor, String str) {
            if (internalVendor.getPurposeIds().contains(str)) {
                List<String> purposeIds = internalVendor.getPurposeIds();
                ArrayList arrayList = new ArrayList();
                for (Object obj : purposeIds) {
                    if (!Intrinsics.areEqual((String) obj, str)) {
                        arrayList.add(obj);
                    }
                }
                internalVendor.setPurposeIds(CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList));
            }
            if (internalVendor.getLegIntPurposeIds().contains(str)) {
                List<String> legIntPurposeIds = internalVendor.getLegIntPurposeIds();
                ArrayList arrayList2 = new ArrayList();
                for (Object obj2 : legIntPurposeIds) {
                    if (!Intrinsics.areEqual((String) obj2, str)) {
                        arrayList2.add(obj2);
                    }
                }
                internalVendor.setLegIntPurposeIds(CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList2));
            }
        }

        private final boolean a(InternalPurpose internalPurpose, C1806k.a.b.C0481a.C0483b.EnumC0488b enumC0488b) {
            if (internalPurpose.isSpecialFeature() && enumC0488b != C1806k.a.b.C0481a.C0483b.EnumC0488b.DISALLOW) {
                Log.e$default("Invalid restriction type " + enumC0488b + " for purpose " + internalPurpose.getId() + ": Only 'disallow' type is valid for special features", null, 2, null);
                return false;
            }
            if (!Intrinsics.areEqual(internalPurpose.getId(), WebPreferenceConstants.COOKIES) || enumC0488b == C1806k.a.b.C0481a.C0483b.EnumC0488b.ALLOW || enumC0488b == C1806k.a.b.C0481a.C0483b.EnumC0488b.DISALLOW) {
                return enumC0488b != C1806k.a.b.C0481a.C0483b.EnumC0488b.UNKNOWN;
            }
            Log.e$default("Invalid restriction type " + enumC0488b + " for purpose cookies: Only 'allow' and 'disallow' type are valid for Cookies purpose", null, 2, null);
            return false;
        }

        private final void b(InternalVendor internalVendor, String str) {
            if (internalVendor.getLegIntPurposeIds().contains(str)) {
                List<String> legIntPurposeIds = internalVendor.getLegIntPurposeIds();
                ArrayList arrayList = new ArrayList();
                for (Object obj : legIntPurposeIds) {
                    if (true ^ Intrinsics.areEqual((String) obj, str)) {
                        arrayList.add(obj);
                    }
                }
                internalVendor.setLegIntPurposeIds(CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList));
                if (!internalVendor.getFlexiblePurposeIds().contains(str) || internalVendor.getPurposeIds().contains(str)) {
                    return;
                }
                List<String> listMutableListOf = CollectionsKt__CollectionsKt.mutableListOf(str);
                listMutableListOf.addAll(internalVendor.getPurposeIds());
                internalVendor.setPurposeIds(listMutableListOf);
            }
        }

        private final void c(InternalVendor internalVendor, String str) {
            if (internalVendor.getPurposeIds().contains(str)) {
                List<String> purposeIds = internalVendor.getPurposeIds();
                ArrayList arrayList = new ArrayList();
                for (Object obj : purposeIds) {
                    if (true ^ Intrinsics.areEqual((String) obj, str)) {
                        arrayList.add(obj);
                    }
                }
                internalVendor.setPurposeIds(CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList));
                if (!internalVendor.getFlexiblePurposeIds().contains(str) || internalVendor.getLegIntPurposeIds().contains(str)) {
                    return;
                }
                List<String> listMutableListOf = CollectionsKt__CollectionsKt.mutableListOf(str);
                listMutableListOf.addAll(internalVendor.getLegIntPurposeIds());
                internalVendor.setLegIntPurposeIds(listMutableListOf);
            }
        }

        private final void d(InternalVendor internalVendor, String str) {
            List<String> specialFeatureIds = internalVendor.getSpecialFeatureIds();
            ArrayList arrayList = new ArrayList();
            for (Object obj : specialFeatureIds) {
                if (!Intrinsics.areEqual((String) obj, str)) {
                    arrayList.add(obj);
                }
            }
            internalVendor.setSpecialFeatureIds(arrayList);
        }

        public final void a(InternalVendor vendor, PublisherRestriction restriction) {
            Intrinsics.checkNotNullParameter(vendor, "vendor");
            Intrinsics.checkNotNullParameter(restriction, "restriction");
            int i = C0495a.c[restriction.getRestrictionType().ordinal()];
            if (i == 1) {
                if (restriction.getSpecialFeature()) {
                    d(vendor, String.valueOf(restriction.getPurposeIabId()));
                    return;
                } else {
                    a(vendor, restriction.getPurposeId());
                    return;
                }
            }
            if (i == 2) {
                b(vendor, restriction.getPurposeId());
            } else {
                if (i != 3) {
                    return;
                }
                c(vendor, restriction.getPurposeId());
            }
        }

        public final boolean b(InternalVendor vendor, PublisherRestriction restriction) {
            Intrinsics.checkNotNullParameter(vendor, "vendor");
            Intrinsics.checkNotNullParameter(restriction, "restriction");
            String purposeId = restriction.getPurposeId();
            int i = C0495a.c[restriction.getRestrictionType().ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i == 3 && vendor.getPurposeIds().contains(purposeId) && vendor.getFlexiblePurposeIds().contains(purposeId)) {
                        return true;
                    }
                } else if (vendor.getLegIntPurposeIds().contains(purposeId) && vendor.getFlexiblePurposeIds().contains(purposeId)) {
                    return true;
                }
            } else if (!restriction.getSpecialFeature() && (vendor.getPurposeIds().contains(purposeId) || vendor.getLegIntPurposeIds().contains(purposeId))) {
                return true;
            }
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public C1821l4(java.util.List<io.didomi.drawable.C1806k.a.b.C0481a.C0483b> r4, io.didomi.drawable.InterfaceC1740d3 r5, java.util.Map<java.lang.String, io.didomi.drawable.models.InternalPurpose> r6, java.util.Set<io.didomi.drawable.models.InternalVendor> r7) {
        /*
            r3 = this;
            java.lang.String r0 = "iabConfiguration"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "availablePurposes"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.lang.String r0 = "requiredVendors"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            r3.<init>()
            r3.a = r5
            r3.b = r6
            r3.c = r7
            if (r4 == 0) goto L4b
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            java.util.Iterator r4 = r4.iterator()
        L23:
            boolean r6 = r4.hasNext()
            if (r6 == 0) goto L45
            java.lang.Object r6 = r4.next()
            io.didomi.sdk.k$a$b$a$b r6 = (io.didomi.drawable.C1806k.a.b.C0481a.C0483b) r6
            io.didomi.sdk.l4$a r7 = io.didomi.drawable.C1821l4.f8684e
            io.didomi.sdk.d3 r0 = r3.a
            int r0 = r0.f()
            java.util.Map<java.lang.String, io.didomi.sdk.models.InternalPurpose> r1 = r3.b
            java.util.Set<io.didomi.sdk.models.InternalVendor> r2 = r3.c
            io.didomi.sdk.k4 r6 = io.didomi.drawable.C1821l4.a.a(r7, r0, r1, r2, r6)
            if (r6 == 0) goto L23
            r5.add(r6)
            goto L23
        L45:
            java.util.List r4 = kotlin.collections.p.distinct(r5)
            if (r4 != 0) goto L4f
        L4b:
            java.util.List r4 = kotlin.collections.p.emptyList()
        L4f:
            r3.f8685d = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.didomi.drawable.C1821l4.<init>(java.util.List, io.didomi.sdk.d3, java.util.Map, java.util.Set):void");
    }

    public final void a() {
        for (PublisherRestriction publisherRestriction : this.f8685d) {
            Set<String> setF = publisherRestriction.f();
            if (setF != null) {
                Iterator<T> it = setF.iterator();
                while (it.hasNext()) {
                    InternalVendor internalVendorA = C1870q3.a(this.c, (String) it.next());
                    if (internalVendorA != null) {
                        f8684e.a(internalVendorA, publisherRestriction);
                    }
                }
            }
        }
    }

    public final List<PublisherRestriction> b() {
        return this.f8685d;
    }
}
