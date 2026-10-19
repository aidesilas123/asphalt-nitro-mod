package com.hyprmx.android.sdk.preload;

import android.content.Context;
import com.hyprmx.android.sdk.annotation.RetainMethodSignature;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.hyprmx.android.sdk.utility.f0;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class u implements v, x, CoroutineScope {
    public final n a;
    public final f0 b;
    public final Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Map<String, com.hyprmx.android.sdk.webview.f> f4665d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CoroutineScope f4666e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ x f4667f;

    @DebugMetadata(c = "com.hyprmx.android.sdk.preload.PreloadController$cacheVastAssetForOffer$1", f = "PreloadController.kt", i = {}, l = {119, 121}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ boolean b;
        public final /* synthetic */ u c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ String f4668d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ String f4669e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(boolean z, u uVar, String str, String str2, Continuation<? super a> continuation) {
            super(2, continuation);
            this.b = z;
            this.c = uVar;
            this.f4668d = str;
            this.f4669e = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new a(this.b, this.c, this.f4668d, this.f4669e, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                if (this.b) {
                    n nVar = this.c.a;
                    String str = this.f4668d;
                    this.a = 1;
                    if (nVar.g(str) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            } else {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return kotlin.v.a;
                }
                ResultKt.throwOnFailure(obj);
            }
            n nVar2 = this.c.a;
            String str2 = this.f4669e;
            String str3 = this.f4668d;
            this.a = 2;
            if (nVar2.a(str2, str3, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.preload.PreloadController$commitVastOffer$1", f = "PreloadController.kt", i = {0, 1}, l = {97, 101, 103}, m = "invokeSuspend", n = {"ad", "it"}, s = {"L$0", "L$2"})
    public static final class b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public Object a;
        public String b;
        public String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f4670d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ String f4672f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final /* synthetic */ String f4673g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, String str2, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f4672f = str;
            this.f4673g = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return u.this.new b(this.f4672f, this.f4673g, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x00f3  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0106 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r13) throws org.json.JSONException {
            /*
                Method dump skipped, instruction units count: 266
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.preload.u.b.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.preload.PreloadController$preloadPortraitImage$1", f = "PreloadController.kt", i = {}, l = {60}, m = "invokeSuspend", n = {}, s = {})
    public static final class c extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String str, Continuation<? super c> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return u.this.new c(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((c) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                f0 f0Var = u.this.b;
                String str = this.c;
                this.a = 1;
                if (f0Var.b(str, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.preload.PreloadController$preloadUIImage$1", f = "PreloadController.kt", i = {}, l = {50}, m = "invokeSuspend", n = {}, s = {})
    public static final class d extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str, Continuation<? super d> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return u.this.new d(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((d) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                f0 f0Var = u.this.b;
                String str = this.c;
                this.a = 1;
                if (f0Var.b(str, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.preload.PreloadController$removeVastOffer$1", f = "PreloadController.kt", i = {}, l = {66}, m = "invokeSuspend", n = {}, s = {})
    public static final class e extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(String str, Continuation<? super e> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return u.this.new e(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((e) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                n nVar = u.this.a;
                String str = this.c;
                this.a = 1;
                if (nVar.d(str, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.preload.PreloadController$resetVastCache$1", f = "PreloadController.kt", i = {}, l = {128}, m = "invokeSuspend", n = {}, s = {})
    public static final class f extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        public int a;

        public f(Continuation<? super f> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return u.this.new f(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((f) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                n nVar = u.this.a;
                this.a = 1;
                obj = nVar.b(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.preload.PreloadController$retrieveVastOffer$1", f = "PreloadController.kt", i = {0, 0}, l = {80}, m = "invokeSuspend", n = {"adToPreloadJSONObject", "ad"}, s = {"L$0", "L$1"})
    public static final class g extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public JSONObject a;
        public com.hyprmx.android.sdk.api.data.b b;
        public int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ String f4674d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ u f4675e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(u uVar, String str, Continuation continuation) {
            super(2, continuation);
            this.f4674d = str;
            this.f4675e = uVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new g(this.f4675e, this.f4674d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((g) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws JSONException {
            JSONObject adToPreload;
            com.hyprmx.android.sdk.api.data.b bVar;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.c;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                adToPreload = new JSONObject(this.f4674d);
                String adId = adToPreload.getString("id");
                n nVar = this.f4675e.a;
                Intrinsics.checkNotNullExpressionValue(adId, "adId");
                com.hyprmx.android.sdk.api.data.b bVarD = nVar.d(adId);
                String vastTagURL = adToPreload.optString("vast_tag_url");
                Intrinsics.checkNotNullExpressionValue(vastTagURL, "vastTagURL");
                if ((vastTagURL.length() > 0) && !Intrinsics.areEqual(vastTagURL, bVarD.c)) {
                    bVarD.c = vastTagURL;
                    n nVar2 = this.f4675e.a;
                    this.a = adToPreload;
                    this.b = bVarD;
                    this.c = 1;
                    if (nVar2.a(adId, bVarD, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                bVar = bVarD;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                bVar = this.b;
                adToPreload = this.a;
                ResultKt.throwOnFailure(obj);
            }
            u uVar = this.f4675e;
            String cachedAdJSON = bVar.d();
            uVar.getClass();
            Intrinsics.checkNotNullParameter(adToPreload, "adToPreload");
            Intrinsics.checkNotNullParameter(cachedAdJSON, "cachedAdJSON");
            uVar.f4667f.a(cachedAdJSON, adToPreload);
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.preload.PreloadController$storeInstance$1", f = "PreloadController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class h extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public final /* synthetic */ String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(String str, Continuation<? super h> continuation) {
            super(2, continuation);
            this.b = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return u.this.new h(this.b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((h) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.webview.f fVar = new com.hyprmx.android.sdk.webview.f(u.this.c, null, null, 30);
            fVar.b(this.b, null);
            u.this.f4665d.put(this.b, fVar);
            return kotlin.v.a;
        }
    }

    public u(com.hyprmx.android.sdk.core.js.a jsEngine, n cacheController, f0 imageCacheManager, Context applicationContext, Map<String, com.hyprmx.android.sdk.webview.f> preloadedWebViewMap, CoroutineScope coroutineScope, x preloadControllerSharedInterface) {
        Intrinsics.checkNotNullParameter(jsEngine, "jsEngine");
        Intrinsics.checkNotNullParameter(cacheController, "cacheController");
        Intrinsics.checkNotNullParameter(imageCacheManager, "imageCacheManager");
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(preloadedWebViewMap, "preloadedWebViewMap");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        Intrinsics.checkNotNullParameter(preloadControllerSharedInterface, "preloadControllerSharedInterface");
        this.a = cacheController;
        this.b = imageCacheManager;
        this.c = applicationContext;
        this.f4665d = preloadedWebViewMap;
        this.f4666e = coroutineScope;
        this.f4667f = preloadControllerSharedInterface;
        a(this);
    }

    public /* synthetic */ u(com.hyprmx.android.sdk.core.js.a aVar, n nVar, f0 f0Var, Context context, CoroutineScope coroutineScope) {
        this(aVar, nVar, f0Var, context, new LinkedHashMap(), coroutineScope, new w(aVar));
    }

    @Override // com.hyprmx.android.sdk.preload.v
    public final void a() {
        this.f4667f.a(com.hyprmx.android.sdk.utility.w.a(this.c.getResources().getDisplayMetrics().widthPixels, this.c), com.hyprmx.android.sdk.utility.w.a(this.c.getResources().getDisplayMetrics().heightPixels, this.c));
    }

    @Override // com.hyprmx.android.sdk.preload.x
    public final void a(int i, int i2) {
        this.f4667f.a(i, i2);
    }

    @Override // com.hyprmx.android.sdk.preload.x
    public final void a(Object obj) {
        Intrinsics.checkNotNullParameter(obj, "obj");
        this.f4667f.a(obj);
    }

    @Override // com.hyprmx.android.sdk.preload.x
    public final void a(String viewModelIdentifier) {
        Intrinsics.checkNotNullParameter(viewModelIdentifier, "viewModelIdentifier");
        this.f4667f.a(viewModelIdentifier);
    }

    @Override // com.hyprmx.android.sdk.preload.x
    public final void a(String cachedAdJSON, JSONObject adToPreload) {
        Intrinsics.checkNotNullParameter(adToPreload, "adToPreload");
        Intrinsics.checkNotNullParameter(cachedAdJSON, "cachedAdJSON");
        this.f4667f.a(cachedAdJSON, adToPreload);
    }

    @Override // com.hyprmx.android.sdk.preload.v
    public final com.hyprmx.android.sdk.webview.f b(String viewModelIdentifier) {
        Intrinsics.checkNotNullParameter(viewModelIdentifier, "viewModelIdentifier");
        HyprMXLog.d("getPreloadedWebView for " + viewModelIdentifier);
        if (!this.f4665d.containsKey(viewModelIdentifier)) {
            return null;
        }
        HyprMXLog.d("Preloaded WebView found for " + viewModelIdentifier);
        com.hyprmx.android.sdk.webview.f fVar = this.f4665d.get(viewModelIdentifier);
        removeInstance(viewModelIdentifier);
        return fVar;
    }

    @Override // com.hyprmx.android.sdk.preload.v, com.hyprmx.android.sdk.preload.y
    @RetainMethodSignature
    public void cacheVastAssetForOffer(String adId, String assetURL, boolean z) {
        Intrinsics.checkNotNullParameter(adId, "adId");
        Intrinsics.checkNotNullParameter(assetURL, "assetURL");
        HyprMXLog.d("cacheVastAssetForOffer adId=" + adId + " cancelExistingDownloads=" + z);
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new a(z, this, adId, assetURL, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.preload.v, com.hyprmx.android.sdk.preload.y
    @RetainMethodSignature
    public void commitVastOffer(String adState, String adId) {
        Intrinsics.checkNotNullParameter(adState, "adState");
        Intrinsics.checkNotNullParameter(adId, "adId");
        HyprMXLog.d("commitVastOffer offerState=" + adState + " adId=" + adId);
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new b(adId, adState, null), 3, null);
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        return this.f4666e.getCoroutineContext();
    }

    @Override // com.hyprmx.android.sdk.preload.v, com.hyprmx.android.sdk.preload.y
    @RetainMethodSignature
    public void preloadPortraitImage(String portraitUrl, int i, int i2, Boolean bool) {
        Intrinsics.checkNotNullParameter(portraitUrl, "portraitUrl");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new c(portraitUrl, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.preload.v, com.hyprmx.android.sdk.preload.y
    @RetainMethodSignature
    public void preloadUIImage(String url, int i, int i2, Float f2, Boolean bool, Integer num, Integer num2) {
        Intrinsics.checkNotNullParameter(url, "url");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new d(url, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.preload.v, com.hyprmx.android.sdk.preload.y
    public final void removeInstance(String viewModelIdentifier) {
        Intrinsics.checkNotNullParameter(viewModelIdentifier, "viewModelIdentifier");
        HyprMXLog.d("removeInstance for " + viewModelIdentifier);
        this.f4665d.remove(viewModelIdentifier);
        Intrinsics.checkNotNullParameter(viewModelIdentifier, "viewModelIdentifier");
        this.f4667f.a(viewModelIdentifier);
    }

    @Override // com.hyprmx.android.sdk.preload.v, com.hyprmx.android.sdk.preload.y
    @RetainMethodSignature
    public void removeVastOffer(String adId) {
        Intrinsics.checkNotNullParameter(adId, "adId");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new e(adId, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.preload.v, com.hyprmx.android.sdk.preload.y
    public final boolean resetVastCache() {
        HyprMXLog.d("resetVastCache");
        return ((Boolean) BuildersKt.runBlocking(Dispatchers.getIO(), new f(null))).booleanValue();
    }

    @Override // com.hyprmx.android.sdk.preload.v, com.hyprmx.android.sdk.preload.y
    @RetainMethodSignature
    public void retrieveVastOffer(String adToPreload) {
        Intrinsics.checkNotNullParameter(adToPreload, "adToPreload");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new g(this, adToPreload, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.preload.v, com.hyprmx.android.sdk.preload.y
    public final void storeInstance(String viewModelIdentifier) {
        Intrinsics.checkNotNullParameter(viewModelIdentifier, "viewModelIdentifier");
        HyprMXLog.d("storeInstance for " + viewModelIdentifier);
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new h(viewModelIdentifier, null), 3, null);
    }
}
