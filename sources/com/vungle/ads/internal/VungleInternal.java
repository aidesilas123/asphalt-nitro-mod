package com.vungle.ads.internal;

import android.content.Context;
import com.google.android.gms.ads.RequestConfiguration;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.internal.bidding.BidTokenEncoder;
import com.vungle.ads.internal.executor.FutureResult;
import com.vungle.ads.internal.executor.SDKExecutors;
import com.vungle.ads.internal.util.ConcurrencyTimeoutProvider;
import com.vungle.ads.v0;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.vungle.ads.internal.h, reason: from Kotlin metadata */
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
/* JADX INFO: compiled from: VungleInternal.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0004¨\u0006\b²\u0006\n\u0010\t\u001a\u00020\nX\u008a\u0084\u0002²\u0006\n\u0010\u000b\u001a\u00020\fX\u008a\u0084\u0002²\u0006\n\u0010\r\u001a\u00020\u000eX\u008a\u0084\u0002"}, d2 = {"Lcom/vungle/ads/internal/VungleInternal;", "", "()V", "getAvailableBidTokens", "", "context", "Landroid/content/Context;", "getSdkVersion", "vungle-ads_release", IronSourceConstants.EVENTS_PROVIDER, "Lcom/vungle/ads/internal/util/ConcurrencyTimeoutProvider;", "sdkExecutors", "Lcom/vungle/ads/internal/executor/SDKExecutors;", "bidTokenEncoder", "Lcom/vungle/ads/internal/bidding/BidTokenEncoder;"}, mv = {1, 7, 1}, xi = 48)
public final class VungleInternal {

    /* JADX INFO: renamed from: com.vungle.ads.internal.h$a */
    /* JADX INFO: compiled from: ServiceLocator.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "invoke", "()Ljava/lang/Object;", "com/vungle/ads/ServiceLocator$Companion$inject$1"}, mv = {1, 7, 1}, xi = 48)
    public static final class a extends Lambda implements Function0<ConcurrencyTimeoutProvider> {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context) {
            super(0);
            this.$context = context;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.util.d, java.lang.Object] */
        @Override // kotlin.jvm.functions.Function0
        public final ConcurrencyTimeoutProvider invoke() {
            return ServiceLocator.Companion.getInstance(this.$context).getOrBuild$vungle_ads_release(ConcurrencyTimeoutProvider.class);
        }
    }

    /* JADX INFO: renamed from: com.vungle.ads.internal.h$b */
    /* JADX INFO: compiled from: ServiceLocator.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "invoke", "()Ljava/lang/Object;", "com/vungle/ads/ServiceLocator$Companion$inject$1"}, mv = {1, 7, 1}, xi = 48)
    public static final class b extends Lambda implements Function0<SDKExecutors> {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context) {
            super(0);
            this.$context = context;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.executor.c, java.lang.Object] */
        @Override // kotlin.jvm.functions.Function0
        public final SDKExecutors invoke() {
            return ServiceLocator.Companion.getInstance(this.$context).getOrBuild$vungle_ads_release(SDKExecutors.class);
        }
    }

    /* JADX INFO: renamed from: com.vungle.ads.internal.h$c */
    /* JADX INFO: compiled from: ServiceLocator.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "invoke", "()Ljava/lang/Object;", "com/vungle/ads/ServiceLocator$Companion$inject$1"}, mv = {1, 7, 1}, xi = 48)
    public static final class c extends Lambda implements Function0<BidTokenEncoder> {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Context context) {
            super(0);
            this.$context = context;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.bidding.BidTokenEncoder, java.lang.Object] */
        @Override // kotlin.jvm.functions.Function0
        public final BidTokenEncoder invoke() {
            return ServiceLocator.Companion.getInstance(this.$context).getOrBuild$vungle_ads_release(BidTokenEncoder.class);
        }
    }

    /* JADX INFO: renamed from: getAvailableBidTokens$lambda-0, reason: not valid java name */
    private static final ConcurrencyTimeoutProvider m1133getAvailableBidTokens$lambda0(Lazy<ConcurrencyTimeoutProvider> lazy) {
        return lazy.getValue();
    }

    /* JADX INFO: renamed from: getAvailableBidTokens$lambda-1, reason: not valid java name */
    private static final SDKExecutors m1134getAvailableBidTokens$lambda1(Lazy<SDKExecutors> lazy) {
        return lazy.getValue();
    }

    /* JADX INFO: renamed from: getAvailableBidTokens$lambda-2, reason: not valid java name */
    private static final BidTokenEncoder m1135getAvailableBidTokens$lambda2(Lazy<BidTokenEncoder> lazy) {
        return lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getAvailableBidTokens$lambda-3, reason: not valid java name */
    public static final String m1136getAvailableBidTokens$lambda3(Lazy bidTokenEncoder$delegate) {
        Intrinsics.checkNotNullParameter(bidTokenEncoder$delegate, "$bidTokenEncoder$delegate");
        return m1135getAvailableBidTokens$lambda2(bidTokenEncoder$delegate).encode();
    }

    public final String getAvailableBidTokens(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.a;
        Lazy lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new a(context));
        Lazy lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new b(context));
        final Lazy lazy3 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new c(context));
        return (String) new FutureResult(m1134getAvailableBidTokens$lambda1(lazy2).getIO_EXECUTOR().submit(new Callable() { // from class: com.vungle.ads.internal.f
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return VungleInternal.m1136getAvailableBidTokens$lambda3(lazy3);
            }
        })).get(m1133getAvailableBidTokens$lambda0(lazy).getTimeout(), TimeUnit.MILLISECONDS);
    }

    public final String getSdkVersion() {
        return v0.VERSION_NAME;
    }
}
