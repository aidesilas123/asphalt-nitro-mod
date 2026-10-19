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
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

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
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\f\u0018\u0000 42\u00020\u0001:\u0001\tB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u000bR\u001d\u0010\u0010\u001a\u0004\u0018\u00010\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\t\u0010\u000fR\u001b\u0010\u0015\u001a\u00020\u00118FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u000e\u001a\u0004\b\u0013\u0010\u0014R\u001b\u0010\u0019\u001a\u00020\b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u000e\u001a\u0004\b\u0017\u0010\u0018R\u001b\u0010\u001c\u001a\u00020\b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u000e\u001a\u0004\b\u001b\u0010\u0018R\u001b\u0010\u001f\u001a\u00020\b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u000e\u001a\u0004\b\u001e\u0010\u0018R\u001b\u0010 \u001a\u00020\b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u000e\u001a\u0004\b\u001d\u0010\u0018R\u001b\u0010#\u001a\u00020!8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u000e\u001a\u0004\b\r\u0010\"R\u001d\u0010$\u001a\u0004\u0018\u00010\f8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u000e\u001a\u0004\b\u0012\u0010\u000fR\u001b\u0010(\u001a\u00020%8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b&\u0010\u000e\u001a\u0004\b\u0016\u0010'R\u001b\u0010,\u001a\u00020)8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b*\u0010\u000e\u001a\u0004\b\u001a\u0010+R\u001b\u0010.\u001a\u00020!8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b-\u0010\u000e\u001a\u0004\b&\u0010\"R\u001d\u00100\u001a\u0004\u0018\u00010\f8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b/\u0010\u000e\u001a\u0004\b*\u0010\u000fR\u001b\u00101\u001a\u00020%8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u000e\u001a\u0004\b-\u0010'R\u001b\u00103\u001a\u00020)8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b2\u0010\u000e\u001a\u0004\b/\u0010+¨\u00065"}, d2 = {"Lio/didomi/sdk/M3;", "", "Lio/didomi/sdk/z8;", "themeProvider", "<init>", "(Lio/didomi/sdk/z8;)V", "Lio/didomi/sdk/k$i$a;", "format", "Lio/didomi/sdk/w8;", "a", "(Lio/didomi/sdk/k$i$a;)Lio/didomi/sdk/w8;", "Lio/didomi/sdk/z8;", "Landroid/graphics/Typeface;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "()Landroid/graphics/Typeface;", "buttonTypeface", "", "c", b4.p, "()Z", "isStickyButtons", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "h", "()Lio/didomi/sdk/w8;", "primaryButtonTheme", "e", "i", "secondaryButtonTheme", InneractiveMediationDefs.GENDER_FEMALE, "g", "noneButtonTheme", "linkButtonTheme", "Lio/didomi/sdk/k$i$c$a;", "()Lio/didomi/sdk/k$i$c$a;", "descriptionAlignment", "descriptionFontFamily", "", "j", "()I", "descriptionTextColor", "", CampaignEx.JSON_KEY_AD_K, "()F", "descriptionTextSize", "l", "titleAlignment", InneractiveMediationDefs.GENDER_MALE, "titleFontFamily", "titleTextColor", "o", "titleTextSize", TtmlNode.TAG_P, "android_release"}, mv = {1, 8, 0})
public final class M3 {
    public static final a p = new a(null);
    private final C1965z8 a;
    private final Lazy b;
    private final Lazy c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f8293d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f8294e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f8295f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f8296g;
    private final Lazy h;
    private final Lazy i;
    private final Lazy j;
    private final Lazy k;
    private final Lazy l;
    private final Lazy m;
    private final Lazy n;
    private final Lazy o;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00048\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0006¨\u0006\b"}, d2 = {"Lio/didomi/sdk/M3$a;", "", "<init>", "()V", "", "DESCRIPTION_DEFAULT_TEXT_SIZE", "F", "TITLE_DEFAULT_TEXT_SIZE", "android_release"}, mv = {1, 8, 0})
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }
    }

    @Metadata(mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[C1806k.i.a.values().length];
            try {
                iArr[C1806k.i.a.PRIMARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[C1806k.i.a.SECONDARY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[C1806k.i.a.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Landroid/graphics/Typeface;", "a", "()Landroid/graphics/Typeface;"}, mv = {1, 8, 0})
    static final class c extends Lambda implements Function0<Typeface> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Typeface invoke() {
            String strE = V5.e(M3.this.a.s().f().f());
            if (strE != null) {
                return M3.this.a.n().a(strE);
            }
            return null;
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/k$i$c$a;", "a", "()Lio/didomi/sdk/k$i$c$a;"}, mv = {1, 8, 0})
    static final class d extends Lambda implements Function0<C1806k.i.c.a> {
        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final C1806k.i.c.a invoke() {
            String strB = M3.this.a.s().f().b();
            if (strB == null) {
                strB = M3.this.a.s().f().a();
            }
            return C1806k.i.c.a.c.a(strB);
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Landroid/graphics/Typeface;", "a", "()Landroid/graphics/Typeface;"}, mv = {1, 8, 0})
    static final class e extends Lambda implements Function0<Typeface> {
        e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Typeface invoke() {
            String strC = M3.this.a.s().f().c();
            if (strC == null) {
                strC = M3.this.a.s().f().f();
            }
            String strE = V5.e(strC);
            if (strE != null) {
                return M3.this.a.n().a(strE);
            }
            return null;
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Integer;"}, mv = {1, 8, 0})
    static final class f extends Lambda implements Function0<Integer> {
        f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer invoke() {
            String strD = M3.this.a.s().f().d();
            if (strD == null) {
                strD = M3.this.a.s().f().h();
            }
            return Integer.valueOf(strD != null ? C1936x.a.b(strD) : M3.this.a.j());
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0007\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Float;"}, mv = {1, 8, 0})
    static final class g extends Lambda implements Function0<Float> {
        g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Float invoke() {
            Integer numE = M3.this.a.s().f().e();
            if (numE == null) {
                numE = M3.this.a.s().f().i();
            }
            return Float.valueOf(numE != null ? numE.intValue() : 16.0f);
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class h extends Lambda implements Function0<Boolean> {
        h() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(M3.this.a.s().f().g());
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/w8;", "a", "()Lio/didomi/sdk/w8;"}, mv = {1, 8, 0})
    static final class i extends Lambda implements Function0<TextTheme> {
        i() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TextTheme invoke() {
            return new TextTheme(null, M3.this.a.f(), M3.this.a(), 1, null);
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/w8;", "a", "()Lio/didomi/sdk/w8;"}, mv = {1, 8, 0})
    static final class j extends Lambda implements Function0<TextTheme> {
        j() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TextTheme invoke() {
            return new TextTheme(null, M3.this.a.j(), M3.this.a(), 1, null);
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/w8;", "a", "()Lio/didomi/sdk/w8;"}, mv = {1, 8, 0})
    static final class k extends Lambda implements Function0<TextTheme> {
        k() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TextTheme invoke() {
            return new TextTheme(M3.this.a.c(), M3.this.a.e(), M3.this.a());
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/w8;", "a", "()Lio/didomi/sdk/w8;"}, mv = {1, 8, 0})
    static final class l extends Lambda implements Function0<TextTheme> {
        l() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TextTheme invoke() {
            return new TextTheme(M3.this.a.k(), M3.this.a.m(), M3.this.a());
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/k$i$c$a;", "a", "()Lio/didomi/sdk/k$i$c$a;"}, mv = {1, 8, 0})
    static final class m extends Lambda implements Function0<C1806k.i.c.a> {
        m() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final C1806k.i.c.a invoke() {
            String strJ = M3.this.a.s().f().j();
            if (strJ == null) {
                strJ = M3.this.a.s().f().a();
            }
            return C1806k.i.c.a.c.a(strJ);
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Landroid/graphics/Typeface;", "a", "()Landroid/graphics/Typeface;"}, mv = {1, 8, 0})
    static final class n extends Lambda implements Function0<Typeface> {
        n() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Typeface invoke() {
            String strK = M3.this.a.s().f().k();
            if (strK == null) {
                strK = M3.this.a.s().f().f();
            }
            String strE = V5.e(strK);
            if (strE != null) {
                return M3.this.a.n().a(strE);
            }
            return null;
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Integer;"}, mv = {1, 8, 0})
    static final class o extends Lambda implements Function0<Integer> {
        o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer invoke() {
            String strL = M3.this.a.s().f().l();
            if (strL == null) {
                strL = M3.this.a.s().f().h();
            }
            return Integer.valueOf(strL != null ? C1936x.a.b(strL) : M3.this.a.j());
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0007\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Float;"}, mv = {1, 8, 0})
    static final class p extends Lambda implements Function0<Float> {
        p() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Float invoke() {
            Integer numM = M3.this.a.s().f().m();
            if (numM == null) {
                numM = M3.this.a.s().f().i();
            }
            return Float.valueOf(numM != null ? numM.intValue() : 24.0f);
        }
    }

    public M3(C1965z8 themeProvider) {
        Intrinsics.checkNotNullParameter(themeProvider, "themeProvider");
        this.a = themeProvider;
        this.b = LazyKt__LazyJVMKt.lazy(new c());
        this.c = LazyKt__LazyJVMKt.lazy(new h());
        this.f8293d = LazyKt__LazyJVMKt.lazy(new k());
        this.f8294e = LazyKt__LazyJVMKt.lazy(new l());
        this.f8295f = LazyKt__LazyJVMKt.lazy(new j());
        this.f8296g = LazyKt__LazyJVMKt.lazy(new i());
        this.h = LazyKt__LazyJVMKt.lazy(new d());
        this.i = LazyKt__LazyJVMKt.lazy(new e());
        this.j = LazyKt__LazyJVMKt.lazy(new f());
        this.k = LazyKt__LazyJVMKt.lazy(new g());
        this.l = LazyKt__LazyJVMKt.lazy(new m());
        this.m = LazyKt__LazyJVMKt.lazy(new n());
        this.n = LazyKt__LazyJVMKt.lazy(new o());
        this.o = LazyKt__LazyJVMKt.lazy(new p());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Typeface a() {
        return (Typeface) this.b.getValue();
    }

    public final TextTheme a(C1806k.i.a format) {
        Intrinsics.checkNotNullParameter(format, "format");
        int i2 = b.a[format.ordinal()];
        if (i2 == 1) {
            return h();
        }
        if (i2 == 2) {
            return i();
        }
        if (i2 == 3) {
            return g();
        }
        throw new NoWhenBranchMatchedException();
    }

    public final C1806k.i.c.a b() {
        return (C1806k.i.c.a) this.h.getValue();
    }

    public final Typeface c() {
        return (Typeface) this.i.getValue();
    }

    public final int d() {
        return ((Number) this.j.getValue()).intValue();
    }

    public final float e() {
        return ((Number) this.k.getValue()).floatValue();
    }

    public final TextTheme f() {
        return (TextTheme) this.f8296g.getValue();
    }

    public final TextTheme g() {
        return (TextTheme) this.f8295f.getValue();
    }

    public final TextTheme h() {
        return (TextTheme) this.f8293d.getValue();
    }

    public final TextTheme i() {
        return (TextTheme) this.f8294e.getValue();
    }

    public final C1806k.i.c.a j() {
        return (C1806k.i.c.a) this.l.getValue();
    }

    public final Typeface k() {
        return (Typeface) this.m.getValue();
    }

    public final int l() {
        return ((Number) this.n.getValue()).intValue();
    }

    public final float m() {
        return ((Number) this.o.getValue()).floatValue();
    }

    public final boolean n() {
        return ((Boolean) this.c.getValue()).booleanValue();
    }
}
