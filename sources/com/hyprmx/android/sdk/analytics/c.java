package com.hyprmx.android.sdk.analytics;

import android.webkit.URLUtil;
import com.hyprmx.android.sdk.utility.HyprMXProperties;
import com.hyprmx.android.sdk.utility.s;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements d {
    public final com.hyprmx.android.sdk.core.js.a a;
    public final b b;
    public final com.hyprmx.android.sdk.network.k c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f4462d;

    @DebugMetadata(c = "com.hyprmx.android.sdk.analytics.DefaultEventController", f = "DefaultEventController.kt", i = {}, l = {73}, m = "sendSharingTracking", n = {}, s = {})
    public static final class a extends ContinuationImpl {
        public /* synthetic */ Object a;
        public int c;

        public a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.a = obj;
            this.c |= Integer.MIN_VALUE;
            return c.this.a(null, this);
        }
    }

    public c(com.hyprmx.android.sdk.core.js.a jsEngine, b clientErrorController, com.hyprmx.android.sdk.network.k networkController) {
        Intrinsics.checkNotNullParameter(jsEngine, "jsEngine");
        Intrinsics.checkNotNullParameter(clientErrorController, "clientErrorController");
        Intrinsics.checkNotNullParameter(networkController, "networkController");
        this.a = jsEngine;
        this.b = clientErrorController;
        this.c = networkController;
        this.f4462d = HyprMXProperties.INSTANCE.getBaseUrl() + "/sharings";
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.hyprmx.android.sdk.analytics.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.String r8, kotlin.coroutines.Continuation<? super kotlin.v> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.hyprmx.android.sdk.analytics.c.a
            if (r0 == 0) goto L13
            r0 = r9
            com.hyprmx.android.sdk.analytics.c$a r0 = (com.hyprmx.android.sdk.analytics.c.a) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.analytics.c$a r0 = new com.hyprmx.android.sdk.analytics.c$a
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Exception -> L77
            goto L8d
        L29:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L31:
            kotlin.ResultKt.throwOnFailure(r9)
            org.json.JSONObject r9 = new org.json.JSONObject
            r9.<init>()
            if (r8 == 0) goto L40
            java.lang.String r2 = "viewing_id"
            r9.put(r2, r8)     // Catch: java.lang.Exception -> L77
        L40:
            java.lang.String r8 = "bypass_redirect"
            java.lang.String r2 = "0"
            r9.put(r8, r2)     // Catch: java.lang.Exception -> L77
            java.lang.String r8 = "sharing_category"
            java.lang.String r2 = "cta"
            r9.put(r8, r2)     // Catch: java.lang.Exception -> L77
            com.hyprmx.android.sdk.network.k r8 = r7.c     // Catch: java.lang.Exception -> L77
            java.lang.String r2 = r7.f4462d     // Catch: java.lang.Exception -> L77
            java.lang.String r9 = r9.toString()     // Catch: java.lang.Exception -> L77
            java.lang.String r4 = "json.toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r4)     // Catch: java.lang.Exception -> L77
            r0.c = r3     // Catch: java.lang.Exception -> L77
            com.hyprmx.android.sdk.network.a r3 = new com.hyprmx.android.sdk.network.a     // Catch: java.lang.Exception -> L77
            java.lang.String r4 = "Content-Type"
            java.lang.String r5 = "application/json"
            kotlin.Pair r4 = kotlin.TuplesKt.to(r4, r5)     // Catch: java.lang.Exception -> L77
            java.util.Map r4 = kotlin.collections.d0.mapOf(r4)     // Catch: java.lang.Exception -> L77
            r5 = 0
            r6 = 7
            r3.<init>(r5, r4, r6)     // Catch: java.lang.Exception -> L77
            java.lang.Object r8 = r8.a(r2, r9, r3, r0)     // Catch: java.lang.Exception -> L77
            if (r8 != r1) goto L8d
            return r1
        L77:
            r8 = move-exception
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            java.lang.String r0 = "Error sending sharing tracking: "
            r9.<init>(r0)
            java.lang.String r8 = r8.getMessage()
            r9.append(r8)
            java.lang.String r8 = r9.toString()
            com.hyprmx.android.sdk.utility.HyprMXLog.e(r8)
        L8d:
            kotlin.v r8 = kotlin.v.a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.analytics.c.a(java.lang.String, kotlin.coroutines.d):java.lang.Object");
    }

    @Override // com.hyprmx.android.sdk.analytics.d
    public final void a(String token, String viewingId, String duration) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(viewingId, "viewingId");
        Intrinsics.checkNotNullParameter(duration, "duration");
        this.a.c("HYPREventController.sendDurationUpdateTracking('" + token + "', '" + duration + "', '" + viewingId + "')");
    }

    @Override // com.hyprmx.android.sdk.analytics.d
    public final void setSharingEndpoint(String completionEndpoint) {
        Intrinsics.checkNotNullParameter(completionEndpoint, "sharingEndpoint");
        Intrinsics.checkNotNullParameter(completionEndpoint, "<this>");
        if (URLUtil.isValidUrl(completionEndpoint)) {
            this.f4462d = completionEndpoint;
            return;
        }
        Intrinsics.checkNotNullParameter(completionEndpoint, "completionEndpoint");
        this.b.a(s.HYPRErrorInvalidEndpoint, "Invalid Endpoint: ".concat(completionEndpoint), 4);
    }
}
