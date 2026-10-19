package com.hyprmx.android.sdk.model;

import com.hyprmx.android.sdk.analytics.k;
import com.hyprmx.android.sdk.preload.n;
import java.util.Iterator;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public interface a {

    /* JADX INFO: renamed from: com.hyprmx.android.sdk.model.a$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static Object a(a aVar, k.a aVar2) {
            return d(aVar, aVar2);
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0057  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0078 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0072 -> B:21:0x0073). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public static java.lang.Object b(com.hyprmx.android.sdk.model.a r6, kotlin.coroutines.Continuation r7) {
            /*
                boolean r0 = r7 instanceof com.hyprmx.android.sdk.model.a.C0290a
                if (r0 == 0) goto L13
                r0 = r7
                com.hyprmx.android.sdk.model.a$a r0 = (com.hyprmx.android.sdk.model.a.C0290a) r0
                int r1 = r0.f4569f
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f4569f = r1
                goto L18
            L13:
                com.hyprmx.android.sdk.model.a$a r0 = new com.hyprmx.android.sdk.model.a$a
                r0.<init>(r7)
            L18:
                java.lang.Object r7 = r0.f4567d
                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
                int r2 = r0.f4569f
                r3 = 1
                if (r2 == 0) goto L37
                if (r2 != r3) goto L2f
                org.json.JSONArray r2 = r0.c
                java.util.Iterator r4 = r0.b
                org.json.JSONArray r5 = r0.a
                kotlin.ResultKt.throwOnFailure(r7)
                goto L73
            L2f:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L37:
                kotlin.ResultKt.throwOnFailure(r7)
                org.json.JSONArray r7 = new org.json.JSONArray
                r7.<init>()
                com.hyprmx.android.sdk.preload.n r2 = r6.a()
                java.util.Map r2 = r2.c()
                java.util.Set r2 = r2.entrySet()
                java.util.Iterator r2 = r2.iterator()
                r4 = r2
                r2 = r7
            L51:
                boolean r7 = r4.hasNext()
                if (r7 == 0) goto L78
                java.lang.Object r7 = r4.next()
                java.util.Map$Entry r7 = (java.util.Map.Entry) r7
                java.lang.Object r7 = r7.getValue()
                com.hyprmx.android.sdk.api.data.b r7 = (com.hyprmx.android.sdk.api.data.b) r7
                r0.a = r2
                r0.b = r4
                r0.c = r2
                r0.f4569f = r3
                org.json.JSONObject r7 = r7.c()
                if (r7 != r1) goto L72
                return r1
            L72:
                r5 = r2
            L73:
                r2.put(r7)
                r2 = r5
                goto L51
            L78:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.model.a.CC.b(com.hyprmx.android.sdk.model.a, kotlin.coroutines.d):java.lang.Object");
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public static /* synthetic */ java.lang.Object d(com.hyprmx.android.sdk.model.a r5, kotlin.coroutines.Continuation<? super org.json.JSONObject> r6) throws org.json.JSONException {
            /*
                boolean r0 = r6 instanceof com.hyprmx.android.sdk.model.a.b
                if (r0 == 0) goto L13
                r0 = r6
                com.hyprmx.android.sdk.model.a$b r0 = (com.hyprmx.android.sdk.model.a.b) r0
                int r1 = r0.f4570d
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f4570d = r1
                goto L18
            L13:
                com.hyprmx.android.sdk.model.a$b r0 = new com.hyprmx.android.sdk.model.a$b
                r0.<init>(r6)
            L18:
                java.lang.Object r6 = r0.b
                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
                int r2 = r0.f4570d
                r3 = 1
                if (r2 == 0) goto L33
                if (r2 != r3) goto L2b
                org.json.JSONObject r5 = r0.a
                kotlin.ResultKt.throwOnFailure(r6)
                goto L49
            L2b:
                java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                r5.<init>(r6)
                throw r5
            L33:
                kotlin.ResultKt.throwOnFailure(r6)
                org.json.JSONObject r6 = new org.json.JSONObject
                r6.<init>()
                r0.a = r6
                r0.f4570d = r3
                java.lang.Object r5 = b(r5, r0)
                if (r5 != r1) goto L46
                return r1
            L46:
                r4 = r6
                r6 = r5
                r5 = r4
            L49:
                org.json.JSONArray r6 = (org.json.JSONArray) r6
                int r0 = r6.length()
                if (r0 != 0) goto L52
                return r5
            L52:
                java.lang.String r0 = "preloaded_ads"
                r5.put(r0, r6)
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.model.a.CC.d(com.hyprmx.android.sdk.model.a, kotlin.coroutines.d):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: com.hyprmx.android.sdk.model.a$a, reason: collision with other inner class name */
    @DebugMetadata(c = "com.hyprmx.android.sdk.model.PreloadedVastData", f = "PreloadedVastData.kt", i = {0}, l = {30}, m = "getAllPreloadParameters", n = {"preloadedAdArray"}, s = {"L$0"})
    public static final class C0290a extends ContinuationImpl {
        public JSONArray a;
        public Iterator b;
        public JSONArray c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public /* synthetic */ Object f4567d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f4569f;

        public C0290a(Continuation<? super C0290a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f4567d = obj;
            this.f4569f |= Integer.MIN_VALUE;
            return CC.b(a.this, this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.model.PreloadedVastData", f = "PreloadedVastData.kt", i = {0}, l = {15}, m = "getParameters$suspendImpl", n = {"preloadedOffers"}, s = {"L$0"})
    public static final class b extends ContinuationImpl {
        public JSONObject a;
        public /* synthetic */ Object b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f4570d;

        public b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.b = obj;
            this.f4570d |= Integer.MIN_VALUE;
            return CC.d(a.this, this);
        }
    }

    n a();

    Object a(k.a aVar);
}
