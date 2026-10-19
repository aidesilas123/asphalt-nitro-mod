package io.didomi.drawable;

import android.graphics.Typeface;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.b4;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import io.didomi.drawable.C1806k;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: io.didomi.sdk.e4, reason: case insensitive filesystem */
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
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\f\u0018\u0000 92\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u001d\u0010\f\u001a\u0004\u0018\u00010\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0006\u0010\u000bR\u001d\u0010\u000f\u001a\u0004\u0018\u00010\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\n\u001a\u0004\b\u000e\u0010\u000bR\u001b\u0010\u0014\u001a\u00020\u00108FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\n\u001a\u0004\b\u0012\u0010\u0013R\u001b\u0010\u0017\u001a\u00020\u00108FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\n\u001a\u0004\b\u0016\u0010\u0013R\u001b\u0010\u001a\u001a\u00020\u00108FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\n\u001a\u0004\b\u0019\u0010\u0013R\u001b\u0010\u001d\u001a\u00020\u00108FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\n\u001a\u0004\b\u001c\u0010\u0013R\u001b\u0010\u001e\u001a\u00020\u00108FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\n\u001a\u0004\b\r\u0010\u0013R\u001b\u0010\u001f\u001a\u00020\u00108FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\n\u001a\u0004\b\u0011\u0010\u0013R\u001b\u0010!\u001a\u00020\u00108FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\n\u001a\u0004\b \u0010\u0013R\u001b\u0010#\u001a\u00020\u00108FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\n\u001a\u0004\b\"\u0010\u0013R\u001b\u0010&\u001a\u00020\u00108FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b$\u0010\n\u001a\u0004\b%\u0010\u0013R\u001b\u0010*\u001a\u00020'8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b(\u0010\n\u001a\u0004\b\t\u0010)R\u001b\u0010-\u001a\u00020+8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b \u0010\n\u001a\u0004\b\u0015\u0010,R\u001b\u00100\u001a\u00020.8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\n\u001a\u0004\b\u0018\u0010/R\u001d\u00102\u001a\u0004\u0018\u00010\b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b1\u0010\n\u001a\u0004\b\u001b\u0010\u000bR\u001b\u00104\u001a\u00020'8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b3\u0010\n\u001a\u0004\b$\u0010)R\u001d\u00105\u001a\u0004\u0018\u00010\b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\n\u001a\u0004\b(\u0010\u000bR\u001b\u00106\u001a\u00020+8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b%\u0010\n\u001a\u0004\b1\u0010,R\u001b\u00108\u001a\u00020.8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b7\u0010\n\u001a\u0004\b3\u0010/¨\u0006:"}, d2 = {"Lio/didomi/sdk/e4;", "", "Lio/didomi/sdk/z8;", "themeProvider", "<init>", "(Lio/didomi/sdk/z8;)V", "a", "Lio/didomi/sdk/z8;", "Landroid/graphics/Typeface;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "()Landroid/graphics/Typeface;", "buttonTypeface", "c", "r", "titleTypeface", "Lio/didomi/sdk/w8;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "j", "()Lio/didomi/sdk/w8;", "primaryButtonTheme", "e", CampaignEx.JSON_KEY_AD_K, "secondaryButtonTheme", InneractiveMediationDefs.GENDER_FEMALE, "i", "noneButtonTheme", "g", "h", "linkButtonTheme", "descriptionPrimaryTextTheme", "descriptionSecondaryTextTheme", b4.p, "titlePrimaryTextTheme", "o", "titleSecondaryTextTheme", "l", "s", "vendorCountButtonTheme", "Lio/didomi/sdk/k$i$c$a;", InneractiveMediationDefs.GENDER_MALE, "()Lio/didomi/sdk/k$i$c$a;", "descriptionAlignment", "", "()I", "descriptionTextColor", "", "()F", "descriptionTextSize", TtmlNode.TAG_P, "descriptionTypeface", CampaignEx.JSON_KEY_AD_Q, "titleAlignment", "titleFontFamily", "titleTextColor", "t", "titleTextSize", "u", "android_release"}, mv = {1, 8, 0})
public final class C1751e4 {
    public static final a u = new a(null);
    private final C1965z8 a;
    private final Lazy b;
    private final Lazy c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f8536d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f8537e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f8538f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f8539g;
    private final Lazy h;
    private final Lazy i;
    private final Lazy j;
    private final Lazy k;
    private final Lazy l;
    private final Lazy m;
    private final Lazy n;
    private final Lazy o;
    private final Lazy p;
    private final Lazy q;
    private final Lazy r;
    private final Lazy s;
    private final Lazy t;

