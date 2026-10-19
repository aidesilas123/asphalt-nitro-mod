package io.didomi.drawable;

import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.C1806k;
import io.didomi.drawable.models.InternalVendor;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: renamed from: io.didomi.sdk.l, reason: case insensitive filesystem */
/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Exception occurred when reading Kotlin metadata
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:108)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
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
    	... 4 more
    */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0011\u0010\u0002\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0011\u0010\u0005\u001a\u00020\u0004*\u00020\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u0011\u0010\u0007\u001a\u00020\u0004*\u00020\u0000¢\u0006\u0004\b\u0007\u0010\u0006\u001a\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00010\b*\u00020\u0000¢\u0006\u0004\b\t\u0010\n\u001a\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\r0\f*\u00020\u000b¢\u0006\u0004\b\u0005\u0010\u000e\u001a\u0011\u0010\u0002\u001a\u00020\u0010*\u00020\u000f¢\u0006\u0004\b\u0002\u0010\u0011\u001a\u0013\u0010\t\u001a\u0004\u0018\u00010\u0001*\u00020\u000f¢\u0006\u0004\b\t\u0010\u0012\u001a\u0011\u0010\u0005\u001a\u00020\u0014*\u00020\u0013¢\u0006\u0004\b\u0005\u0010\u0015\u001a\u0011\u0010\u0005\u001a\u00020\u0017*\u00020\u0016¢\u0006\u0004\b\u0005\u0010\u0018\u001a\u0011\u0010\u0002\u001a\u00020\u0010*\u00020\u0016¢\u0006\u0004\b\u0002\u0010\u0019\u001a\u0011\u0010\u0007\u001a\u00020\u0010*\u00020\u0016¢\u0006\u0004\b\u0007\u0010\u0019\u001a\u0011\u0010\t\u001a\u00020\u001a*\u00020\u0016¢\u0006\u0004\b\t\u0010\u001b\u001a\u0011\u0010\u0005\u001a\u00020\u0017*\u00020\u001c¢\u0006\u0004\b\u0005\u0010\u001d\u001a\u0011\u0010\u0005\u001a\u00020\u0001*\u00020\u001e¢\u0006\u0004\b\u0005\u0010\u001f\u001a\u0013\u0010\u0005\u001a\u0004\u0018\u00010!*\u00020 ¢\u0006\u0004\b\u0005\u0010\"\u001a\u0011\u0010\u0005\u001a\u00020#*\u00020\u000f¢\u0006\u0004\b\u0005\u0010$\u001a\u0011\u0010\u0007\u001a\u00020%*\u00020\u000f¢\u0006\u0004\b\u0007\u0010&¨\u0006'"}, d2 = {"Lio/didomi/sdk/k$a;", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Lio/didomi/sdk/k$a;)Ljava/lang/String;", "", "a", "(Lio/didomi/sdk/k$a;)J", "c", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Lio/didomi/sdk/k$a;)Ljava/util/List;", "Lio/didomi/sdk/k$a$b;", "", "Lio/didomi/sdk/models/InternalVendor;", "(Lio/didomi/sdk/k$a$b;)Ljava/util/Set;", "Lio/didomi/sdk/k;", "", "(Lio/didomi/sdk/k;)Z", "(Lio/didomi/sdk/k;)Ljava/lang/String;", "Lio/didomi/sdk/k$a$b$a$b;", "Lio/didomi/sdk/k$a$b$a$b$b;", "(Lio/didomi/sdk/k$a$b$a$b;)Lio/didomi/sdk/k$a$b$a$b$b;", "Lio/didomi/sdk/k$f;", "Lio/didomi/sdk/k$i$a;", "(Lio/didomi/sdk/k$f;)Lio/didomi/sdk/k$i$a;", "(Lio/didomi/sdk/k$f;)Z", "Lio/didomi/sdk/k$f$d;", "(Lio/didomi/sdk/k$f;)Lio/didomi/sdk/k$f$d;", "Lio/didomi/sdk/k$f$c;", "(Lio/didomi/sdk/k$f$c;)Lio/didomi/sdk/k$i$a;", "Lio/didomi/sdk/k$i;", "(Lio/didomi/sdk/k$i;)Ljava/lang/String;", "Lio/didomi/sdk/k$k;", "Ljava/util/Date;", "(Lio/didomi/sdk/k$k;)Ljava/util/Date;", "", "(Lio/didomi/sdk/k;)I", "Lio/didomi/sdk/Regulation;", "(Lio/didomi/sdk/k;)Lio/didomi/sdk/Regulation;", "android_release"}, mv = {1, 8, 0})
public final class C1816l {
    public static final int a(C1806k c1806k) {
        Intrinsics.checkNotNullParameter(c1806k, "<this>");
        Integer numL = c1806k.a().m().d().l();
        if (numL != null) {
            return numL.intValue();
        }
        return 7;
    }

