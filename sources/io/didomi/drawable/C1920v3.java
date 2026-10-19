package io.didomi.drawable;

import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import io.didomi.drawable.C1806k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.p;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: renamed from: io.didomi.sdk.v3, reason: case insensitive filesystem */
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
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\b\b\b\u0017\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ#\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u0010J/\u0010\r\u001a\u00020\u000b2\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00112\b\b\u0002\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\r\u0010\u0015J7\u0010\r\u001a\u00020\u000b2\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00112\u0006\u0010\u0016\u001a\u00020\u000b2\b\b\u0002\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\r\u0010\u0017J-\u0010\u0018\u001a\u00020\u000b2\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00112\u0006\u0010\u0016\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0019\u0010\u0018\u001a\u00020\u000b2\b\b\u0002\u0010\u001a\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0018\u0010\u0010J%\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00112\u0006\u0010\u0016\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ9\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000b2\b\b\u0002\u0010\u0014\u001a\u00020\u00132\u0016\b\u0002\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0018\u0010\u001eJE\u0010\r\u001a\u00020\u000b2\b\u0010\u0016\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\u0014\u001a\u00020\u00132\u0016\b\u0002\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00112\b\b\u0002\u0010\u000f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u001fJ\u0017\u0010\"\u001a\u00020!2\u0006\u0010 \u001a\u00020\u000bH\u0016¢\u0006\u0004\b\"\u0010#J\u000f\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b%\u0010&J'\u0010\r\u001a\u00020$2\u0006\u0010(\u001a\u00020'2\u0006\u0010)\u001a\u00020'2\u0006\u0010*\u001a\u00020'H\u0016¢\u0006\u0004\b\r\u0010+J'\u0010\r\u001a\u0004\u0018\u00010\u000b2\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0011H\u0012¢\u0006\u0004\b\r\u0010,J/\u0010\r\u001a\u0004\u0018\u00010\u000b2\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00112\u0006\u0010 \u001a\u00020\u000bH\u0012¢\u0006\u0004\b\r\u0010\u0019J/\u0010-\u001a\u0004\u0018\u00010\u000b2\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00112\u0006\u0010 \u001a\u00020\u000bH\u0012¢\u0006\u0004\b-\u0010\u0019J/\u0010\u001b\u001a\u0004\u0018\u00010\u000b2\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00112\u0006\u0010 \u001a\u00020\u000bH\u0012¢\u0006\u0004\b\u001b\u0010\u0019J\u0019\u0010-\u001a\u00020/2\b\b\u0002\u0010.\u001a\u00020\u000bH\u0012¢\u0006\u0004\b-\u00100J;\u0010\r\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0016\u001a\u00020\u000b2\b\b\u0002\u0010\u0014\u001a\u00020\u00132\u0016\b\u0002\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0011H\u0012¢\u0006\u0004\b\r\u0010\u001eJ\u000f\u00101\u001a\u00020$H\u0012¢\u0006\u0004\b1\u0010&J'\u0010\r\u001a\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u00110\u0011H\u0012¢\u0006\u0004\b\r\u00102J\u001b\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u0011H\u0012¢\u0006\u0004\b\u0018\u00102J1\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u00112\u0014\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0011H\u0012¢\u0006\u0004\b\u0018\u00103J7\u0010\r\u001a\u00020\u000b2\u0006\u00104\u001a\u00020\u000b2\u0014\u00105\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u00112\b\b\u0002\u0010\u0014\u001a\u00020\u0013H\u0012¢\u0006\u0004\b\r\u00106J\u000f\u00107\u001a\u00020$H\u0012¢\u0006\u0004\b7\u0010&J\u0017\u00108\u001a\u00020$2\u0006\u0010 \u001a\u00020\u000bH\u0012¢\u0006\u0004\b8\u00109R\u0014\u0010\u0003\u001a\u00020\u00028\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b\r\u0010:R\u0014\u0010\u0005\u001a\u00020\u00048\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010;R.\u0010=\u001a\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u00110\u00118\u0012@\u0012X\u0092.¢\u0006\u0006\n\u0004\b\u001b\u0010<R.\u0010>\u001a\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u00110\u00118\u0012@\u0012X\u0092.¢\u0006\u0006\n\u0004\b-\u0010<R.\u0010?\u001a\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u00110\u00118\u0012@\u0012X\u0092.¢\u0006\u0006\n\u0004\b8\u0010<R\"\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u00118\u0012@\u0012X\u0092.¢\u0006\u0006\n\u0004\b@\u0010<R\u001b\u0010C\u001a\u00020\u000b8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010A\u001a\u0004\b\u001b\u0010BR \u0010D\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u00118\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b1\u0010<R \u0010E\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u00118\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b%\u0010<R!\u0010G\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8RX\u0092\u0084\u0002¢\u0006\f\n\u0004\b7\u0010A\u001a\u0004\b-\u0010FR\"\u0010J\u001a\u00020\u000b8\u0016@\u0016X\u0096.¢\u0006\u0012\n\u0004\bH\u0010I\u001a\u0004\b@\u0010B\"\u0004\b@\u00109R*\u0010Q\u001a\u00020K2\u0006\u0010L\u001a\u00020K8\u0016@TX\u0096\u000e¢\u0006\u0012\n\u0004\bM\u0010N\u001a\u0004\b\"\u0010O\"\u0004\b\r\u0010PR\u0014\u0010R\u001a\u00020\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b8\u0010B¨\u0006S"}, d2 = {"Lio/didomi/sdk/v3;", "", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/s5;", "resourcesHelper", "Lio/didomi/sdk/DidomiInitializeParameters;", "initializeParameters", "<init>", "(Lio/didomi/sdk/H;Lio/didomi/sdk/s5;Lio/didomi/sdk/DidomiInitializeParameters;)V", "", "", "languages", "a", "(Ljava/util/Set;)Ljava/util/Set;", "language", "(Ljava/lang/String;)Ljava/lang/String;", "", "customContent", "Lio/didomi/sdk/W5;", "transform", "(Ljava/util/Map;Lio/didomi/sdk/W5;)Ljava/lang/String;", "key", "(Ljava/util/Map;Ljava/lang/String;Lio/didomi/sdk/W5;)Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;", "locale", "c", "(Ljava/lang/String;)Ljava/util/Map;", "additionalMacros", "(Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;)Ljava/lang/String;", "(Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;", "languageCode", "Lio/didomi/sdk/u3;", "g", "(Ljava/lang/String;)Lio/didomi/sdk/u3;", "", "i", "()V", "", "allVendors", "iabVendors", "nonIABVendors", "(III)V", "(Ljava/util/Map;)Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "baseLanguageCode", "", "(Ljava/lang/String;)Z", "h", "()Ljava/util/Map;", "(Ljava/util/Map;)Ljava/util/Map;", "contentBeforeMacros", "macros", "(Ljava/lang/String;Ljava/util/Map;Lio/didomi/sdk/W5;)Ljava/lang/String;", "j", "e", "(Ljava/lang/String;)V", "Lio/didomi/sdk/H;", "Lio/didomi/sdk/s5;", "Ljava/util/Map;", "consolidatedTexts", "distributedTexts", "textsConfiguration", InneractiveMediationDefs.GENDER_FEMALE, "Lkotlin/Lazy;", "()Ljava/lang/String;", "defaultLanguage", "defaultCountriesBySdk", "fallbackCodesBySdk", "()Ljava/util/Set;", "enabledAndAvailableLanguages", CampaignEx.JSON_KEY_AD_K, "Ljava/lang/String;", "selectedLanguageCode", "Ljava/util/Locale;", "<set-?>", "l", "Ljava/util/Locale;", "()Ljava/util/Locale;", "(Ljava/util/Locale;)V", "selectedLocale", "selectedLanguage", "android_release"}, mv = {1, 8, 0})
public class C1920v3 {
    private final H a;
    private final C1892s5 b;
    private Map<String, ? extends Map<String, String>> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map<String, ? extends Map<String, String>> f8773d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map<String, ? extends Map<String, String>> f8774e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Map<String, String> f8775f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f8776g;
    private final Map<String, String> h;
    private final Map<String, String> i;
    private final Lazy j;
    public String k;
    private Locale l;

