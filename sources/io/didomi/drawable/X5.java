package io.didomi.drawable;

import android.text.SpannableString;
import android.text.style.UnderlineSpan;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

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
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u001a\u0011\u0010\u0001\u001a\u00020\u0000*\u00020\u0000¢\u0006\u0004\b\u0001\u0010\u0002\u001a\u0011\u0010\u0004\u001a\u00020\u0003*\u00020\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u001b\u0010\u0001\u001a\u00020\u0003*\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0001\u0010\b\u001a\u001b\u0010\u0001\u001a\u00020\u0003*\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0001\u0010\t¨\u0006\n"}, d2 = {"", "a", "(Ljava/lang/String;)Ljava/lang/String;", "Landroid/text/SpannableString;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;)Landroid/text/SpannableString;", "", TypedValues.CycleType.S_WAVE_OFFSET, "(Ljava/lang/String;I)Landroid/text/SpannableString;", "(Landroid/text/SpannableString;I)Landroid/text/SpannableString;", "android_release"}, mv = {1, 8, 0})
public final class X5 {
    public static final SpannableString a(SpannableString spannableString, int i) {
        Intrinsics.checkNotNullParameter(spannableString, "<this>");
        int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) spannableString, "→", 0, false, 6, (Object) null) - 1;
        if (iIndexOf$default > 0) {
            spannableString.setSpan(new UnderlineSpan(), 0, iIndexOf$default, 33);
            spannableString.setSpan(new C1916v(i), iIndexOf$default, spannableString.length(), 33);
        } else {
            spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 33);
        }
        return spannableString;
    }

    public static /* synthetic */ SpannableString a(SpannableString spannableString, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 5;
        }
        return a(spannableString, i);
    }

    public static final SpannableString a(String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        SpannableString spannableString = new SpannableString(str);
        int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) spannableString, "→", 0, false, 6, (Object) null) - 1;
        if (iIndexOf$default > 0) {
            spannableString.setSpan(new C1916v(i), iIndexOf$default, spannableString.length(), 33);
        }
        return spannableString;
    }

    public static /* synthetic */ SpannableString a(String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 5;
        }
        return a(str, i);
    }

    public static final String a(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return StringsKt__StringsKt.trim(StringsKt__StringsKt.substringBeforeLast$default(str, "→", (String) null, 2, (Object) null)).toString();
    }

    public static final SpannableString b(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        String string = StringsKt__StringsKt.trim(str).toString();
        if (!StringsKt__StringsJVMKt.endsWith$default(string, "→", false, 2, null)) {
            string = StringsKt__StringsKt.trim(string + " →").toString();
        }
        return new SpannableString(string);
    }
}
