package io.didomi.drawable;

import androidx.core.graphics.ColorUtils;
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
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: renamed from: io.didomi.sdk.z8, reason: case insensitive filesystem */
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
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b!\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 I2\u00020\u0001:\u0001\rB\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u000eR\u001a\u0010\u0005\u001a\u00020\u00048\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\r\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001b\u0010\u0017\u001a\u00020\u00128@X\u0080\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u001b\u0010\u001b\u001a\u00020\u00188BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u0014\u001a\u0004\b\u0013\u0010\u001aR\u001b\u0010\u001e\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u0014\u001a\u0004\b\u001c\u0010\u001dR\u001b\u0010!\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010\u0014\u001a\u0004\b \u0010\u001dR\u001b\u0010$\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\u0014\u001a\u0004\b#\u0010\u001dR\u001b\u0010\u000b\u001a\u00020\n8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b%\u0010\u0014\u001a\u0004\b\r\u0010\u001dR\u001b\u0010(\u001a\u00020\n8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b&\u0010\u0014\u001a\u0004\b'\u0010\u001dR\u001b\u0010+\u001a\u00020\n8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b)\u0010\u0014\u001a\u0004\b*\u0010\u001dR\u001b\u0010-\u001a\u00020\n8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b,\u0010\u0014\u001a\u0004\b,\u0010\u001dR\u001b\u00100\u001a\u00020\n8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b.\u0010\u0014\u001a\u0004\b/\u0010\u001dR\u001b\u00101\u001a\u00020\n8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b \u0010\u0014\u001a\u0004\b%\u0010\u001dR\u001b\u00103\u001a\u00020\n8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b2\u0010\u0014\u001a\u0004\b\"\u0010\u001dR\u001b\u00105\u001a\u00020\f8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0014\u001a\u0004\b\u0019\u00104R\u001b\u00107\u001a\u00020\n8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b6\u0010\u0014\u001a\u0004\b\u001f\u0010\u001dR\u001b\u00108\u001a\u00020\f8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b#\u0010\u0014\u001a\u0004\b.\u00104R\u001b\u00109\u001a\u00020\n8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b'\u0010\u0014\u001a\u0004\b2\u0010\u001dR\u001b\u0010=\u001a\u00020:8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b/\u0010\u0014\u001a\u0004\b;\u0010<R\u001b\u0010?\u001a\u00020:8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0014\u001a\u0004\b>\u0010<R\u001b\u0010A\u001a\u00020:8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b;\u0010\u0014\u001a\u0004\b@\u0010<R\u001b\u0010D\u001a\u00020B8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b>\u0010\u0014\u001a\u0004\b&\u0010CR\u001b\u0010G\u001a\u00020E8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b@\u0010\u0014\u001a\u0004\b)\u0010FR\u0011\u0010H\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b6\u00104¨\u0006J"}, d2 = {"Lio/didomi/sdk/z8;", "", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/s5;", "resourcesHelper", "<init>", "(Lio/didomi/sdk/H;Lio/didomi/sdk/s5;)V", "Lio/didomi/sdk/k$i$b$a;", "buttonTheme", "", TtmlNode.ATTR_TTS_BACKGROUND_COLOR, "Landroid/graphics/drawable/GradientDrawable;", "a", "(Lio/didomi/sdk/k$i$b$a;I)Landroid/graphics/drawable/GradientDrawable;", "Lio/didomi/sdk/s5;", b4.p, "()Lio/didomi/sdk/s5;", "Lio/didomi/sdk/k$i;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "s", "()Lio/didomi/sdk/k$i;", "theme", "Lio/didomi/sdk/k$i$b;", "c", "()Lio/didomi/sdk/k$i$b;", "buttonsThemeConfig", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()I", "highlightBackgroundColor", "e", "l", "regularBackgroundColor", InneractiveMediationDefs.GENDER_FEMALE, TtmlNode.TAG_P, "secondaryBackgroundColor", "g", "h", CampaignEx.JSON_KEY_AD_Q, "secondaryDividerColor", "i", "getThemeColor", "themeColor", "j", "primaryTextColor", CampaignEx.JSON_KEY_AD_K, "r", "secondaryTextColor", "logoColor", InneractiveMediationDefs.GENDER_MALE, "linkColor", "()Landroid/graphics/drawable/GradientDrawable;", "highlightBackground", "o", "highlightTextColor", "regularBackground", "regularTextColor", "", "t", "()Z", "isDarkTheme", "u", "isFullscreen", "v", "isLinkColorSet", "Lio/didomi/sdk/M3;", "()Lio/didomi/sdk/M3;", "notice", "Lio/didomi/sdk/e4;", "()Lio/didomi/sdk/e4;", "preferences", "secondaryBackground", "w", "android_release"}, mv = {1, 8, 0})
public final class C1965z8 {
    public static final a w = new a(null);
    private final C1892s5 a;
    private final Lazy b;
    private final Lazy c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f8823d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f8824e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f8825f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f8826g;
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
    private final Lazy u;
    private final Lazy v;