    /* JADX INFO: renamed from: io.didomi.sdk.v3$a */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/String;"}, mv = {1, 8, 0})
    static final class a extends Lambda implements Function0<String> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return C1920v3.this.a.b().d().a();
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.v3$b */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"", "", "a", "()Ljava/util/Set;"}, mv = {1, 8, 0})
    static final class b extends Lambda implements Function0<Set<? extends String>> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Set<String> invoke() {
            C1920v3 c1920v3 = C1920v3.this;
            Set<String> setA = c1920v3.a(c1920v3.a.b().d().b());
            Set<String> setA2 = C1920v3.this.a.f().f().a();
            ArrayList arrayList = new ArrayList();
            for (Object obj : setA) {
                if (A3.a.a(setA2, (String) obj)) {
                    arrayList.add(obj);
                }
            }
            return CollectionsKt___CollectionsKt.toSet(arrayList);
        }
    }

    public C1920v3(H configurationRepository, C1892s5 resourcesHelper, DidomiInitializeParameters initializeParameters) {
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(resourcesHelper, "resourcesHelper");
        Intrinsics.checkNotNullParameter(initializeParameters, "initializeParameters");
        this.a = configurationRepository;
        this.b = resourcesHelper;
        this.f8776g = LazyKt__LazyJVMKt.lazy(new a());
        this.h = configurationRepository.f().f().b();
        this.i = configurationRepository.f().f().d();
        this.j = LazyKt__LazyJVMKt.lazy(new b());
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "getDefault()");
        this.l = locale;
        j();
        h();
        String str = initializeParameters.languageCode;
        if (str != null) {
            g(str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ String a(C1920v3 c1920v3, String str, W5 w5, Map map, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getTranslatedText");
        }
        if ((i & 2) != 0) {
            w5 = W5.NONE;
        }
        if ((i & 4) != 0) {
            map = null;
        }
        return c1920v3.b(str, w5, map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ String a(C1920v3 c1920v3, String str, W5 w5, Map map, String str2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getTranslation");
        }
        if ((i & 2) != 0) {
            w5 = W5.NONE;
        }
        if ((i & 4) != 0) {
            map = null;
        }
        if ((i & 8) != 0) {
            str2 = c1920v3.e();
        }
        return c1920v3.a(str, w5, map, str2);
    }

    public static /* synthetic */ String a(C1920v3 c1920v3, Map map, W5 w5, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getCustomTranslation");
        }
        if ((i & 2) != 0) {
            w5 = W5.NONE;
        }
        return c1920v3.a((Map<String, String>) map, w5);
    }

    public static /* synthetic */ String a(C1920v3 c1920v3, Map map, String str, W5 w5, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getCustomTranslationWithDefault");
        }
        if ((i & 4) != 0) {
            w5 = W5.NONE;
        }
        return c1920v3.a((Map<String, String>) map, str, w5);
    }

    private String a(String str, W5 w5, Map<String, String> map) {
        Map<String, String> mapC = c(str);
        if (mapC == null) {
            return null;
        }
        String strA = a(mapC, w5);
        if (!(!StringsKt__StringsJVMKt.isBlank(strA))) {
            strA = null;
        }
        if (strA == null) {
            return null;
        }
        if (map == null) {
            map = MapsKt__MapsKt.emptyMap();
        }
        return a(strA, map, w5);
    }

    private String a(String str, Map<String, String> map, W5 w5) {
        if (StringsKt__StringsJVMKt.isBlank(str)) {
            return "";
        }
        String strReplace$default = str;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (value != null && !StringsKt__StringsJVMKt.isBlank(value)) {
                strReplace$default = StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(strReplace$default, '%' + key, value, false, 4, (Object) null), key, value, false, 4, (Object) null);
            }
        }
        return V5.a(strReplace$default, w5, g());
    }

    private String a(Map<String, String> map) {
        String strA = a(map, f());
        return strA == null ? a(map, c()) : strA;
    }

    private String a(Map<String, String> map, String str) {
        String str2;
        if (map != null && (str2 = map.get(str)) != null) {
            return str2;
        }
        String strD = d(map, str);
        return strD == null ? c(map, str) : strD;
    }

    private Map<String, Map<String, String>> a() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        C1806k.g.a aVarB = this.a.b().f().b();
        Map<String, String> mapA = aVarB.a();
        if (mapA == null) {
            mapA = MapsKt__MapsKt.emptyMap();
        }
        Pair pair = TuplesKt.to("preferences.content.agreeToAll", mapA);
        Map<String, String> mapD = aVarB.d();
        if (mapD == null) {
            mapD = MapsKt__MapsKt.emptyMap();
        }
        Pair pair2 = TuplesKt.to("preferences.content.disagreeToAll", mapD);
        Map<String, String> mapG = aVarB.g();
        if (mapG == null) {
            mapG = MapsKt__MapsKt.emptyMap();
        }
        Pair pair3 = TuplesKt.to("preferences.content.save", mapG);
        Map<String, String> mapJ = aVarB.j();
        if (mapJ == null) {
            mapJ = MapsKt__MapsKt.emptyMap();
        }
        Pair pair4 = TuplesKt.to("preferences.content.text", mapJ);
        Map<String, String> mapL = aVarB.l();
        if (mapL == null) {
            mapL = MapsKt__MapsKt.emptyMap();
        }
        Pair pair5 = TuplesKt.to("preferences.content.title", mapL);
        Map<String, String> mapK = aVarB.k();
        if (mapK == null) {
            mapK = MapsKt__MapsKt.emptyMap();
        }
        Pair pair6 = TuplesKt.to("preferences.content.textVendors", mapK);
        Map<String, String> mapI = aVarB.i();
        if (mapI == null) {
            mapI = MapsKt__MapsKt.emptyMap();
        }
        linkedHashMap.putAll(MapsKt__MapsKt.mapOf(pair, pair2, pair3, pair4, pair5, pair6, TuplesKt.to("preferences.content.subTextVendors", mapI)));
        C1806k.f.b bVarA = this.a.b().e().a();
        linkedHashMap.putAll(MapsKt__MapsKt.mapOf(TuplesKt.to("notice.content.notice", bVarA.e()), TuplesKt.to("notice.content.dismiss", bVarA.a()), TuplesKt.to("notice.content.deny", bVarA.b()), TuplesKt.to("notice.content.learnMore", bVarA.c()), TuplesKt.to("notice.content.privacyPolicy", bVarA.f())));
        return linkedHashMap;
    }

    private Map<String, String> b() {
        C1806k.a aVarA = this.a.b().a();
        return MapsKt__MapsKt.mapOf(TuplesKt.to("{privacyPolicyURL}", aVarA.k()), TuplesKt.to("{websiteName}", aVarA.i()), TuplesKt.to("\"{website_name}\"", aVarA.i()));
    }

    private Map<String, String> b(Map<String, String> map) {
        Map<String, String> map2 = this.f8775f;
        if (map2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("macros");
            map2 = null;
        }
        Map<String, String> mutableMap = MapsKt__MapsKt.toMutableMap(map2);
        if (map != null && !map.isEmpty()) {
            mutableMap.putAll(map);
        }
        return mutableMap;
    }

    private String c(Map<String, String> map, String str) {
        String str2;
        String strB = A3.a.b(str);
        if (Intrinsics.areEqual(strB, str)) {
            return null;
        }
        String str3 = this.h.get(strB);
        if (str3 != null) {
            if (map != null) {
                str2 = map.get(strB + '-' + str3);
            } else {
                str2 = null;
            }
            if (str2 != null) {
                return str2;
            }
        }
        if (map != null) {
            return map.get(strB);
        }
        return null;
    }

    private String d(Map<String, String> map, String str) {
        if (!d(str)) {
            return null;
        }
        String strB = A3.a.b(str);
        if (map != null) {
            return map.get(strB);
        }
        return null;
    }

    private Set<String> d() {
        return (Set) this.j.getValue();
    }

    private boolean d(String str) {
        String strB = A3.a.b(str);
        return Intrinsics.areEqual(str, strB + '-' + this.h.get(strB));
    }

    private void e(String str) {
        a(A3.a.a(str));
        f(str);
    }

    private void h() {
        this.f8773d = a();
        this.f8774e = this.a.b().i();
        Map<String, ? extends Map<String, String>> map = this.f8773d;
        Map<String, ? extends Map<String, String>> map2 = null;
        if (map == null) {
            Intrinsics.throwUninitializedPropertyAccessException("distributedTexts");
            map = null;
        }
        Map<String, ? extends Map<String, String>> mutableMap = MapsKt__MapsKt.toMutableMap(map);
        Map<String, ? extends Map<String, String>> map3 = this.f8774e;
        if (map3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("textsConfiguration");
        } else {
            map2 = map3;
        }
        mutableMap.putAll(map2);
        this.c = mutableMap;
        this.f8775f = b();
    }

    private void j() {
        A3 a3 = A3.a;
        boolean zA = a3.a(d(), c());
        String strA = a3.a(d(), this.h, this.i, Locale.getDefault());
        if (strA == null) {
            strA = "";
        }
        if (C1925v8.a.b(strA)) {
            e(strA);
            return;
        }
        if (zA) {
            e(c());
        } else if (!d().isEmpty()) {
            e((String) p.first(d()));
        } else {
            e(this.a.f().f().getDefaultLanguage());
        }
    }

    public String a(String language) {
        Intrinsics.checkNotNullParameter(language, "language");
        String str = this.h.get(language);
        if (str == null || str.length() == 0) {
            return language;
        }
        return language + '-' + str;
    }

    public String a(String str, W5 transform, Map<String, String> map, String language) {
        String strA;
        Intrinsics.checkNotNullParameter(transform, "transform");
        Intrinsics.checkNotNullParameter(language, "language");
        if (str == null || StringsKt__StringsJVMKt.isBlank(str)) {
            return "";
        }
        String strA2 = this.b.a(str, language);
        return (strA2 == null || (strA = a(strA2, b(map), transform)) == null) ? str : strA;
    }

    public String a(Map<String, String> map, W5 transform) {
        Intrinsics.checkNotNullParameter(transform, "transform");
        String strA = a(map);
        String strA2 = null;
        Map<String, String> map2 = null;
        if (strA != null) {
            Map<String, String> map3 = this.f8775f;
            if (map3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("macros");
            } else {
                map2 = map3;
            }
            strA2 = a(strA, map2, transform);
        }
        return strA2 == null ? "" : strA2;
    }

    public String a(Map<String, String> map, String key, W5 transform) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(transform, "transform");
        String strA = a(map);
        if (strA != null) {
            Map<String, String> map2 = this.f8775f;
            if (map2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("macros");
                map2 = null;
            }
            String strA2 = a(strA, map2, transform);
            if (strA2 != null) {
                return strA2;
            }
        }
        return a(this, key, transform, null, null, 12, null);
    }

    public Set<String> a(Set<String> languages) {
        Intrinsics.checkNotNullParameter(languages, "languages");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(languages, 10));
        Iterator<T> it = languages.iterator();
        while (it.hasNext()) {
            arrayList.add(a((String) it.next()));
        }
        return CollectionsKt___CollectionsKt.toSet(arrayList);
    }

    public void a(int i, int i2, int i3) {
        Map<String, String> map = this.f8775f;
        if (map == null) {
            Intrinsics.throwUninitializedPropertyAccessException("macros");
            map = null;
        }
        Map<String, String> mutableMap = MapsKt__MapsKt.toMutableMap(map);
        mutableMap.put("{numberOfPartners}", String.valueOf(i));
        mutableMap.put("{numberOfIABPartners}", String.valueOf(i2));
        mutableMap.put("{numberOfNonIABPartners}", String.valueOf(i3));
        this.f8775f = mutableMap;
    }

    protected void a(Locale locale) {
        Intrinsics.checkNotNullParameter(locale, "<set-?>");
        this.l = locale;
    }

    public String b(String locale) {
        Intrinsics.checkNotNullParameter(locale, "locale");
        String strB = A3.a.b(locale);
        String str = this.h.get(strB);
        if (str == null) {
            return strB;
        }
        return strB + '-' + str;
    }

    public String b(String key, W5 transform, Map<String, String> map) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(transform, "transform");
        String strA = a(key, transform, map);
        if (strA == null) {
            strA = a(key, transform, map, e());
            if (!(!StringsKt__StringsJVMKt.isBlank(strA))) {
                strA = null;
            }
            if (strA == null) {
                String strA2 = a(key, transform, map, c());
                String str = StringsKt__StringsJVMKt.isBlank(strA2) ^ true ? strA2 : null;
                return str == null ? key : str;
            }
        }
        return strA;
    }

    public String b(Map<String, String> map, String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        String strA = a(map);
        return strA == null ? a(this, key, null, null, null, 14, null) : strA;
    }

    public String c() {
        return (String) this.f8776g.getValue();
    }

    public Map<String, String> c(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Map<String, ? extends Map<String, String>> map = this.c;
        if (map == null) {
            Intrinsics.throwUninitializedPropertyAccessException("consolidatedTexts");
            map = null;
        }
        return map.get(key);
    }

    public String e() {
        return B3.a(g());
    }

    public String f() {
        String str = this.k;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("selectedLanguageCode");
        return null;
    }

    public void f(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.k = str;
    }

    public EnumC1910u3 g(String languageCode) {
        Intrinsics.checkNotNullParameter(languageCode, "languageCode");
        C1925v8 c1925v8 = C1925v8.a;
        if (!c1925v8.b(languageCode)) {
            Log.e$default("Error, language '" + languageCode + "' doesn't fit the requested format", null, 2, null);
            return EnumC1910u3.InvalidCode;
        }
        A3 a3 = A3.a;
        String strA = a3.a(d(), this.a.f().f().b(), this.a.f().f().d(), a3.a(languageCode));
        if (strA == null) {
            strA = "";
        }
        if (!c1925v8.b(strA)) {
            Log.e$default("Error, language '" + languageCode + "' is not supported or not enabled.", null, 2, null);
            return EnumC1910u3.NotEnabled;
        }
        try {
            e(strA);
            h();
            return EnumC1910u3.Success;
        } catch (Exception unused) {
            Log.e$default("Error, language '" + strA + "' is not supported.", null, 2, null);
            i();
            return EnumC1910u3.NotEnabled;
        }
    }

    public Locale g() {
        return this.l;
    }

    public void i() {
        j();
        h();
    }
}