    public static final long a(C1806k.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Object objA = aVar.a();
        long jLongValue = objA instanceof Number ? ((Number) aVar.a()).longValue() : objA instanceof String ? V5.a((String) aVar.a(), 31622400L) : 31622400L;
        if (jLongValue > 0) {
            return jLongValue;
        }
        return 31622400L;
    }

    public static final C1806k.a.b.C0481a.C0483b.EnumC0488b a(C1806k.a.b.C0481a.C0483b c0483b) {
        Intrinsics.checkNotNullParameter(c0483b, "<this>");
        C1806k.a.b.C0481a.C0483b.EnumC0488b.C0489a c0489a = C1806k.a.b.C0481a.C0483b.EnumC0488b.b;
        String strC = c0483b.c();
        if (strC == null) {
            strC = "";
        }
        return c0489a.a(strC);
    }

    public static final C1806k.i.a a(C1806k.f.c cVar) {
        Intrinsics.checkNotNullParameter(cVar, "<this>");
        return C1806k.i.a.b.a(cVar.a());
    }

    public static final C1806k.i.a a(C1806k.f fVar) {
        Intrinsics.checkNotNullParameter(fVar, "<this>");
        return fVar.f() != null ? a(fVar.f()) : (!Intrinsics.areEqual(fVar.j(), "optin") || fVar.d()) ? C1806k.i.a.NONE : fVar.e() ? C1806k.i.a.PRIMARY : C1806k.i.a.SECONDARY;
    }

    public static final String a(C1806k.i iVar) {
        Intrinsics.checkNotNullParameter(iVar, "<this>");
        return C1936x.a.a(iVar.c());
    }

    public static final Date a(C1806k.C0494k c0494k) {
        Intrinsics.checkNotNullParameter(c0494k, "<this>");
        String strB = c0494k.b();
        if (strB == null || StringsKt__StringsJVMKt.isBlank(strB)) {
            return null;
        }
        C1917v0 c1917v0 = C1917v0.a;
        Date dateA = c1917v0.a(c0494k.b());
        if (c1917v0.c(dateA)) {
            return dateA;
        }
        return null;
    }

