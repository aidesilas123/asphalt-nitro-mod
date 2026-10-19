package io.didomi.drawable;

import android.text.Spanned;
import android.util.Patterns;
import androidx.core.text.HtmlCompat;
import androidx.webkit.ProxyConfig;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Regex;
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
@Metadata(d1 = {"\u00006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\r\n\u0002\b\u0006\u001a\u0015\u0010\u0001\u001a\u0004\u0018\u00010\u0000*\u0004\u0018\u00010\u0000¢\u0006\u0004\b\u0001\u0010\u0002\u001a\u0013\u0010\u0004\u001a\u00020\u0003*\u0004\u0018\u00010\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u0013\u0010\u0006\u001a\u00020\u0003*\u0004\u0018\u00010\u0000¢\u0006\u0004\b\u0006\u0010\u0005\u001a\u001d\u0010\b\u001a\u00020\u0003*\u0004\u0018\u00010\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0000¢\u0006\u0004\b\b\u0010\t\u001a#\u0010\b\u001a\u00020\u0000*\u0004\u0018\u00010\u00002\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\b\u0010\u000e\u001a\u001d\u0010\b\u001a\u00020\u000f*\u0004\u0018\u00010\u00002\b\b\u0002\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\b\u0010\u0011\u001a\u0011\u0010\u0012\u001a\u00020\u0000*\u00020\u0000¢\u0006\u0004\b\u0012\u0010\u0002\u001a\u0011\u0010\u0014\u001a\u00020\u0013*\u00020\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u001a\u0019\u0010\u0017\u001a\u00020\u0013*\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u001a\u0013\u0010\u0019\u001a\u00020\u0013*\u00020\u0000H\u0000¢\u0006\u0004\b\u0019\u0010\u0015\u001a\u0015\u0010\u001b\u001a\u00020\u001a*\u0004\u0018\u00010\u0000H\u0000¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u0013\u0010\u001d\u001a\u00020\u0013*\u00020\u0000H\u0000¢\u0006\u0004\b\u001d\u0010\u0015\u001a\u0013\u0010\u001e\u001a\u00020\u0000*\u00020\u0000H\u0000¢\u0006\u0004\b\u001e\u0010\u0002\u001a\u0013\u0010\u0017\u001a\u00020\u0000*\u00020\u0000H\u0000¢\u0006\u0004\b\u0017\u0010\u0002\u001a\u0015\u0010\u001f\u001a\u00020\u0000*\u0004\u0018\u00010\u0000H\u0002¢\u0006\u0004\b\u001f\u0010\u0002\u001a\u0013\u0010\b\u001a\u00020\u0003*\u00020\u0000H\u0002¢\u0006\u0004\b\b\u0010\u0005¨\u0006 "}, d2 = {"", "e", "(Ljava/lang/String;)Ljava/lang/String;", "", "c", "(Ljava/lang/String;)Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "link", "a", "(Ljava/lang/String;Ljava/lang/String;)Z", "Lio/didomi/sdk/W5;", "transformation", "Ljava/util/Locale;", "locale", "(Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Locale;)Ljava/lang/String;", "", "default", "(Ljava/lang/String;J)J", "g", "Landroid/text/Spanned;", "i", "(Ljava/lang/String;)Landroid/text/Spanned;", "url", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;", "j", "", "l", "(Ljava/lang/String;)Ljava/lang/CharSequence;", CampaignEx.JSON_KEY_AD_K, "h", InneractiveMediationDefs.GENDER_FEMALE, "android_release"}, mv = {1, 8, 0})
public final class V5 {
    public static final long a(String str, long j) {
        String strSubstringBefore$default;
        if (str == null) {
            return j;
        }
        try {
            String strSubstringBefore$default2 = StringsKt__StringsKt.substringBefore$default(str, ".", (String) null, 2, (Object) null);
            return (strSubstringBefore$default2 == null || (strSubstringBefore$default = StringsKt__StringsKt.substringBefore$default(strSubstringBefore$default2, ",", (String) null, 2, (Object) null)) == null) ? j : Long.parseLong(strSubstringBefore$default);
        } catch (NumberFormatException unused) {
            return j;
        }
    }

    public static final String a(String str, W5 transformation, Locale locale) {
        Intrinsics.checkNotNullParameter(transformation, "transformation");
        Intrinsics.checkNotNullParameter(locale, "locale");
        if (str == null || StringsKt__StringsJVMKt.isBlank(str)) {
            return "";
        }
        if (transformation == W5.UPPER_CASE) {
            String upperCase = str.toUpperCase(locale);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            return upperCase;
        }
        if (transformation != W5.LOWER_CASE) {
            return str;
        }
        String lowerCase = str.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }

    private static final boolean a(String str) {
        return StringsKt__StringsJVMKt.startsWith$default(StringsKt__StringsKt.trim(str).toString(), ProxyConfig.MATCH_ALL_SCHEMES, false, 2, null);
    }

    public static final boolean a(String str, String str2) {
        String strReplace$default;
        String strReplace$default2;
        if (str2 == null || (strReplace$default = StringsKt__StringsJVMKt.replace$default(str2, "/", "\\/", false, 4, (Object) null)) == null || (strReplace$default2 = StringsKt__StringsJVMKt.replace$default(strReplace$default, ".", "[.]", false, 4, (Object) null)) == null) {
            return false;
        }
        String str3 = String.format("([\\s\\S]*)< *a [^>]*href *= *\\\"%s\\\".*>([\\s\\S]*)", Arrays.copyOf(new Object[]{strReplace$default2}, 1));
        Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
        Pattern patternCompile = Pattern.compile(str3, 2);
        if (str == null) {
            str = "";
        }
        return patternCompile.matcher(str).matches();
    }

