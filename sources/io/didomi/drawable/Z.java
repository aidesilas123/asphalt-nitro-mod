package io.didomi.drawable;

import android.app.UiModeManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import androidx.preference.PreferenceManager;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.qc;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__StringsJVMKt;

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
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0015\b\u0017\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0012¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\r\u0010\u0011J\u001f\u0010\r\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u0013J5\u0010\r\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\f2\b\u0010\u0015\u001a\u0004\u0018\u00010\f2\b\u0010\u0016\u001a\u0004\u0018\u00010\f2\b\u0010\u0017\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\r\u0010\u0018J\u0019\u0010\r\u001a\u00020\u000f2\b\u0010\u0019\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\r\u0010\u001aJ\r\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001c\u0010\u001dR\u0014\u0010\u0003\u001a\u00020\u00028\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u001eR\u0014\u0010\u0007\u001a\u00020\u00068\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u001b\u0010%\u001a\u00020!8TX\u0094\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b\"\u0010$R\u001c\u0010\u000b\u001a\n &*\u0004\u0018\u00010\n0\n8\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u001a\u0010-\u001a\u00020\f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R\u001a\u0010/\u001a\u00020\f8\u0016X\u0096D¢\u0006\f\n\u0004\b.\u0010*\u001a\u0004\b\r\u0010,R\u001a\u00100\u001a\u00020\f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001c\u0010*\u001a\u0004\b\u001f\u0010,R\u001a\u00102\u001a\u00020\f8\u0016X\u0096D¢\u0006\f\n\u0004\b1\u0010*\u001a\u0004\b)\u0010,R\u001a\u00104\u001a\u00020\f8\u0016X\u0096D¢\u0006\f\n\u0004\b3\u0010*\u001a\u0004\b.\u0010,R\u0014\u00105\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b'\u0010,¨\u00066"}, d2 = {"Lio/didomi/sdk/Z;", "", "Landroid/content/Context;", "context", "Lio/didomi/sdk/DidomiInitializeParameters;", "parameters", "Lio/didomi/sdk/z3;", "localPropertiesRepository", "<init>", "(Landroid/content/Context;Lio/didomi/sdk/DidomiInitializeParameters;Lio/didomi/sdk/z3;)V", "Landroid/content/SharedPreferences;", "sharedPreferences", "", "a", "(Landroid/content/SharedPreferences;)Ljava/lang/String;", "", "gvlVersion", "(I)Ljava/lang/String;", "languageCode", "(ILjava/lang/String;)Ljava/lang/String;", "apiKey", "noticeId", "country", TtmlNode.TAG_REGION, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "name", "(Ljava/lang/String;)I", "", "g", "()Z", "Landroid/content/Context;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/z3;", "Lio/didomi/sdk/b4;", "c", "Lkotlin/Lazy;", "()Lio/didomi/sdk/b4;", "platformInfoProvider", "kotlin.jvm.PlatformType", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/content/SharedPreferences;", "e", "Ljava/lang/String;", "getAdvertisingId", "()Ljava/lang/String;", qc.h1, InneractiveMediationDefs.GENDER_FEMALE, "apiUrl", HandleAndroidInvocationsUseCase.KEY_PACKAGE_NAME, "h", "sdkUrl", "i", "sdkVersionName", "platformSourceType", "android_release"}, mv = {1, 8, 0})
public class Z {
    private final Context a;
    private final C1960z3 b;
    private final Lazy c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SharedPreferences f8461d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f8462e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f8463f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f8464g;
    private final String h;
    private final String i;

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/b4;", "a", "()Lio/didomi/sdk/b4;"}, mv = {1, 8, 0})
    static final class a extends Lambda implements Function0<InterfaceC1721b4> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final InterfaceC1721b4 invoke() {
            UiModeManager uiModeManager = (UiModeManager) Z.this.a.getSystemService("uimode");
            return new C1731c4(uiModeManager != null && uiModeManager.getCurrentModeType() == 4).a();
        }
    }

    public Z(Context context, DidomiInitializeParameters parameters, C1960z3 localPropertiesRepository) throws Exception {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        Intrinsics.checkNotNullParameter(localPropertiesRepository, "localPropertiesRepository");
        this.a = context;
        this.b = localPropertiesRepository;
        this.c = LazyKt__LazyJVMKt.lazy(new a());
        SharedPreferences sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        this.f8461d = sharedPreferences;
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "sharedPreferences");
        this.f8462e = a(sharedPreferences);
        this.f8463f = "https://mobile-290.api.privacy-center.org/";
        String packageName = context.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "context.packageName");
        this.f8464g = packageName;
        this.h = "https://sdk.privacy-center.org/";
        this.i = "2.9.0";
        if (g() && !parameters.androidTvEnabled) {
            throw new Exception("TV device detected, but androidTvEnabled parameter is false");
        }
    }

    private String a(SharedPreferences sharedPreferences) {
        String string = sharedPreferences.getString("Didomi_Fallback_Id", null);
        if (string != null) {
            return string;
        }
        String string2 = UUID.randomUUID().toString();
        sharedPreferences.edit().putString("Didomi_Fallback_Id", string2).apply();
        return string2;
    }

    public int a(String str) {
        Resources resources = this.a.getResources();
        if (str == null) {
            str = "";
        }
        return resources.getIdentifier(str, "drawable", this.a.getPackageName());
    }

    public String a() {
        return this.f8463f;
    }

    public String a(int i) {
        return e() + "tcf/v" + i + "/vendor-list.json";
    }

    public String a(int i, String languageCode) {
        Intrinsics.checkNotNullParameter(languageCode, "languageCode");
        return e() + "tcf/v" + i + "/purposes-" + languageCode + ".json";
    }

    public String a(String apiKey, String str, String str2, String str3) {
        String str4;
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        StringBuilder sb = new StringBuilder(e() + apiKey + "/didomi_config.json?platform=" + c().getName() + "&os=android&version=2.9.0&");
        if (str == null || StringsKt__StringsJVMKt.isBlank(str)) {
            str4 = "target=" + b();
        } else {
            str4 = "target_type=notice&target=" + str;
        }
        sb.append(str4);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("&config_version=");
        String strB = this.b.b();
        if (strB == null) {
            strB = "1.0.0";
        }
        sb2.append(strB);
        sb.append(sb2.toString());
        if (str2 != null) {
            Log.i$default("Forcing user country code: " + str2, null, 2, null);
            sb.append("&country=" + str2);
        }
        if (str3 != null) {
            Log.i$default("Forcing user region code: " + str3, null, 2, null);
            sb.append("&region=" + str3);
        }
        String strA = this.b.a();
        if (strA != null) {
            sb.append("&regulation=" + strA);
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "StringBuilder(\"$sdkUrl$a…\n            }.toString()");
        return string;
    }

    public String b() {
        return this.f8464g;
    }

    protected InterfaceC1721b4 c() {
        return (InterfaceC1721b4) this.c.getValue();
    }

    public String d() {
        return c().getSourceType();
    }

    public String e() {
        return this.h;
    }

    public String f() {
        return this.i;
    }

    public final boolean g() {
        return Intrinsics.areEqual(c().getSourceType(), "sdk-ctv");
    }
}
