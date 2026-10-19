package com.hyprmx.android.sdk.preload;

import android.content.Context;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.hyprmx.android.sdk.utility.i0;
import java.util.HashSet;
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
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.preload.CacheController$loadAssetCacheMap$2", f = "CacheController.kt", i = {2}, l = {123, 126, 130}, m = "invokeSuspend", n = {"assetCacheMap"}, s = {"L$0"})
public final class e extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Map<String, com.hyprmx.android.sdk.api.data.c>>, Object> {
    public Map a;
    public int b;
    public final /* synthetic */ c c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(c cVar, Continuation<? super e> continuation) {
        super(2, continuation);
        this.c = cVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new e(this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Map<String, com.hyprmx.android.sdk.api.data.c>> continuation) {
        return ((e) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws JSONException {
        com.hyprmx.android.sdk.api.data.c cVar;
        Map mutableMap;
        Map map;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.b;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            HyprMXLog.d("loadAssetCacheMap");
            c cVar2 = this.c;
            com.hyprmx.android.sdk.utility.a aVar = cVar2.f4619e;
            Context context = cVar2.b;
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
                    HyprMXLog.e("Error loading asset cache state from disk. Clearing cache.");
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
        HyprMXLog.d("populateAssetCacheJournal: " + jSONObject);
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
                String string = jSONObject2.getString("mediaAssetURL");
                Intrinsics.checkNotNullExpressionValue(string, "json.getString(FIELD_MEDIA_ASSET_URL)");
                cVar = new com.hyprmx.android.sdk.api.data.c(string);
                cVar.b = jSONObject2.optLong("Length");
                cVar.c = jSONObject2.optInt("media_download_failures");
                cVar.f4475d = i0.a("LastCacheDate", jSONObject2);
                cVar.f4476e = jSONObject2.optBoolean("CacheComplete");
                JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("PreloadedOffers");
                if (jSONArrayOptJSONArray != null) {
                    int length = jSONArrayOptJSONArray.length();
                    for (int i2 = 0; i2 < length; i2++) {
                        HashSet hashSet = cVar.f4477f;
                        String string2 = jSONArrayOptJSONArray.getString(i2);
                        Intrinsics.checkNotNullExpressionValue(string2, "it.getString(i)");
                        hashSet.add(string2);
                    }
                }
            } catch (Exception unused) {
                cVar = new com.hyprmx.android.sdk.api.data.c("JSON deserialization error");
            }
            linkedHashMap.put(it, cVar);
        }
        if (linkedHashMap == coroutine_suspended) {
            return coroutine_suspended;
        }
        obj = linkedHashMap;
        mutableMap = MapsKt__MapsKt.toMutableMap((Map) obj);
        return this.c.c.b() <= 0 ? mutableMap : mutableMap;
    }
}
