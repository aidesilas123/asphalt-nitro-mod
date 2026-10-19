package com.hyprmx.android.sdk.presentation;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.drive.DriveFile;
import com.hyprmx.android.sdk.activity.HyprMXNoOffersActivity;
import com.hyprmx.android.sdk.activity.HyprMXOfferViewerActivity;
import com.hyprmx.android.sdk.activity.HyprMXRequiredInformationActivity;
import com.hyprmx.android.sdk.annotation.RetainMethodSignature;
import com.hyprmx.android.sdk.api.data.m;
import com.hyprmx.android.sdk.api.data.o;
import com.hyprmx.android.sdk.api.data.r;
import com.hyprmx.android.sdk.api.data.u;
import com.hyprmx.android.sdk.core.HyprMXErrors;
import com.hyprmx.android.sdk.footer.a;
import com.hyprmx.android.sdk.header.a;
import com.hyprmx.android.sdk.p002assert.ThreadAssert;
import com.hyprmx.android.sdk.placement.Placement;
import com.hyprmx.android.sdk.placement.PlacementListener;
import com.hyprmx.android.sdk.placement.RewardedPlacementListener;
import com.hyprmx.android.sdk.presentation.f;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.hyprmx.android.sdk.utility.HyprMXProperties;
import com.hyprmx.android.sdk.utility.i0;
import com.hyprmx.android.sdk.utility.m0;
import com.hyprmx.android.sdk.utility.s;
import com.hyprmx.android.sdk.utility.w0;
import com.json.o2;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.unity3d.ads.adplayer.AndroidWebViewClient;
import java.util.ArrayList;
import java.util.List;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.v;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements com.hyprmx.android.sdk.presentation.f, f.a, com.hyprmx.android.sdk.presentation.a, CoroutineScope {
    public final com.hyprmx.android.sdk.core.b a;
    public final com.hyprmx.android.sdk.analytics.b b;
    public final Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final com.hyprmx.android.sdk.core.js.a f4676d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final com.hyprmx.android.sdk.presentation.g f4677e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ThreadAssert f4678f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ CoroutineScope f4679g;

    @DebugMetadata(c = "com.hyprmx.android.sdk.presentation.DefaultPresentationController$adCanceled$1", f = "PresentationController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public final /* synthetic */ String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, Continuation<? super a> continuation) {
            super(2, continuation);
            this.b = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return b.this.new a(this.b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            Placement placement = b.this.f4677e.getPlacement(this.b);
            Intrinsics.checkNotNull(placement, "null cannot be cast to non-null type com.hyprmx.android.sdk.placement.PlacementImpl");
            com.hyprmx.android.sdk.placement.c cVar = (com.hyprmx.android.sdk.placement.c) placement;
            PlacementListener placementListener = cVar.f4610d;
            if (placementListener != null) {
                placementListener.onAdClosed(cVar, false);
            }
            com.hyprmx.android.sdk.activity.a.a = null;
            com.hyprmx.android.sdk.activity.a.b = null;
            com.hyprmx.android.sdk.activity.a.c = null;
            return v.a;
        }
    }

    /* JADX INFO: renamed from: com.hyprmx.android.sdk.presentation.b$b, reason: collision with other inner class name */
    @DebugMetadata(c = "com.hyprmx.android.sdk.presentation.DefaultPresentationController$adDisplayError$1", f = "PresentationController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class C0299b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public final /* synthetic */ String a;
        public final /* synthetic */ b b;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0299b(b bVar, String str, String str2, Continuation continuation) {
            super(2, continuation);
            this.a = str;
            this.b = bVar;
            this.c = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new C0299b(this.b, this.a, this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((C0299b) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            String str = "adDisplayError with error: " + this.a;
            HyprMXLog.d(str);
            Placement placement = this.b.f4677e.getPlacement(this.c);
            Intrinsics.checkNotNull(placement, "null cannot be cast to non-null type com.hyprmx.android.sdk.placement.PlacementImpl");
            com.hyprmx.android.sdk.placement.c cVar = (com.hyprmx.android.sdk.placement.c) placement;
            PlacementListener placementListener = cVar.f4610d;
            if (placementListener != null) {
                placementListener.onAdDisplayError(cVar, HyprMXErrors.DISPLAY_ERROR);
            }
            this.b.b.a(s.HYPRErrorAdDisplay, str, 2);
            return v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.presentation.DefaultPresentationController$adFinished$1", f = "PresentationController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class c extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public final /* synthetic */ String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String str, Continuation<? super c> continuation) {
            super(2, continuation);
            this.b = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return b.this.new c(this.b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((c) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            Placement placement = b.this.f4677e.getPlacement(this.b);
            Intrinsics.checkNotNull(placement, "null cannot be cast to non-null type com.hyprmx.android.sdk.placement.PlacementImpl");
            com.hyprmx.android.sdk.placement.c cVar = (com.hyprmx.android.sdk.placement.c) placement;
            PlacementListener placementListener = cVar.f4610d;
            if (placementListener != null) {
                placementListener.onAdClosed(cVar, true);
            }
            return v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.presentation.DefaultPresentationController$adRewarded$1", f = "PresentationController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class d extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public final /* synthetic */ String b;
        public final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ int f4680d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str, String str2, int i, Continuation<? super d> continuation) {
            super(2, continuation);
            this.b = str;
            this.c = str2;
            this.f4680d = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return b.this.new d(this.b, this.c, this.f4680d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((d) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            Placement placement = b.this.f4677e.getPlacement(this.b);
            Intrinsics.checkNotNull(placement, "null cannot be cast to non-null type com.hyprmx.android.sdk.placement.PlacementImpl");
            com.hyprmx.android.sdk.placement.c cVar = (com.hyprmx.android.sdk.placement.c) placement;
            PlacementListener placementListener = cVar.f4610d;
            if (placementListener instanceof RewardedPlacementListener) {
                ((RewardedPlacementListener) placementListener).onAdRewarded(cVar, this.c, this.f4680d);
            }
            return v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.presentation.DefaultPresentationController$adStarted$1", f = "PresentationController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class e extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public final /* synthetic */ String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(String str, Continuation<? super e> continuation) {
            super(2, continuation);
            this.b = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return b.this.new e(this.b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((e) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            Placement placement = b.this.f4677e.getPlacement(this.b);
            Intrinsics.checkNotNull(placement, "null cannot be cast to non-null type com.hyprmx.android.sdk.placement.PlacementImpl");
            com.hyprmx.android.sdk.placement.c cVar = (com.hyprmx.android.sdk.placement.c) placement;
            PlacementListener placementListener = cVar.f4610d;
            if (placementListener != null) {
                placementListener.onAdStarted(cVar);
            }
            return v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.presentation.DefaultPresentationController$showNoAd$1", f = "PresentationController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class f extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public final /* synthetic */ String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(String str, Continuation<? super f> continuation) {
            super(2, continuation);
            this.b = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return b.this.new f(this.b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((f) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            Intent intent = new Intent(b.this.c, (Class<?>) HyprMXNoOffersActivity.class);
            intent.setFlags(DriveFile.MODE_READ_ONLY);
            b bVar = b.this;
            com.hyprmx.android.sdk.activity.a.c = bVar.a.a(bVar, r.a.a(this.b));
            b.this.c.startActivity(intent);
            return v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.presentation.DefaultPresentationController$showRequiredInfo$1", f = "PresentationController.kt", i = {}, l = {233}, m = "invokeSuspend", n = {}, s = {})
    public static final class g extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ String f4681d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(String str, String str2, Continuation<? super g> continuation) {
            super(2, continuation);
            this.c = str;
            this.f4681d = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return b.this.new g(this.c, this.f4681d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((g) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            m0 aVar;
            m0 aVar2;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Intent intent = new Intent(b.this.c, (Class<?>) HyprMXRequiredInformationActivity.class);
                intent.setFlags(DriveFile.MODE_READ_ONLY);
                String str = this.c;
                if (str == null || str.length() == 0) {
                    aVar2 = new m0.a("No required info to parse.", 0, null);
                } else {
                    try {
                        JSONArray jSONArray = new JSONArray(str);
                        ArrayList arrayList = new ArrayList();
                        int length = jSONArray.length();
                        for (int i2 = 0; i2 < length; i2++) {
                            m0 m0VarA = o.a.a(jSONArray.get(i2).toString());
                            if (!(m0VarA instanceof m0.b)) {
                                if (m0VarA instanceof m0.a) {
                                    aVar2 = new m0.a(((m0.a) m0VarA).a, ((m0.a) m0VarA).b, ((m0.a) m0VarA).c);
                                    break;
                                }
                            } else {
                                arrayList.add(((m0.b) m0VarA).a);
                            }
                        }
                        aVar = new m0.b(arrayList);
                    } catch (JSONException e2) {
                        aVar = new m0.a("Exception parsing required information.", 1, e2);
                    }
                    aVar2 = aVar;
                }
                if (aVar2 instanceof m0.b) {
                    b bVar = b.this;
                    com.hyprmx.android.sdk.core.b bVar2 = bVar.a;
                    com.hyprmx.android.sdk.activity.a.b = bVar2.a(bVar, bVar2.p(), b.this.a.r(), r.a.a(this.f4681d), (List) ((m0.b) aVar2).a);
                    b.this.c.startActivity(intent);
                } else if (aVar2 instanceof m0.a) {
                    HyprMXLog.e("Cancelling ad because Required Information is Invalid. " + ((m0.a) aVar2).a);
                    b bVar3 = b.this;
                    this.a = 1;
                    if (bVar3.a() == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return v.a;
        }
    }

    public b(com.hyprmx.android.sdk.core.b applicationModule, String userId, com.hyprmx.android.sdk.analytics.b clientErrorController, Context context, com.hyprmx.android.sdk.core.js.a jsEngine, com.hyprmx.android.sdk.presentation.g presentationDelegator, com.hyprmx.android.sdk.powersavemode.a powerSaveModeListener, ThreadAssert threadAssert, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(applicationModule, "applicationModule");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(clientErrorController, "clientErrorController");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(jsEngine, "jsEngine");
        Intrinsics.checkNotNullParameter(presentationDelegator, "presentationDelegator");
        Intrinsics.checkNotNullParameter(powerSaveModeListener, "powerSaveModeListener");
        Intrinsics.checkNotNullParameter(threadAssert, "assert");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.a = applicationModule;
        this.b = clientErrorController;
        this.c = context;
        this.f4676d = jsEngine;
        this.f4677e = presentationDelegator;
        this.f4678f = threadAssert;
        this.f4679g = CoroutineScopeKt.plus(scope, new CoroutineName("DefaultPresentationController"));
        jsEngine.a("HYPRPresentationListener", this);
    }

    @Override // com.hyprmx.android.sdk.presentation.a
    public final v a() {
        this.f4676d.c("HYPRPresentationController.requiredInfoPresentationCancelled();");
        return v.a;
    }

    @Override // com.hyprmx.android.sdk.presentation.f
    public final v a(com.hyprmx.android.sdk.placement.c cVar) {
        String str = cVar.c;
        this.f4676d.c("HYPRPresentationController.showFullscreenAd('" + str + "');");
        return v.a;
    }

    @Override // com.hyprmx.android.sdk.presentation.a
    public final v a(String str) {
        this.f4676d.c("HYPRPresentationController.requiredInfoPresentationCompletedWithParams(" + str + ");");
        return v.a;
    }

    @Override // com.hyprmx.android.sdk.presentation.a
    public final v a(boolean z) {
        com.hyprmx.android.sdk.activity.a.a = null;
        com.hyprmx.android.sdk.activity.a.b = null;
        com.hyprmx.android.sdk.activity.a.c = null;
        this.f4676d.c("HYPRPresentationController.adDismissed(" + z + ");");
        return v.a;
    }

    @Override // com.hyprmx.android.sdk.presentation.f.a
    @RetainMethodSignature
    public void adCanceled(String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new a(placementName, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.presentation.f.a
    @RetainMethodSignature
    public void adDisplayError(String placementName, String errorMsg) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        Intrinsics.checkNotNullParameter(errorMsg, "errorMsg");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new C0299b(this, errorMsg, placementName, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.presentation.f.a
    @RetainMethodSignature
    public void adFinished(String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new c(placementName, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.presentation.f.a
    @RetainMethodSignature
    public void adRewarded(String placementName, String rewardText, int i) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        Intrinsics.checkNotNullParameter(rewardText, "rewardText");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new d(placementName, rewardText, i, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.presentation.f.a
    @RetainMethodSignature
    public void adStarted(String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new e(placementName, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.presentation.a
    public final v b() {
        this.f4676d.c("HYPRPresentationController.adRewarded();");
        return v.a;
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        return this.f4679g.getCoroutineContext();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.hyprmx.android.sdk.presentation.f.a
    public final void onDisplayAd(String viewModelIdentifier, String viewType, String jsonString) {
        m0 aVar;
        m mVar;
        int i;
        m0 aVar2;
        Object jVar;
        Intrinsics.checkNotNullParameter(viewModelIdentifier, "viewModelId");
        Intrinsics.checkNotNullParameter(viewType, "viewType");
        Intrinsics.checkNotNullParameter(jsonString, "offerJson");
        com.hyprmx.android.sdk.analytics.b clientErrorController = this.b;
        Intrinsics.checkNotNullParameter(jsonString, "jsonString");
        Intrinsics.checkNotNullParameter(clientErrorController, "clientErrorController");
        try {
            try {
                JSONObject jSONObject = new JSONObject(jsonString);
                String id = jSONObject.getString("id");
                i0.a("title", jSONObject);
                i0.a("description", jSONObject);
                String type = jSONObject.getString("type");
                String strA = w0.a(jSONObject, "catalog_frame_url", HyprMXProperties.INSTANCE.getBaseUrl() + "/embedded_offers/player", clientErrorController);
                i0.a("reward_token", jSONObject);
                jSONObject.optBoolean("show_close_button");
                int iOptInt = jSONObject.optInt("offer_initiation_timeout_in_seconds", 8);
                String key = jSONObject.optString("allowed_orientation", "");
                Intrinsics.checkNotNullExpressionValue(key, "json.optString(FIELD_ALLOWED_ORIENTATION, \"\")");
                Intrinsics.checkNotNullParameter(key, "key");
                m mVar2 = m.PORTRAIT;
                if (Intrinsics.areEqual(key, o2.h.D)) {
                    mVar = mVar2;
                } else {
                    mVar = m.LANDSCAPE;
                    if (!Intrinsics.areEqual(key, o2.h.C)) {
                        mVar = m.ANY;
                    }
                }
                jSONObject.optInt("webview_timeout", 1200);
                String strA2 = i0.a("cancellation_dialog", jSONObject);
                if (strA2 == null || strA2.length() == 0) {
                    aVar2 = new m0.a("String is null or empty", 0, null);
                    i = iOptInt;
                } else {
                    try {
                        JSONObject jSONObject2 = new JSONObject(strA2);
                        String messageText = jSONObject2.getString("message");
                        String exitText = jSONObject2.getString("exit");
                        String continueText = jSONObject2.getString("continue");
                        i = iOptInt;
                        try {
                            Intrinsics.checkNotNullExpressionValue(messageText, "messageText");
                            Intrinsics.checkNotNullExpressionValue(exitText, "exitText");
                            Intrinsics.checkNotNullExpressionValue(continueText, "continueText");
                            aVar2 = new m0.b(new com.hyprmx.android.sdk.api.data.g(messageText, exitText, continueText));
                        } catch (JSONException e2) {
                            e = e2;
                            aVar2 = new m0.a("Exception parsing cancellation dialog", 0, e);
                        }
                    } catch (JSONException e3) {
                        e = e3;
                        i = iOptInt;
                    }
                }
                if (aVar2 instanceof m0.b) {
                }
                String strA3 = i0.a("user_agent", jSONObject);
                Intrinsics.checkNotNullExpressionValue(id, "id");
                Intrinsics.checkNotNullExpressionValue(type, "type");
                int i2 = i;
                com.hyprmx.android.sdk.api.data.i iVar = new com.hyprmx.android.sdk.api.data.i(id, type, strA, mVar, strA3);
                if (Intrinsics.areEqual(type, "web_traffic")) {
                    jSONObject.optBoolean("skip_proscenium");
                    jSONObject.optBoolean("skip_thank_you_screen");
                    com.hyprmx.android.sdk.header.a aVarA = a.C0287a.a(jSONObject.optJSONObject("web_traffic_header"));
                    com.hyprmx.android.sdk.footer.a aVar3 = com.hyprmx.android.sdk.footer.a.f4531g;
                    com.hyprmx.android.sdk.footer.a aVarA2 = a.C0285a.a(jSONObject.optJSONObject("footer"));
                    if (aVarA2.f4534f) {
                        aVarA2.b = aVarA.a;
                    }
                    jVar = new u(iVar, aVarA, aVarA2);
                } else {
                    jVar = iVar;
                    if (Intrinsics.areEqual(type, CampaignEx.JSON_KEY_MRAID)) {
                        String strA4 = w0.a(jSONObject, "preload_player_url", AndroidWebViewClient.BLANK_PAGE, clientErrorController);
                        jSONObject.optInt("preloaded_mraid_page_ready_timeout", i2);
                        jVar = new com.hyprmx.android.sdk.api.data.j(iVar, strA4);
                    }
                }
                aVar = new m0.b(jVar);
            } catch (RuntimeException e4) {
                HyprMXLog.e("Exception was thrown parsing Ad: ", e4);
                s sVar = s.HYPRErrorTypeJSONParsingFailure;
                String message = e4.getMessage();
                Intrinsics.checkNotNull(message);
                clientErrorController.a(sVar, message, 2);
                aVar = new m0.a("Runtime exception thrown while parsing ad", 0, e4);
            }
        } catch (JSONException e5) {
            HyprMXLog.e("Exception was thrown parsing Ad: ", e5);
            s sVar2 = s.HYPRErrorTypeJSONParsingFailure;
            String message2 = e5.getMessage();
            Intrinsics.checkNotNull(message2);
            clientErrorController.a(sVar2, message2, 2);
            aVar = new m0.a("JSON Exception thrown while parsing ad", 0, e5);
        }
        if (!(aVar instanceof m0.b)) {
            if (aVar instanceof m0.a) {
                BuildersKt__Builders_commonKt.launch$default(this, null, null, new com.hyprmx.android.sdk.presentation.c(this, null), 3, null);
                return;
            }
            return;
        }
        Intent intent = new Intent(this.c, (Class<?>) HyprMXOfferViewerActivity.class);
        intent.setFlags(DriveFile.MODE_READ_ONLY);
        com.hyprmx.android.sdk.core.js.a jsEngine = this.f4676d;
        Intrinsics.checkNotNullParameter(jsEngine, "jsEngine");
        Intrinsics.checkNotNullParameter(viewModelIdentifier, "viewModelIdentifier");
        com.hyprmx.android.sdk.presentation.e eVar = new com.hyprmx.android.sdk.presentation.e(jsEngine, viewModelIdentifier, null);
        com.hyprmx.android.sdk.core.b bVar = this.a;
        com.hyprmx.android.sdk.activity.a.a = bVar.a(bVar, (com.hyprmx.android.sdk.api.data.a) ((m0.b) aVar).a, this, eVar, new com.hyprmx.android.sdk.fullscreen.d(eVar));
        this.c.startActivity(intent);
    }

    @Override // com.hyprmx.android.sdk.presentation.f.a
    @RetainMethodSignature
    public void showNoAd(String uiComponentsString) {
        Intrinsics.checkNotNullParameter(uiComponentsString, "uiComponentsString");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new f(uiComponentsString, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.presentation.f.a
    @RetainMethodSignature
    public void showRequiredInfo(String requiredInfoString, String uiComponentsString) {
        Intrinsics.checkNotNullParameter(requiredInfoString, "requiredInfoString");
        Intrinsics.checkNotNullParameter(uiComponentsString, "uiComponentsString");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new g(requiredInfoString, uiComponentsString, null), 3, null);
    }
}
