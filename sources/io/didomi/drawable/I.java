package io.didomi.drawable;

import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import io.didomi.drawable.C1806k;
import io.didomi.drawable.purpose.common.model.PurposeCategory;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

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
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u000f\u001a\u0011\u0010\u0002\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0011\u0010\u0004\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u0004\u0010\u0003\u001a\u0011\u0010\u0005\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u0005\u0010\u0003\u001a\u0011\u0010\u0006\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u0006\u0010\u0003\u001a\u0011\u0010\u0007\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u0007\u0010\u0003\u001a\u0011\u0010\b\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\b\u0010\u0003\u001a\u0011\u0010\t\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\t\u0010\u0003\u001a\u0011\u0010\n\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\n\u0010\u0003\u001a\u0011\u0010\u000b\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u000b\u0010\u0003\u001a\u0011\u0010\f\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\f\u0010\u0003\u001a\u0011\u0010\r\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\r\u0010\u0003\u001a\u0011\u0010\u000e\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u000e\u0010\u0003\u001a\u0011\u0010\u000f\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u000f\u0010\u0003¨\u0006\u0010"}, d2 = {"Lio/didomi/sdk/H;", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Lio/didomi/sdk/H;)Z", "i", CampaignEx.JSON_KEY_AD_K, "l", "j", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "g", InneractiveMediationDefs.GENDER_FEMALE, InneractiveMediationDefs.GENDER_MALE, "a", "e", "h", "android_release"}, mv = {1, 8, 0})
public final class I {
    public static final boolean a(H h) {
        Intrinsics.checkNotNullParameter(h, "<this>");
        return !h.b().e().a().d().isEmpty();
    }

    public static final boolean b(H h) {
        Intrinsics.checkNotNullParameter(h, "<this>");
        return h.e() != Regulation.NONE;
    }

    public static final boolean c(H h) {
        Intrinsics.checkNotNullParameter(h, "<this>");
        return !l(h);
    }

    public static final boolean d(H h) {
        Intrinsics.checkNotNullParameter(h, "<this>");
        return k(h);
    }

    public static final boolean e(H h) {
        Intrinsics.checkNotNullParameter(h, "<this>");
        return h.b().e().g();
    }

    public static final boolean f(H h) {
        Intrinsics.checkNotNullParameter(h, "<this>");
        return !l(h);
    }

    public static final boolean g(H h) {
        Intrinsics.checkNotNullParameter(h, "<this>");
        return l(h);
    }

    public static final boolean h(H h) {
        Intrinsics.checkNotNullParameter(h, "<this>");
        if (l(h) && a(h)) {
            SensitivePersonalInformation sensitivePersonalInformationF = h.b().f().f();
            List<PurposeCategory> listA = sensitivePersonalInformationF != null ? sensitivePersonalInformationF.a() : null;
            if (listA != null && !listA.isEmpty()) {
                return false;
            }
        }
        return true;
    }

    public static final boolean i(H h) {
        Intrinsics.checkNotNullParameter(h, "<this>");
        return h.e() == Regulation.CCPA;
    }

    public static final boolean j(H h) {
        Intrinsics.checkNotNullParameter(h, "<this>");
        return h.b().j().d() || h.b().j().f().g() || i(h) || C1816l.d(h.b().e()) == C1806k.f.d.BOTTOM;
    }

    public static final boolean k(H h) {
        Intrinsics.checkNotNullParameter(h, "<this>");
        return h.e() == Regulation.GDPR;
    }

    public static final boolean l(H h) {
        Intrinsics.checkNotNullParameter(h, "<this>");
        return h.e().getMixed();
    }

    public static final boolean m(H h) {
        Intrinsics.checkNotNullParameter(h, "<this>");
        return l(h);
    }
}
