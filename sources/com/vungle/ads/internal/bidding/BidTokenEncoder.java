package com.vungle.ads.internal.bidding;

import android.content.Context;
import android.util.Base64;
import com.google.android.gms.ads.RequestConfiguration;
import com.json.o2;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.model.CommonRequestBody;
import com.vungle.ads.internal.model.RtbRequest;
import com.vungle.ads.internal.model.RtbToken;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.util.ActivityManager;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.GZIPOutputStream;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.n;
import kotlin.text.Charsets;
import kotlin.v;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonKt;

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
/* JADX INFO: compiled from: BidTokenEncoder.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\n\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0002J\u0006\u0010\r\u001a\u00020\fJ\b\u0010\u000e\u001a\u0004\u0018\u00010\fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010²\u0006\n\u0010\u0011\u001a\u00020\u0012X\u008a\u0084\u0002"}, d2 = {"Lcom/vungle/ads/internal/bidding/BidTokenEncoder;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "enterBackgroundTime", "", "json", "Lkotlinx/serialization/json/Json;", "ordinalView", "", "bidTokenV4", "", "constructV4Token", "encode", "Companion", "vungle-ads_release", "vungleApiClient", "Lcom/vungle/ads/internal/network/VungleApiClient;"}, mv = {1, 7, 1}, xi = 48)
public final class BidTokenEncoder {
    public static final b Companion = new b(null);
    private static final int TOKEN_VERSION = 4;
    private final Context context;
    private long enterBackgroundTime;
    private final Json json;
    private int ordinalView;

    /* JADX INFO: compiled from: BidTokenEncoder.kt */
    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016¨\u0006\u0005"}, d2 = {"com/vungle/ads/internal/bidding/BidTokenEncoder$1", "Lcom/vungle/ads/internal/util/ActivityManager$LifeCycleCallback;", o2.h.t0, "", o2.h.u0, "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class a extends ActivityManager.b {
        a() {
        }

        @Override // com.vungle.ads.internal.util.ActivityManager.b
        public void onPause() {
            super.onPause();
            BidTokenEncoder.this.enterBackgroundTime = System.currentTimeMillis();
        }

        @Override // com.vungle.ads.internal.util.ActivityManager.b
        public void onResume() {
            super.onResume();
            if (System.currentTimeMillis() > BidTokenEncoder.this.enterBackgroundTime + (((long) ConfigManager.INSTANCE.getSessionTimeoutInSecond()) * 1000)) {
                BidTokenEncoder.this.ordinalView = 0;
                BidTokenEncoder.this.enterBackgroundTime = 0L;
            }
        }
    }

    /* JADX INFO: compiled from: BidTokenEncoder.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/vungle/ads/internal/bidding/BidTokenEncoder$Companion;", "", "()V", "TOKEN_VERSION", "", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(n nVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: ServiceLocator.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "invoke", "()Ljava/lang/Object;", "com/vungle/ads/ServiceLocator$Companion$inject$1"}, mv = {1, 7, 1}, xi = 48)
    public static final class c extends Lambda implements Function0<VungleApiClient> {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Context context) {
            super(0);
            this.$context = context;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.VungleApiClient, java.lang.Object] */
        @Override // kotlin.jvm.functions.Function0
        public final VungleApiClient invoke() {
            return ServiceLocator.Companion.getInstance(this.$context).getOrBuild$vungle_ads_release(VungleApiClient.class);
        }
    }

    /* JADX INFO: compiled from: BidTokenEncoder.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Lkotlinx/serialization/json/JsonBuilder;", "invoke"}, mv = {1, 7, 1}, xi = 48)
    static final class d extends Lambda implements Function1<JsonBuilder, v> {
        public static final d INSTANCE = new d();

        d() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(JsonBuilder jsonBuilder) {
            invoke2(jsonBuilder);
            return v.a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(JsonBuilder Json) {
            Intrinsics.checkNotNullParameter(Json, "$this$Json");
            Json.e(false);
        }
    }

    public BidTokenEncoder(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.json = JsonKt.Json$default(null, d.INSTANCE, 1, null);
        ActivityManager.INSTANCE.addLifecycleListener(new a());
    }

    private final String bidTokenV4() {
        try {
            String strConstructV4Token = constructV4Token();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(strConstructV4Token.length());
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            byte[] bytes = strConstructV4Token.getBytes(Charsets.b);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            gZIPOutputStream.write(bytes);
            gZIPOutputStream.close();
            String strEncodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
            byteArrayOutputStream.close();
            return "4:" + strEncodeToString;
        } catch (IOException e2) {
            AnalyticsClient.INSTANCE.logError$vungle_ads_release(116, "Fail to gzip bidtoken " + e2.getLocalizedMessage(), (24 & 4) != 0 ? null : null, (24 & 8) != 0 ? null : null, (24 & 16) != 0 ? null : null);
            return null;
        }
    }

    /* JADX INFO: renamed from: constructV4Token$lambda-0, reason: not valid java name */
    private static final VungleApiClient m1131constructV4Token$lambda0(Lazy<VungleApiClient> lazy) {
        return lazy.getValue();
    }

    public final String constructV4Token() {
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        CommonRequestBody commonRequestBodyRequestBody = m1131constructV4Token$lambda0(LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.a, (Function0) new c(this.context))).requestBody();
        RtbToken rtbToken = new RtbToken(commonRequestBodyRequestBody.getDevice(), commonRequestBodyRequestBody.getUser(), commonRequestBodyRequestBody.getExt(), new RtbRequest(VungleApiClient.Companion.getHeaderUa()), this.ordinalView);
        Json json = this.json;
        KSerializer<Object> kSerializerSerializer = SerializersKt.serializer(json.getC(), Reflection.typeOf(RtbToken.class));
        Intrinsics.checkNotNull(kSerializerSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
        return json.d(kSerializerSerializer, rtbToken);
    }

    public final String encode() {
        this.ordinalView++;
        return bidTokenV4();
    }
}