    /* JADX INFO: renamed from: io.didomi.sdk.z8$a */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0006R\u0014\u0010\b\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0006R\u0014\u0010\n\u001a\u00020\t8\u0000X\u0080T¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\t8\u0000X\u0080T¢\u0006\u0006\n\u0004\b\f\u0010\u000bR\u0014\u0010\r\u001a\u00020\t8\u0000X\u0080T¢\u0006\u0006\n\u0004\b\r\u0010\u000bR\u0014\u0010\u000e\u001a\u00020\t8\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u000e\u0010\u000b¨\u0006\u000f"}, d2 = {"Lio/didomi/sdk/z8$a;", "", "<init>", "()V", "", "DEFAULT_REGULAR_BACKGROUND_COLOR", "Ljava/lang/String;", "DEFAULT_REGULAR_TEXT_COLOR", "DEFAULT_THEME_COLOR", "", "SECONDARY_BACKGROUND_ALPHA", "I", "SECONDARY_BACKGROUND_RADIUS", "SECONDARY_COLOR_ALPHA", "SECONDARY_DIVIDER_ALPHA", "android_release"}, mv = {1, 8, 0})
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.z8$b */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Integer;"}, mv = {1, 8, 0})
    static final class b extends Lambda implements Function0<Integer> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer invoke() {
            C1936x c1936x = C1936x.a;
            String strA = C1965z8.this.s().a();
            if (StringsKt__StringsJVMKt.isBlank(strA)) {
                strA = "#FFFFFF";
            }
            return Integer.valueOf(c1936x.b(strA));
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.z8$c */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/k$i$b;", "a", "()Lio/didomi/sdk/k$i$b;"}, mv = {1, 8, 0})
    static final class c extends Lambda implements Function0<C1806k.i.b> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final C1806k.i.b invoke() {
            return C1965z8.this.s().b();
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.z8$d, reason: from Kotlin metadata */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Landroid/graphics/drawable/GradientDrawable;", "a", "()Landroid/graphics/drawable/GradientDrawable;"}, mv = {1, 8, 0})
    static final class GradientDrawable extends Lambda implements Function0<android.graphics.drawable.GradientDrawable> {
        GradientDrawable() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final android.graphics.drawable.GradientDrawable invoke() {
            C1965z8 c1965z8 = C1965z8.this;
            return c1965z8.a(c1965z8.b().a(), C1965z8.this.d());
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.z8$e */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Integer;"}, mv = {1, 8, 0})
    static final class e extends Lambda implements Function0<Integer> {
        e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer invoke() {
            C1936x c1936x = C1936x.a;
            String strC = C1965z8.this.b().a().c();
            if (strC == null) {
                strC = C1965z8.this.s().c();
            }
            return Integer.valueOf(c1936x.b(strC));
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.z8$f */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Integer;"}, mv = {1, 8, 0})
    static final class f extends Lambda implements Function0<Integer> {
        f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer invoke() {
            C1806k.i.b.a aVarA = C1965z8.this.b().a();
            String strA = aVarA.a();
            String strB = aVarA.b();
            if (strB == null) {
                strB = strA != null ? C1936x.a.a(strA) : C1816l.a(C1965z8.this.s());
            }
            return Integer.valueOf(C1936x.a.b(strB));
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.z8$g */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class g extends Lambda implements Function0<Boolean> {
        g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(C1965z8.this.j() == -1);
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.z8$h */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class h extends Lambda implements Function0<Boolean> {
        h() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(C1965z8.this.s().d() || C1965z8.this.h().n());
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.z8$i */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class i extends Lambda implements Function0<Boolean> {
        i() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(!StringsKt__StringsJVMKt.isBlank(C1965z8.this.s().e()));
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.z8$j */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Integer;"}, mv = {1, 8, 0})
    static final class j extends Lambda implements Function0<Integer> {
        j() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer invoke() {
            return Integer.valueOf(C1936x.a.b(C1965z8.this.s().e()));
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.z8$k */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Integer;"}, mv = {1, 8, 0})
    static final class k extends Lambda implements Function0<Integer> {
        k() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer invoke() {
            return Integer.valueOf(C1965z8.this.t() ? C1965z8.this.n().a(R.color.didomi_dark_logo) : C1965z8.this.n().a(R.color.didomi_light_logo));
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.z8$l */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/M3;", "a", "()Lio/didomi/sdk/M3;"}, mv = {1, 8, 0})
    static final class l extends Lambda implements Function0<M3> {
        l() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final M3 invoke() {
            return new M3(C1965z8.this);
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.z8$m */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/e4;", "a", "()Lio/didomi/sdk/e4;"}, mv = {1, 8, 0})
    static final class m extends Lambda implements Function0<C1751e4> {
        m() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final C1751e4 invoke() {
            return new C1751e4(C1965z8.this);
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.z8$n */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Integer;"}, mv = {1, 8, 0})
    static final class n extends Lambda implements Function0<Integer> {
        n() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer invoke() {
            C1936x c1936x = C1936x.a;
            String strA = C1965z8.this.s().a();
            if (StringsKt__StringsJVMKt.isBlank(strA)) {
                strA = "#FFFFFF";
            }
            return Integer.valueOf(c1936x.b(c1936x.a(strA)));
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.z8$o, reason: from Kotlin metadata and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Landroid/graphics/drawable/GradientDrawable;", "a", "()Landroid/graphics/drawable/GradientDrawable;"}, mv = {1, 8, 0})
    static final class C1966o extends Lambda implements Function0<android.graphics.drawable.GradientDrawable> {
        C1966o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final android.graphics.drawable.GradientDrawable invoke() {
            C1965z8 c1965z8 = C1965z8.this;
            return c1965z8.a(c1965z8.b().b(), C1965z8.this.l());
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.z8$p */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Integer;"}, mv = {1, 8, 0})
    static final class p extends Lambda implements Function0<Integer> {
        p() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer invoke() {
            C1936x c1936x = C1936x.a;
            String strC = C1965z8.this.b().b().c();
            if (strC == null) {
                strC = "#F0F0F0";
            }
            return Integer.valueOf(c1936x.b(strC));
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.z8$q */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Integer;"}, mv = {1, 8, 0})
    static final class q extends Lambda implements Function0<Integer> {
        q() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer invoke() {
            C1806k.i.b.a aVarB = C1965z8.this.b().b();
            String strA = aVarB.a();
            String strB = aVarB.b();
            if (strB == null) {
                strB = strA != null ? C1936x.a.a(strA) : "#000000";
            }
            return Integer.valueOf(C1936x.a.b(strB));
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.z8$r */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Integer;"}, mv = {1, 8, 0})
    static final class r extends Lambda implements Function0<Integer> {
        r() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer invoke() {
            return Integer.valueOf(ColorUtils.setAlphaComponent(C1965z8.this.j(), 10));
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.z8$s */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Integer;"}, mv = {1, 8, 0})
    static final class s extends Lambda implements Function0<Integer> {
        s() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer invoke() {
            return Integer.valueOf(ColorUtils.setAlphaComponent(C1965z8.this.j(), 32));
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.z8$t */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Integer;"}, mv = {1, 8, 0})
    static final class t extends Lambda implements Function0<Integer> {
        t() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer invoke() {
            return Integer.valueOf(ColorUtils.setAlphaComponent(C1965z8.this.j(), 179));
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.z8$u */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/k$i;", "a", "()Lio/didomi/sdk/k$i;"}, mv = {1, 8, 0})
    static final class u extends Lambda implements Function0<C1806k.i> {
        final /* synthetic */ H a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        u(H h) {
            super(0);
            this.a = h;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final C1806k.i invoke() {
            return this.a.b().j();
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.z8$v */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Integer;"}, mv = {1, 8, 0})
    static final class v extends Lambda implements Function0<Integer> {
        v() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer invoke() {
            C1936x c1936x = C1936x.a;
            String strC = C1965z8.this.s().c();
            if (StringsKt__StringsJVMKt.isBlank(strC)) {
                strC = "#999999";
            }
            return Integer.valueOf(c1936x.b(strC));
        }
    }

    public C1965z8(H configurationRepository, C1892s5 resourcesHelper) {
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(resourcesHelper, "resourcesHelper");
        this.a = resourcesHelper;
        this.b = LazyKt__LazyJVMKt.lazy(new u(configurationRepository));
        this.c = LazyKt__LazyJVMKt.lazy(new c());
        this.f8823d = LazyKt__LazyJVMKt.lazy(new e());
        this.f8824e = LazyKt__LazyJVMKt.lazy(new p());
        this.f8825f = LazyKt__LazyJVMKt.lazy(new r());
        this.f8826g = LazyKt__LazyJVMKt.lazy(new b());
        this.h = LazyKt__LazyJVMKt.lazy(new s());
        this.i = LazyKt__LazyJVMKt.lazy(new v());
        this.j = LazyKt__LazyJVMKt.lazy(new n());
        this.k = LazyKt__LazyJVMKt.lazy(new t());
        this.l = LazyKt__LazyJVMKt.lazy(new k());
        this.m = LazyKt__LazyJVMKt.lazy(new j());
        this.n = LazyKt__LazyJVMKt.lazy(new GradientDrawable());
        this.o = LazyKt__LazyJVMKt.lazy(new f());
        this.p = LazyKt__LazyJVMKt.lazy(new C1966o());
        this.q = LazyKt__LazyJVMKt.lazy(new q());
        this.r = LazyKt__LazyJVMKt.lazy(new g());
        this.s = LazyKt__LazyJVMKt.lazy(new h());
        this.t = LazyKt__LazyJVMKt.lazy(new i());
        this.u = LazyKt__LazyJVMKt.lazy(new l());
        this.v = LazyKt__LazyJVMKt.lazy(new m());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final android.graphics.drawable.GradientDrawable a(C1806k.i.b.a aVar, int i2) {
        android.graphics.drawable.GradientDrawable gradientDrawable = new android.graphics.drawable.GradientDrawable();
        boolean zG = aVar.g();
        String strE = aVar.e();
        if (strE != null) {
            float fA = Float.parseFloat(strE);
            if (zG) {
                fA *= this.a.a();
            }
            gradientDrawable.setCornerRadius(fA);
        } else {
            gradientDrawable.setCornerRadius(0.0f);
        }
        String strD = aVar.d();
        String strF = aVar.f();
        if (strF == null || strD == null) {
            gradientDrawable.setStroke(0, 0);
        } else {
            int iA = Integer.parseInt(strF);
            if (zG) {
                iA = (int) (iA * this.a.a());
            }
            gradientDrawable.setStroke(iA, C1936x.a.b(strD));
        }
        gradientDrawable.setColor(i2);
        return gradientDrawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final C1806k.i.b b() {
        return (C1806k.i.b) this.c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int d() {
        return ((Number) this.f8823d.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int l() {
        return ((Number) this.f8824e.getValue()).intValue();
    }

    private final int p() {
        return ((Number) this.f8825f.getValue()).intValue();
    }

    public final int a() {
        return ((Number) this.f8826g.getValue()).intValue();
    }

    public final android.graphics.drawable.GradientDrawable c() {
        return (android.graphics.drawable.GradientDrawable) this.n.getValue();
    }

    public final int e() {
        return ((Number) this.o.getValue()).intValue();
    }

    public final int f() {
        return ((Number) this.m.getValue()).intValue();
    }

    public final int g() {
        return ((Number) this.l.getValue()).intValue();
    }

    public final M3 h() {
        return (M3) this.u.getValue();
    }

    public final C1751e4 i() {
        return (C1751e4) this.v.getValue();
    }

    public final int j() {
        return ((Number) this.j.getValue()).intValue();
    }

    public final android.graphics.drawable.GradientDrawable k() {
        return (android.graphics.drawable.GradientDrawable) this.p.getValue();
    }

    public final int m() {
        return ((Number) this.q.getValue()).intValue();
    }

    public final C1892s5 n() {
        return this.a;
    }

    public final android.graphics.drawable.GradientDrawable o() {
        android.graphics.drawable.GradientDrawable gradientDrawable = new android.graphics.drawable.GradientDrawable();
        gradientDrawable.setCornerRadius(4 * this.a.a());
        gradientDrawable.setColor(p());
        return gradientDrawable;
    }

    public final int q() {
        return ((Number) this.h.getValue()).intValue();
    }

    public final int r() {
        return ((Number) this.k.getValue()).intValue();
    }

    public final C1806k.i s() {
        return (C1806k.i) this.b.getValue();
    }

    public final boolean t() {
        return ((Boolean) this.r.getValue()).booleanValue();
    }

    public final boolean u() {
        return ((Boolean) this.s.getValue()).booleanValue();
    }

    public final boolean v() {
        return ((Boolean) this.t.getValue()).booleanValue();
    }
}