    public static final Set<InternalVendor> a(C1806k.a.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        Set<ConfigVendor> setA = bVar.a();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(setA, 10));
        for (ConfigVendor configVendor : setA) {
            String id = configVendor.getId();
            arrayList.add((id == null || !StringsKt__StringsJVMKt.startsWith$default(id, "c:", false, 2, null)) ? D.a(configVendor.a((1834990 & 1) != 0 ? configVendor.id : "c:" + configVendor.getId(), (1834990 & 2) != 0 ? configVendor.iabId : null, (1834990 & 4) != 0 ? configVendor.name : null, (1834990 & 8) != 0 ? configVendor.privacyPolicyUrl : null, (1834990 & 16) != 0 ? configVendor.namespace : "custom", (1834990 & 32) != 0 ? configVendor.namespaces : null, (1834990 & 64) != 0 ? configVendor.purposeIds : null, (1834990 & 128) != 0 ? configVendor.flexiblePurposeIds : null, (1834990 & 256) != 0 ? configVendor.specialPurposeIds : null, (1834990 & 512) != 0 ? configVendor.legIntPurposeIds : null, (1834990 & 1024) != 0 ? configVendor.featureIds : null, (1834990 & 2048) != 0 ? configVendor.specialFeatureIds : null, (1834990 & 4096) != 0 ? configVendor.cookieMaxAgeSeconds : null, (1834990 & 8192) != 0 ? configVendor.usesNonCookieAccess : null, (1834990 & 16384) != 0 ? configVendor.deviceStorageDisclosureUrl : null, (1834990 & 32768) != 0 ? configVendor.dataDeclaration : null, (1834990 & 65536) != 0 ? configVendor.dataRetention : null, (1834990 & 131072) != 0 ? configVendor.urls : null, (1834990 & 262144) != 0 ? configVendor.didomiId : configVendor.getId(), (1834990 & 524288) != 0 ? configVendor.deletedDate : null, (1834990 & 1048576) != 0 ? configVendor.essentialPurposeIds : null)) : D.a(configVendor));
        }
        return CollectionsKt___CollectionsKt.toSet(arrayList);
    }

    public static final String b(C1806k.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        if (!C1925v8.a.c(aVar.b())) {
            return "AA";
        }
        String strB = aVar.b();
        Locale ENGLISH = Locale.ENGLISH;
        Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
        String upperCase = strB.toUpperCase(ENGLISH);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        return upperCase;
    }

    public static final boolean b(C1806k.f fVar) {
        Intrinsics.checkNotNullParameter(fVar, "<this>");
        C1806k.f.c cVarF = fVar.f();
        if (cVarF != null) {
            return cVarF.b();
        }
        return false;
    }

    public static final boolean b(C1806k c1806k) {
        Intrinsics.checkNotNullParameter(c1806k, "<this>");
        return c(c1806k) == Regulation.GDPR && c1806k.a().m().d().c() && c1806k.a().m().d().b();
    }

    public static final long c(C1806k.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Object objE = aVar.e();
        long jLongValue = objE instanceof Number ? ((Number) aVar.e()).longValue() : objE instanceof String ? V5.a((String) aVar.e(), -1L) : -1L;
        if (jLongValue > 0) {
            return jLongValue;
        }
        return -1L;
    }

    public static final Regulation c(C1806k c1806k) {
        Intrinsics.checkNotNullParameter(c1806k, "<this>");
        String strB = c1806k.g().b();
        Regulation regulation = Regulation.CCPA;
        if (Intrinsics.areEqual(strB, regulation.getValue()) && c1806k.g().a() != null) {
            return regulation;
        }
        String strB2 = c1806k.g().b();
        Regulation regulation2 = Regulation.CPA;
        if (Intrinsics.areEqual(strB2, regulation2.getValue())) {
            return regulation2;
        }
        String strB3 = c1806k.g().b();
        Regulation regulation3 = Regulation.CPRA;
        if (Intrinsics.areEqual(strB3, regulation3.getValue())) {
            return regulation3;
        }
        String strB4 = c1806k.g().b();
        Regulation regulation4 = Regulation.CTDPA;
        if (Intrinsics.areEqual(strB4, regulation4.getValue())) {
            return regulation4;
        }
        String strB5 = c1806k.g().b();
        Regulation regulation5 = Regulation.DPDPA;
        if (Intrinsics.areEqual(strB5, regulation5.getValue())) {
            return regulation5;
        }
        String strB6 = c1806k.g().b();
        Regulation regulation6 = Regulation.FDBR;
        if (Intrinsics.areEqual(strB6, regulation6.getValue())) {
            return regulation6;
        }
        String strB7 = c1806k.g().b();
        Regulation regulation7 = Regulation.IDPL;
        if (Intrinsics.areEqual(strB7, regulation7.getValue())) {
            return regulation7;
        }
        String strB8 = c1806k.g().b();
        Regulation regulation8 = Regulation.MCDPA;
        if (Intrinsics.areEqual(strB8, regulation8.getValue())) {
            return regulation8;
        }
        String strB9 = c1806k.g().b();
        Regulation regulation9 = Regulation.NHPA;
        if (Intrinsics.areEqual(strB9, regulation9.getValue())) {
            return regulation9;
        }
        String strB10 = c1806k.g().b();
        Regulation regulation10 = Regulation.NJDPA;
        if (Intrinsics.areEqual(strB10, regulation10.getValue())) {
            return regulation10;
        }
        String strB11 = c1806k.g().b();
        Regulation regulation11 = Regulation.NONE;
        if (Intrinsics.areEqual(strB11, regulation11.getValue())) {
            return regulation11;
        }
        String strB12 = c1806k.g().b();
        Regulation regulation12 = Regulation.OCPA;
        if (Intrinsics.areEqual(strB12, regulation12.getValue())) {
            return regulation12;
        }
        String strB13 = c1806k.g().b();
        Regulation regulation13 = Regulation.TDPSA;
        if (Intrinsics.areEqual(strB13, regulation13.getValue())) {
            return regulation13;
        }
        String strB14 = c1806k.g().b();
        Regulation regulation14 = Regulation.UCPA;
        if (Intrinsics.areEqual(strB14, regulation14.getValue()) && c1806k.b().b()) {
            return regulation14;
        }
        String strB15 = c1806k.g().b();
        Regulation regulation15 = Regulation.VCDPA;
        return Intrinsics.areEqual(strB15, regulation15.getValue()) ? regulation15 : Regulation.GDPR;
    }

    public static final boolean c(C1806k.f fVar) {
        Intrinsics.checkNotNullParameter(fVar, "<this>");
        C1806k.f.c cVarF = fVar.f();
        return cVarF != null ? cVarF.c() : fVar.d() && Intrinsics.areEqual(fVar.j(), "optin");
    }

    public static final C1806k.f.d d(C1806k.f fVar) {
        Intrinsics.checkNotNullParameter(fVar, "<this>");
        return C1806k.f.d.b.a(fVar.i());
    }

    public static final String d(C1806k c1806k) {
        Intrinsics.checkNotNullParameter(c1806k, "<this>");
        if (!b(c1806k)) {
            return null;
        }
        if (c1806k.a().m().d().h() == null) {
            return "2.2";
        }
        if (c1806k.a().m().d().g() <= 2 && c1806k.a().m().d().h().intValue() < 2) {
            return MBridgeConstans.API_REUQEST_CATEGORY_APP;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(c1806k.a().m().d().g());
        sb.append('.');
        sb.append(c1806k.a().m().d().h());
        return sb.toString();
    }

    public static final List<String> d(C1806k.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        List<String> listG = aVar.g();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listG) {
            String str = (String) obj;
            List<CustomPurpose> listC = aVar.c();
            if (!(listC instanceof Collection) || !listC.isEmpty()) {
                Iterator<T> it = listC.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    if (Intrinsics.areEqual(((CustomPurpose) it.next()).getId(), str)) {
                        arrayList.add(obj);
                        break;
                    }
                }
            }
        }
        return arrayList;
    }
}