    /* JADX INFO: renamed from: io.didomi.sdk.e4$a */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00048\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0006¨\u0006\b"}, d2 = {"Lio/didomi/sdk/e4$a;", "", "<init>", "()V", "", "DESCRIPTION_DEFAULT_TEXT_SIZE", "F", "TITLE_DEFAULT_TEXT_SIZE", "android_release"}, mv = {1, 8, 0})
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.e4$b */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Landroid/graphics/Typeface;", "a", "()Landroid/graphics/Typeface;"}, mv = {1, 8, 0})
    static final class b extends Lambda implements Function0<Typeface> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Typeface invoke() {
            String strE = V5.e(C1751e4.this.a.s().g().f());
            if (strE != null) {
                return C1751e4.this.a.n().a(strE);
            }
            return null;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.e4$c */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/k$i$c$a;", "a", "()Lio/didomi/sdk/k$i$c$a;"}, mv = {1, 8, 0})
    static final class c extends Lambda implements Function0<C1806k.i.c.a> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final C1806k.i.c.a invoke() {
            String strB = C1751e4.this.a.s().g().b();
            if (strB == null) {
                strB = C1751e4.this.a.s().g().a();
            }
            return C1806k.i.c.a.c.a(strB);
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.e4$d */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/w8;", "a", "()Lio/didomi/sdk/w8;"}, mv = {1, 8, 0})
    static final class d extends Lambda implements Function0<TextTheme> {
        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TextTheme invoke() {
            return new TextTheme(null, C1751e4.this.a.j(), C1751e4.this.g(), 1, null);
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.e4$e */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/w8;", "a", "()Lio/didomi/sdk/w8;"}, mv = {1, 8, 0})
    static final class e extends Lambda implements Function0<TextTheme> {
        e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TextTheme invoke() {
            return new TextTheme(null, C1751e4.this.a.r(), C1751e4.this.g(), 1, null);
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.e4$f */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Integer;"}, mv = {1, 8, 0})
    static final class f extends Lambda implements Function0<Integer> {
        f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer invoke() {
            String strD = C1751e4.this.a.s().g().d();
            if (strD == null) {
                strD = C1751e4.this.a.s().g().h();
            }
            return Integer.valueOf(strD != null ? C1936x.a.b(strD) : C1751e4.this.a.j());
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.e4$g */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0007\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Float;"}, mv = {1, 8, 0})
    static final class g extends Lambda implements Function0<Float> {
        g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Float invoke() {
            Integer numE = C1751e4.this.a.s().g().e();
            if (numE == null) {
                numE = C1751e4.this.a.s().g().i();
            }
            return Float.valueOf(numE != null ? numE.intValue() : 16.0f);
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.e4$h */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Landroid/graphics/Typeface;", "a", "()Landroid/graphics/Typeface;"}, mv = {1, 8, 0})
    static final class h extends Lambda implements Function0<Typeface> {
        h() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Typeface invoke() {
            String strC = C1751e4.this.a.s().g().c();
            if (strC == null) {
                strC = C1751e4.this.a.s().g().f();
            }
            String strE = V5.e(strC);
            if (strE != null) {
                return C1751e4.this.a.n().a(strE);
            }
            return null;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.e4$i */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/w8;", "a", "()Lio/didomi/sdk/w8;"}, mv = {1, 8, 0})
    static final class i extends Lambda implements Function0<TextTheme> {
        i() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TextTheme invoke() {
            return new TextTheme(null, C1751e4.this.a.f(), C1751e4.this.a(), 1, null);
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.e4$j */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/w8;", "a", "()Lio/didomi/sdk/w8;"}, mv = {1, 8, 0})
    static final class j extends Lambda implements Function0<TextTheme> {
        j() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TextTheme invoke() {
            return new TextTheme(null, C1751e4.this.a.j(), C1751e4.this.a(), 1, null);
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.e4$k */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/w8;", "a", "()Lio/didomi/sdk/w8;"}, mv = {1, 8, 0})
    static final class k extends Lambda implements Function0<TextTheme> {
        k() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TextTheme invoke() {
            return new TextTheme(C1751e4.this.a.c(), C1751e4.this.a.e(), C1751e4.this.a());
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.e4$l */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/w8;", "a", "()Lio/didomi/sdk/w8;"}, mv = {1, 8, 0})
    static final class l extends Lambda implements Function0<TextTheme> {
        l() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TextTheme invoke() {
            return new TextTheme(C1751e4.this.a.k(), C1751e4.this.a.m(), C1751e4.this.a());
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.e4$m */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/k$i$c$a;", "a", "()Lio/didomi/sdk/k$i$c$a;"}, mv = {1, 8, 0})
    static final class m extends Lambda implements Function0<C1806k.i.c.a> {
        m() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final C1806k.i.c.a invoke() {
            String strJ = C1751e4.this.a.s().g().j();
            if (strJ == null) {
                strJ = C1751e4.this.a.s().g().a();
            }
            return C1806k.i.c.a.c.a(strJ);
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.e4$n */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Landroid/graphics/Typeface;", "a", "()Landroid/graphics/Typeface;"}, mv = {1, 8, 0})
    static final class n extends Lambda implements Function0<Typeface> {
        n() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Typeface invoke() {
            String strK = C1751e4.this.a.s().g().k();
            if (strK == null) {
                strK = C1751e4.this.a.s().g().f();
            }
            String strE = V5.e(strK);
            if (strE != null) {
                return C1751e4.this.a.n().a(strE);
            }
            return null;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.e4$o */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/w8;", "a", "()Lio/didomi/sdk/w8;"}, mv = {1, 8, 0})
    static final class o extends Lambda implements Function0<TextTheme> {
        o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TextTheme invoke() {
            return new TextTheme(null, C1751e4.this.a.j(), C1751e4.this.r(), 1, null);
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.e4$p */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/w8;", "a", "()Lio/didomi/sdk/w8;"}, mv = {1, 8, 0})
    static final class p extends Lambda implements Function0<TextTheme> {
        p() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TextTheme invoke() {
            return new TextTheme(null, C1751e4.this.a.r(), C1751e4.this.r(), 1, null);
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.e4$q */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Integer;"}, mv = {1, 8, 0})
    static final class q extends Lambda implements Function0<Integer> {
        q() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer invoke() {
            String strL = C1751e4.this.a.s().g().l();
            if (strL == null) {
                strL = C1751e4.this.a.s().g().h();
            }
            return Integer.valueOf(strL != null ? C1936x.a.b(strL) : C1751e4.this.a.j());
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.e4$r */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0007\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Float;"}, mv = {1, 8, 0})
    static final class r extends Lambda implements Function0<Float> {
        r() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Float invoke() {
            Integer numM = C1751e4.this.a.s().g().m();
            if (numM == null) {
                numM = C1751e4.this.a.s().g().i();
            }
            return Float.valueOf(numM != null ? numM.intValue() : 18.0f);
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.e4$s */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Landroid/graphics/Typeface;", "a", "()Landroid/graphics/Typeface;"}, mv = {1, 8, 0})
    static final class s extends Lambda implements Function0<Typeface> {
        s() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Typeface invoke() {
            String strK = C1751e4.this.a.s().g().k();
            if (strK == null) {
                strK = C1751e4.this.a.s().g().f();
            }
            String strE = V5.e(strK);
            if (strE != null) {
                return C1751e4.this.a.n().a(strE);
            }
            return null;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.e4$t */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/w8;", "a", "()Lio/didomi/sdk/w8;"}, mv = {1, 8, 0})
    static final class t extends Lambda implements Function0<TextTheme> {
        t() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TextTheme invoke() {
            return new TextTheme(C1751e4.this.a.o(), C1751e4.this.a.j(), C1751e4.this.a());
        }
    }

    public C1751e4(C1965z8 themeProvider) {
        Intrinsics.checkNotNullParameter(themeProvider, "themeProvider");
        this.a = themeProvider;
        this.b = LazyKt__LazyJVMKt.lazy(new b());
        this.c = LazyKt__LazyJVMKt.lazy(new s());
        this.f8536d = LazyKt__LazyJVMKt.lazy(new k());
        this.f8537e = LazyKt__LazyJVMKt.lazy(new l());
        this.f8538f = LazyKt__LazyJVMKt.lazy(new j());
        this.f8539g = LazyKt__LazyJVMKt.lazy(new i());
        this.h = LazyKt__LazyJVMKt.lazy(new d());
        this.i = LazyKt__LazyJVMKt.lazy(new e());
        this.j = LazyKt__LazyJVMKt.lazy(new o());
        this.k = LazyKt__LazyJVMKt.lazy(new p());
        this.l = LazyKt__LazyJVMKt.lazy(new t());
        this.m = LazyKt__LazyJVMKt.lazy(new c());
        this.n = LazyKt__LazyJVMKt.lazy(new f());
        this.o = LazyKt__LazyJVMKt.lazy(new g());
        this.p = LazyKt__LazyJVMKt.lazy(new h());
        this.q = LazyKt__LazyJVMKt.lazy(new m());
        this.r = LazyKt__LazyJVMKt.lazy(new n());
        this.s = LazyKt__LazyJVMKt.lazy(new q());
        this.t = LazyKt__LazyJVMKt.lazy(new r());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Typeface a() {
        return (Typeface) this.b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Typeface r() {
        return (Typeface) this.c.getValue();
    }

    public final C1806k.i.c.a b() {
        return (C1806k.i.c.a) this.m.getValue();
    }

    public final TextTheme c() {
        return (TextTheme) this.h.getValue();
    }

    public final TextTheme d() {
        return (TextTheme) this.i.getValue();
    }

    public final int e() {
        return ((Number) this.n.getValue()).intValue();
    }

    public final float f() {
        return ((Number) this.o.getValue()).floatValue();
    }

    public final Typeface g() {
        return (Typeface) this.p.getValue();
    }

    public final TextTheme h() {
        return (TextTheme) this.f8539g.getValue();
    }

    public final TextTheme i() {
        return (TextTheme) this.f8538f.getValue();
    }

    public final TextTheme j() {
        return (TextTheme) this.f8536d.getValue();
    }

    public final TextTheme k() {
        return (TextTheme) this.f8537e.getValue();
    }

    public final C1806k.i.c.a l() {
        return (C1806k.i.c.a) this.q.getValue();
    }

    public final Typeface m() {
        return (Typeface) this.r.getValue();
    }

    public final TextTheme n() {
        return (TextTheme) this.j.getValue();
    }

    public final TextTheme o() {
        return (TextTheme) this.k.getValue();
    }

    public final int p() {
        return ((Number) this.s.getValue()).intValue();
    }

    public final float q() {
        return ((Number) this.t.getValue()).floatValue();
    }

    public final TextTheme s() {
        return (TextTheme) this.l.getValue();
    }
}
