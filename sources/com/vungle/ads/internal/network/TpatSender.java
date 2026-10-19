package com.vungle.ads.internal.network;

import android.util.Log;
import com.json.o2;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.TpatRetryFailure;
import com.vungle.ads.internal.load.BaseAdLoader;
import com.vungle.ads.internal.persistence.FilePreferences;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.PathProvider;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KTypeProjection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.modules.SerializersModule;

/* JADX INFO: renamed from: com.vungle.ads.internal.network.h, reason: from Kotlin metadata */
/* JADX INFO: compiled from: TpatSender.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\u0018\u0000 $2\u00020\u0001:\u0001$B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ$\u0010\u0015\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00170\u0016j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0017`\u0018H\u0002J\u0016\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\tJ\u0015\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\tH\u0000¢\u0006\u0002\b\u001eJ,\u0010\u001f\u001a\u00020\u001a2\"\u0010 \u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00170\u0016j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0017`\u0018H\u0002J\u0016\u0010!\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\tJ\u0016\u0010#\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\tR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006%"}, d2 = {"Lcom/vungle/ads/internal/network/TpatSender;", "", "vungleApiClient", "Lcom/vungle/ads/internal/network/VungleApiClient;", o2.i, "", "creativeId", "eventId", "ioExecutor", "Ljava/util/concurrent/Executor;", "pathProvider", "Lcom/vungle/ads/internal/util/PathProvider;", "(Lcom/vungle/ads/internal/network/VungleApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/vungle/ads/internal/util/PathProvider;)V", "getCreativeId", "()Ljava/lang/String;", "getEventId", "getPlacementId", "tpatFilePreferences", "Lcom/vungle/ads/internal/persistence/FilePreferences;", "getVungleApiClient", "()Lcom/vungle/ads/internal/network/VungleApiClient;", "getStoredTpats", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "pingUrl", "", "url", "executor", "resendStoredTpats", "resendStoredTpats$vungle_ads_release", "saveStoredTpats", "tpats", "sendTpat", "urlString", "sendWinNotification", "Companion", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public final class TpatSender {
    private static final String FAILED_TPATS = "FAILED_TPATS";
    private static final int MAX_RETRIES = 5;
    private static final String TAG = "TpatSender";
    private final String creativeId;
    private final String eventId;
    private final String placementId;
    private final FilePreferences tpatFilePreferences;
    private final VungleApiClient vungleApiClient;

    public TpatSender(VungleApiClient vungleApiClient, String str, String str2, String str3, Executor ioExecutor, PathProvider pathProvider) {
        Intrinsics.checkNotNullParameter(vungleApiClient, "vungleApiClient");
        Intrinsics.checkNotNullParameter(ioExecutor, "ioExecutor");
        Intrinsics.checkNotNullParameter(pathProvider, "pathProvider");
        this.vungleApiClient = vungleApiClient;
        this.placementId = str;
        this.creativeId = str2;
        this.eventId = str3;
        this.tpatFilePreferences = new FilePreferences(ioExecutor, pathProvider, "failedTpats");
    }

    private final HashMap<String, Integer> getStoredTpats() {
        String string = this.tpatFilePreferences.getString(FAILED_TPATS);
        if (string == null) {
            return new HashMap<>();
        }
        Json.a aVar = Json.a;
        SerializersModule c = aVar.getC();
        KTypeProjection.Companion companion = KTypeProjection.a;
        KSerializer<Object> kSerializerSerializer = SerializersKt.serializer(c, Reflection.typeOf(HashMap.class, companion.d(Reflection.typeOf(String.class)), companion.d(Reflection.typeOf(Integer.TYPE))));
        Intrinsics.checkNotNull(kSerializerSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
        return (HashMap) aVar.b(kSerializerSerializer, string);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: pingUrl$lambda-3, reason: not valid java name */
    public static final void m1145pingUrl$lambda3(TpatSender this$0, String url) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(url, "$url");
        BaseAdLoader.b bVarPingTPAT = this$0.vungleApiClient.pingTPAT(url);
        if (bVarPingTPAT != null) {
            Log.e(TAG, "Ping URL failed with " + bVarPingTPAT.getDescription() + ", url:" + url);
        }
    }

    private final void saveStoredTpats(HashMap<String, Integer> tpats) {
        FilePreferences filePreferences = this.tpatFilePreferences;
        Json.a aVar = Json.a;
        SerializersModule c = aVar.getC();
        KTypeProjection.Companion companion = KTypeProjection.a;
        KSerializer<Object> kSerializerSerializer = SerializersKt.serializer(c, Reflection.typeOf(HashMap.class, companion.d(Reflection.typeOf(String.class)), companion.d(Reflection.typeOf(Integer.TYPE))));
        Intrinsics.checkNotNull(kSerializerSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
        filePreferences.put(FAILED_TPATS, aVar.d(kSerializerSerializer, tpats)).apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: sendTpat$lambda-1, reason: not valid java name */
    public static final void m1146sendTpat$lambda1(TpatSender this$0, String urlString) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(urlString, "$urlString");
        HashMap<String, Integer> storedTpats = this$0.getStoredTpats();
        Integer num = storedTpats.get(urlString);
        if (num == null) {
            num = 0;
        }
        int iIntValue = num.intValue();
        BaseAdLoader.b bVarPingTPAT = this$0.vungleApiClient.pingTPAT(urlString);
        if (bVarPingTPAT == null) {
            if (iIntValue != 0) {
                storedTpats.remove(urlString);
                this$0.saveStoredTpats(storedTpats);
                return;
            }
            return;
        }
        if (!bVarPingTPAT.getErrorIsTerminal()) {
            if (iIntValue >= 5) {
                storedTpats.remove(urlString);
                this$0.saveStoredTpats(storedTpats);
                new TpatRetryFailure(urlString).logErrorNoReturnValue$vungle_ads_release();
            } else {
                storedTpats.put(urlString, Integer.valueOf(iIntValue + 1));
                this$0.saveStoredTpats(storedTpats);
            }
        }
        Log.e(TAG, "TPAT failed with " + bVarPingTPAT.getDescription() + ", url:" + urlString);
        if (bVarPingTPAT.getReason() == 29) {
            AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(Sdk.SDKMetric.SDKMetricType.NOTIFICATION_REDIRECT, (60 & 2) != 0 ? 0L : 0L, (60 & 4) != 0 ? null : this$0.placementId, (60 & 8) != 0 ? null : null, (60 & 16) != 0 ? null : null, (60 & 32) == 0 ? urlString : null);
            return;
        }
        AnalyticsClient.INSTANCE.logError$vungle_ads_release(Sdk.SDKError.Reason.TPAT_ERROR, "Fail to send " + urlString + ", error: " + bVarPingTPAT.getDescription(), this$0.placementId, this$0.creativeId, this$0.eventId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: sendWinNotification$lambda-0, reason: not valid java name */
    public static final void m1147sendWinNotification$lambda0(TpatSender this$0, String urlString) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(urlString, "$urlString");
        BaseAdLoader.b bVarPingTPAT = this$0.vungleApiClient.pingTPAT(urlString);
        if (bVarPingTPAT != null) {
            AnalyticsClient.INSTANCE.logError$vungle_ads_release(Sdk.SDKError.Reason.AD_WIN_NOTIFICATION_ERROR, "Fail to send " + urlString + ", error: " + bVarPingTPAT.getDescription(), this$0.placementId, this$0.creativeId, this$0.eventId);
        }
    }

    public final String getCreativeId() {
        return this.creativeId;
    }

    public final String getEventId() {
        return this.eventId;
    }

    public final String getPlacementId() {
        return this.placementId;
    }

    public final VungleApiClient getVungleApiClient() {
        return this.vungleApiClient;
    }

    public final void pingUrl(final String url, Executor executor) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(executor, "executor");
        executor.execute(new Runnable() { // from class: com.vungle.ads.internal.network.c
            @Override // java.lang.Runnable
            public final void run() {
                TpatSender.m1145pingUrl$lambda3(this.a, url);
            }
        });
    }

    public final void resendStoredTpats$vungle_ads_release(Executor executor) {
        Intrinsics.checkNotNullParameter(executor, "executor");
        Iterator<Map.Entry<String, Integer>> it = getStoredTpats().entrySet().iterator();
        while (it.hasNext()) {
            sendTpat(it.next().getKey(), executor);
        }
    }

    public final void sendTpat(final String urlString, Executor executor) {
        Intrinsics.checkNotNullParameter(urlString, "urlString");
        Intrinsics.checkNotNullParameter(executor, "executor");
        executor.execute(new Runnable() { // from class: com.vungle.ads.internal.network.b
            @Override // java.lang.Runnable
            public final void run() {
                TpatSender.m1146sendTpat$lambda1(this.a, urlString);
            }
        });
    }

    public final void sendWinNotification(final String urlString, Executor executor) {
        Intrinsics.checkNotNullParameter(urlString, "urlString");
        Intrinsics.checkNotNullParameter(executor, "executor");
        executor.execute(new Runnable() { // from class: com.vungle.ads.internal.network.a
            @Override // java.lang.Runnable
            public final void run() {
                TpatSender.m1147sendWinNotification$lambda0(this.a, urlString);
            }
        });
    }
}
