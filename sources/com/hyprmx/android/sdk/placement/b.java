package com.hyprmx.android.sdk.placement;

import com.hyprmx.android.sdk.annotation.RetainMethodSignature;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.v;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements com.hyprmx.android.sdk.placement.a, CoroutineScope {
    public final com.hyprmx.android.sdk.core.js.a a;
    public final /* synthetic */ CoroutineScope b;
    public final LinkedHashSet c;

    @DebugMetadata(c = "com.hyprmx.android.sdk.placement.PlacementControllerImpl$onAdCleared$1", f = "PlacementController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public final /* synthetic */ String a;
        public final /* synthetic */ b b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, b bVar, Continuation<? super a> continuation) {
            super(2, continuation);
            this.a = str;
            this.b = bVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new a(this.a, this.b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            HyprMXLog.d("onAdCleared - " + this.a);
            Intrinsics.checkNotNull(this.b.getPlacement(this.a), "null cannot be cast to non-null type com.hyprmx.android.sdk.placement.PlacementImpl");
            return v.a;
        }
    }

    /* JADX INFO: renamed from: com.hyprmx.android.sdk.placement.b$b, reason: collision with other inner class name */
    @DebugMetadata(c = "com.hyprmx.android.sdk.placement.PlacementControllerImpl$onAdExpired$1", f = "PlacementController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class C0295b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public final /* synthetic */ String a;
        public final /* synthetic */ b b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0295b(String str, b bVar, Continuation<? super C0295b> continuation) {
            super(2, continuation);
            this.a = str;
            this.b = bVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new C0295b(this.a, this.b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((C0295b) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            HyprMXLog.d("onAdExpired - " + this.a);
            com.hyprmx.android.sdk.placement.c placement = this.b.getPlacement(this.a);
            Intrinsics.checkNotNull(placement, "null cannot be cast to non-null type com.hyprmx.android.sdk.placement.PlacementImpl");
            PlacementListener placementListener = placement.f4610d;
            if (placementListener != null) {
                placementListener.onAdExpired(placement);
            }
            return v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.placement.PlacementControllerImpl$onLoadAdFailure$1", f = "PlacementController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class c extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public final /* synthetic */ String a;
        public final /* synthetic */ b b;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String str, b bVar, String str2, Continuation<? super c> continuation) {
            super(2, continuation);
            this.a = str;
            this.b = bVar;
            this.c = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new c(this.a, this.b, this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((c) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            HyprMXLog.d("onLoadAdFailure - " + this.a);
            com.hyprmx.android.sdk.placement.c placement = this.b.getPlacement(this.c);
            Intrinsics.checkNotNull(placement, "null cannot be cast to non-null type com.hyprmx.android.sdk.placement.PlacementImpl");
            PlacementListener placementListener = placement.f4610d;
            if (placementListener != null) {
                placementListener.onAdNotAvailable(placement);
            }
            return v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.placement.PlacementControllerImpl$onLoadAdSuccess$1", f = "PlacementController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class d extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public final /* synthetic */ String b;
        public final /* synthetic */ boolean c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str, boolean z, Continuation<? super d> continuation) {
            super(2, continuation);
            this.b = str;
            this.c = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return b.this.new d(this.b, this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((d) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.placement.c placement = b.this.getPlacement(this.b);
            Intrinsics.checkNotNull(placement, "null cannot be cast to non-null type com.hyprmx.android.sdk.placement.PlacementImpl");
            PlacementListener placementListener = placement.f4610d;
            if (this.c) {
                if (placementListener != null) {
                    placementListener.onAdAvailable(placement);
                }
            } else if (placementListener != null) {
                placementListener.onAdNotAvailable(placement);
            }
            return v.a;
        }
    }

    public b(com.hyprmx.android.sdk.core.js.a jsEngine) {
        Intrinsics.checkNotNullParameter(jsEngine, "jsEngine");
        this.a = jsEngine;
        this.b = CoroutineScopeKt.MainScope();
        this.c = new LinkedHashSet();
        jsEngine.a("HYPRPlacementListener", this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x007c, code lost:
    
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, "name");
        r2.add(new com.hyprmx.android.sdk.placement.c(r14, r9, r4));
     */
    @Override // com.hyprmx.android.sdk.placement.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final kotlin.v a(java.lang.String r13, com.hyprmx.android.sdk.placement.c.a r14) {
        /*
            Method dump skipped, instruction units count: 233
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.placement.b.a(java.lang.String, com.hyprmx.android.sdk.placement.c$a):kotlin.v");
    }

    @Override // com.hyprmx.android.sdk.placement.a
    public final void a(String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        this.a.c("HYPRPlacementController.loadAd('" + placementName + "')");
    }

    @Override // com.hyprmx.android.sdk.placement.a
    public final boolean b(String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        Object objA = this.a.a("HYPRPlacementController.isAdAvailable('" + placementName + "')");
        Intrinsics.checkNotNull(objA, "null cannot be cast to non-null type kotlin.Boolean");
        return ((Boolean) objA).booleanValue();
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        return this.b.getCoroutineContext();
    }

    @Override // com.hyprmx.android.sdk.placement.a
    public final com.hyprmx.android.sdk.placement.c getPlacement(String placementName) {
        Object next;
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        Iterator it = this.c.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (Intrinsics.areEqual(placementName, ((com.hyprmx.android.sdk.placement.c) next).c)) {
                break;
            }
        }
        com.hyprmx.android.sdk.placement.c cVar = (com.hyprmx.android.sdk.placement.c) next;
        if (cVar != null) {
            return cVar;
        }
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        com.hyprmx.android.sdk.placement.c cVar2 = new com.hyprmx.android.sdk.placement.c(new com.hyprmx.android.sdk.placement.d(), PlacementType.INVALID, placementName);
        LinkedHashSet linkedHashSet = this.c;
        Intrinsics.checkNotNull(linkedHashSet, "null cannot be cast to non-null type kotlin.collections.MutableSet<com.hyprmx.android.sdk.placement.PlacementImpl>");
        Set setAsMutableSet = TypeIntrinsics.asMutableSet(linkedHashSet);
        Intrinsics.checkNotNull(cVar2, "null cannot be cast to non-null type com.hyprmx.android.sdk.placement.PlacementImpl");
        setAsMutableSet.add(cVar2);
        return cVar2;
    }

    @Override // com.hyprmx.android.sdk.placement.a
    public final LinkedHashSet getPlacements() {
        return this.c;
    }

    @Override // com.hyprmx.android.sdk.placement.a
    @RetainMethodSignature
    public void onAdCleared(String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new a(placementName, this, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.placement.a
    @RetainMethodSignature
    public void onAdExpired(String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new C0295b(placementName, this, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.placement.a
    @RetainMethodSignature
    public void onLoadAdFailure(String placementName, String error) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        Intrinsics.checkNotNullParameter(error, "error");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new c(error, this, placementName, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.placement.a
    @RetainMethodSignature
    public void onLoadAdSuccess(String placementName, boolean z) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new d(placementName, z, null), 3, null);
    }
}
