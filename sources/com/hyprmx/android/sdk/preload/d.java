package com.hyprmx.android.sdk.preload;

import android.content.Context;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.hyprmx.android.sdk.utility.i0;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.preload.CacheController$loadAdCacheMap$2", f = "CacheController.kt", i = {2}, l = {105, 108, 112}, m = "invokeSuspend", n = {"adCacheMap"}, s = {"L$0"})
public final class d extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Map<String, com.hyprmx.android.sdk.api.data.b>>, Object> {
    public Map a;
    public int b;
    public final /* synthetic */ c c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(c cVar, Continuation<? super d> continuation) {
        super(2, continuation);
        this.c = cVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new d(this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Map<String, com.hyprmx.android.sdk.api.data.b>> continuation) {
        return ((d) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws JSONException {
        com.hyprmx.android.sdk.api.data.b bVar;
        Map mutableMap;
        Map map;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.b;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            c cVar = this.c;
            com.hyprmx.android.sdk.utility.a aVar = cVar.f4618d;
            Context context = cVar.b;
            this.b = 1;
            obj = aVar.b(context, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    map = this.a;
                    ResultKt.throwOnFailure(obj);
                    map.clear();
                    return map;
                }
                ResultKt.throwOnFailure(obj);
                mutableMap = MapsKt__MapsKt.toMutableMap((Map) obj);
                if (this.c.c.b() <= 0 && mutableMap.isEmpty()) {
                    HyprMXLog.e("Error loading ad cache state from disk. Clearing cache.");
                    p pVar = this.c.c;
                    this.a = mutableMap;
                    this.b = 3;
                    if (pVar.d(this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    map = mutableMap;
                    map.clear();
                    return map;
                }
            }
            ResultKt.throwOnFailure(obj);
        }
        JSONObject jSONObject = (JSONObject) obj;
        c cacheManager = this.c;
        this.b = 2;
        cacheManager.getClass();
        HyprMXLog.d("populateAdCacheJournal: " + jSONObject);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<String> itKeys = jSONObject.keys();
        Intrinsics.checkNotNullExpressionValue(itKeys, "jsonObject.keys()");
        while (itKeys.hasNext()) {
            String it = itKeys.next();
            Intrinsics.checkNotNullExpressionValue(it, "it");
            String jsonString = jSONObject.getString(it);
            Intrinsics.checkNotNullExpressionValue(jsonString, "jsonObject.getString(it)");
            Intrinsics.checkNotNullParameter(jsonString, "jsonString");
            Intrinsics.checkNotNullParameter(cacheManager, "cacheManager");
            JSONObject jSONObject2 = new JSONObject(jsonString);
            try {
                String string = jSONObject2.getString("identifier");
                Intrinsics.checkNotNullExpressionValue(string, "json.getString(FIELD_OFFER_IDENTIFIER)");
                bVar = new com.hyprmx.android.sdk.api.data.b(string, cacheManager);
                bVar.c = jSONObject2.getString("url");
                bVar.f4471d = i0.a("last_parse_date", jSONObject2);
                bVar.h = jSONObject2.getInt("tag_parse_failures");
                bVar.f4474g = jSONObject2.getInt("tag_download_failures");
                bVar.f4472e = i0.a("vastJSONString", jSONObject2);
                bVar.f4473f = i0.a("mediaAssetURL", jSONObject2);
            } catch (Exception unused) {
                bVar = new com.hyprmx.android.sdk.api.data.b("JSON deserialization error", cacheManager);
            }
            linkedHashMap.put(it, bVar);
        }
        if (linkedHashMap == coroutine_suspended) {
            return coroutine_suspended;
        }
        obj = linkedHashMap;
        mutableMap = MapsKt__MapsKt.toMutableMap((Map) obj);
        return this.c.c.b() <= 0 ? mutableMap : mutableMap;
    }
}