    public static final Spanned b(String str, String url) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        StringCompanionObject stringCompanionObject = StringCompanionObject.a;
        String str2 = String.format("<a href=\"%s\">%s</a>", Arrays.copyOf(new Object[]{url, str}, 2));
        Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
        return i(str2);
    }

    public static final String b(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return new Regex("(< *a [^>]*href *= *\"(?!javascript:Didomi\\.preferences\\.show\\(['\"]?vendors['\"]?\\))[^\"]*\"[^>]*>.*?)(< */ *a *>)").f(str, "$1[didomi_link_external]$2");
    }

    public static final boolean c(String str) {
        Pattern pattern = Patterns.WEB_URL;
        if (str == null) {
            str = "";
        }
        return pattern.matcher(str).matches();
    }

    public static final boolean d(String str) {
        return c(str) && str != null && StringsKt__StringsJVMKt.endsWith(str, ".json", true);
    }

    public static final String e(String str) {
        String string;
        if (str != null && (string = StringsKt__StringsKt.trim(str).toString()) != null) {
            String lowerCase = string.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            if (lowerCase != null) {
                return new Regex("\\s+").f(lowerCase, "_");
            }
        }
        return null;
    }

    private static final String f(String str) {
        String strJoinToString$default;
        List listSplit$default;
        if (str == null || (listSplit$default = StringsKt__StringsKt.split$default((CharSequence) str, new String[]{"\n"}, false, 0, 6, (Object) null)) == null) {
            strJoinToString$default = null;
        } else {
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listSplit$default, 10));
            int i = 0;
            for (Object obj : listSplit$default) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                String str2 = (String) obj;
                boolean z = i < CollectionsKt__CollectionsKt.getLastIndex(listSplit$default) && a((String) listSplit$default.get(i2));
                if (a(str2)) {
                    str2 = "<li-tag>" + StringsKt__StringsKt.trim(StringsKt__StringsJVMKt.replace$default(str2, ProxyConfig.MATCH_ALL_SCHEMES, "", false, 4, (Object) null)).toString() + "</li-tag>";
                    if (i == 0 || !a((String) listSplit$default.get(i - 1))) {
                        str2 = "<ul-tag>" + str2;
                    }
                    if (!z) {
                        str2 = str2 + "</ul-tag>";
                    }
                } else if (!z) {
                    str2 = str2 + "<br />";
                }
                arrayList.add(str2);
                i = i2;
            }
            strJoinToString$default = CollectionsKt___CollectionsKt.joinToString$default(arrayList, "", null, null, 0, null, null, 62, null);
        }
        return strJoinToString$default == null ? "" : strJoinToString$default;
    }

    public static final String g(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return StringsKt__StringsKt.trim(StringsKt__StringsJVMKt.replace$default(str, "&amp;", o2.i.c, false, 4, (Object) null)).toString();
    }

    public static final String h(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        C1802j5 c1802j5 = C1802j5.a;
        return StringsKt__StringsKt.trim(c1802j5.e().f(c1802j5.f().f(c1802j5.h().f(c1802j5.i().f(c1802j5.a().f(c1802j5.b().f(str, "<li-tag>"), "</li-tag>"), "<ul-tag>"), "</ul-tag>"), "<ol-tag>"), "</ol-tag>")).toString();
    }

    public static final Spanned i(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Spanned spannedFromHtml = HtmlCompat.fromHtml(StringsKt__StringsKt.trim(str).toString(), 0);
        Intrinsics.checkNotNullExpressionValue(spannedFromHtml, "fromHtml(trim(), HtmlCompat.FROM_HTML_MODE_LEGACY)");
        CharSequence charSequenceTrim = StringsKt__StringsKt.trim(spannedFromHtml);
        Intrinsics.checkNotNull(charSequenceTrim, "null cannot be cast to non-null type android.text.Spanned");
        return (Spanned) charSequenceTrim;
    }

    public static final Spanned j(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Spanned spannedFromHtml = HtmlCompat.fromHtml(h(str), 0, null, new C1940x3());
        Intrinsics.checkNotNullExpressionValue(spannedFromHtml, "fromHtml(\n    replaceLis…   null, LiTagHandler()\n)");
        CharSequence charSequenceTrim = StringsKt__StringsKt.trim(spannedFromHtml);
        Intrinsics.checkNotNull(charSequenceTrim, "null cannot be cast to non-null type android.text.Spanned");
        return (Spanned) charSequenceTrim;
    }

    public static final Spanned k(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (new Regex("<.*?>").a(str)) {
            return j(str);
        }
        CharSequence charSequenceL = l(str);
        Intrinsics.checkNotNull(charSequenceL, "null cannot be cast to non-null type android.text.Spanned");
        return (Spanned) charSequenceL;
    }

    public static final CharSequence l(String str) {
        Spanned spannedFromHtml = HtmlCompat.fromHtml(f(str), 0, null, new C1940x3());
        Intrinsics.checkNotNullExpressionValue(spannedFromHtml, "fromHtml(\n    replaceAst…   null, LiTagHandler()\n)");
        return StringsKt__StringsKt.trim(spannedFromHtml);
    }
}
