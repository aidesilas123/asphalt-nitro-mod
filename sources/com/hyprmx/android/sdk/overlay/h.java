package com.hyprmx.android.sdk.overlay;

import android.content.Context;
import android.widget.Toast;
import com.hyprmx.android.sdk.core.t;
import com.hyprmx.android.sdk.core.v;
import com.hyprmx.android.sdk.overlay.j;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.hyprmx.android.sdk.utility.a1;
import java.util.ArrayList;
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
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements com.hyprmx.android.sdk.overlay.f, CoroutineScope, com.hyprmx.android.sdk.mvp.c, com.hyprmx.android.sdk.overlay.c, com.hyprmx.android.sdk.overlay.e, v {
    public com.hyprmx.android.sdk.overlay.g a;
    public final com.hyprmx.android.sdk.overlay.e b;
    public final /* synthetic */ CoroutineScope c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ com.hyprmx.android.sdk.mvp.c f4602d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4603e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Context f4604f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public com.hyprmx.android.sdk.overlay.m f4605g;

    @DebugMetadata(c = "com.hyprmx.android.sdk.overlay.HyprMXBrowserPresenter$captureImage$2", f = "HyprMXBrowserPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public a(Continuation<? super a> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return h.this.new a(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.overlay.g gVar = h.this.a;
            if (gVar != null) {
                gVar.captureImage();
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.overlay.HyprMXBrowserPresenter$closeBrowser$2", f = "HyprMXBrowserPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public b(Continuation<? super b> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return h.this.new b(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            h.this.Q();
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.overlay.HyprMXBrowserPresenter$createCalendarEvent$2", f = "HyprMXBrowserPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class c extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public final /* synthetic */ String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String str, Continuation<? super c> continuation) {
            super(2, continuation);
            this.b = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return h.this.new c(this.b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((c) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.overlay.g gVar = h.this.a;
            if (gVar != null) {
                gVar.createCalendarEvent(this.b);
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.overlay.HyprMXBrowserPresenter$displayError$2", f = "HyprMXBrowserPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class d extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public final /* synthetic */ String a;
        public final /* synthetic */ h b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(h hVar, String str, Continuation continuation) {
            super(2, continuation);
            this.a = str;
            this.b = hVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new d(this.b, this.a, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((d) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            HyprMXLog.d("Dislay error occured while displaying the browser: " + this.a);
            com.hyprmx.android.sdk.overlay.g gVar = this.b.a;
            if (gVar != null) {
                gVar.N();
            }
            this.b.L();
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.overlay.HyprMXBrowserPresenter$onCloseClicked$1", f = "HyprMXBrowserPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class e extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public e(Continuation<? super e> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return h.this.new e(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((e) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.overlay.g gVar = h.this.a;
            if (gVar != null) {
                gVar.N();
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.overlay.HyprMXBrowserPresenter$openOutsideApplication$2", f = "HyprMXBrowserPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class f extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public final /* synthetic */ String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(String str, Continuation<? super f> continuation) {
            super(2, continuation);
            this.b = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return h.this.new f(this.b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((f) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            com.hyprmx.android.sdk.overlay.m mVar;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            h hVar = h.this;
            Context context = hVar.f4604f;
            if (context != null && a1.a(context, this.b) && (mVar = hVar.f4605g) != null) {
                mVar.onOutsideAppPresented();
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.overlay.HyprMXBrowserPresenter$openShareSheet$2", f = "HyprMXBrowserPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class g extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public final /* synthetic */ String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(String str, Continuation<? super g> continuation) {
            super(2, continuation);
            this.b = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return h.this.new g(this.b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((g) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.overlay.g gVar = h.this.a;
            if (gVar != null) {
                gVar.openShareSheet(this.b);
            }
            h.this.f4603e = false;
            return kotlin.v.a;
        }
    }

    /* JADX INFO: renamed from: com.hyprmx.android.sdk.overlay.h$h, reason: collision with other inner class name */
    @DebugMetadata(c = "com.hyprmx.android.sdk.overlay.HyprMXBrowserPresenter$permissionRequest$2", f = "HyprMXBrowserPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class C0294h extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public final /* synthetic */ String b;
        public final /* synthetic */ int c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0294h(String str, int i, Continuation<? super C0294h> continuation) {
            super(2, continuation);
            this.b = str;
            this.c = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return h.this.new C0294h(this.b, this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((C0294h) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.overlay.g gVar = h.this.a;
            if (gVar != null) {
                JSONArray jSONArray = new JSONArray(this.b);
                Intrinsics.checkNotNullParameter(jSONArray, "<this>");
                ArrayList arrayList = new ArrayList();
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    arrayList.add(jSONArray.getString(i));
                }
                Object[] array = arrayList.toArray(new String[0]);
                Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                gVar.a((String[]) array, this.c);
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.overlay.HyprMXBrowserPresenter$setBackButtonEnabled$2", f = "HyprMXBrowserPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class i extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public final /* synthetic */ boolean a;
        public final /* synthetic */ h b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(boolean z, h hVar, Continuation<? super i> continuation) {
            super(2, continuation);
            this.a = z;
            this.b = hVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new i(this.a, this.b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((i) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            HyprMXLog.d("Updating back navigation to (" + this.a + ')');
            h hVar = this.b;
            hVar.f4603e = false;
            com.hyprmx.android.sdk.overlay.g gVar = hVar.a;
            if (gVar != null) {
                gVar.e(this.a);
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.overlay.HyprMXBrowserPresenter$setForwardButtonEnabled$2", f = "HyprMXBrowserPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class j extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public final /* synthetic */ boolean a;
        public final /* synthetic */ h b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(boolean z, h hVar, Continuation<? super j> continuation) {
            super(2, continuation);
            this.a = z;
            this.b = hVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new j(this.a, this.b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((j) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            HyprMXLog.d("Updating forward navigation to (" + this.a + ')');
            h hVar = this.b;
            hVar.f4603e = false;
            com.hyprmx.android.sdk.overlay.g gVar = hVar.a;
            if (gVar != null) {
                gVar.d(this.a);
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.overlay.HyprMXBrowserPresenter$setTitle$2", f = "HyprMXBrowserPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class k extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public final /* synthetic */ String a;
        public final /* synthetic */ h b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(h hVar, String str, Continuation continuation) {
            super(2, continuation);
            this.a = str;
            this.b = hVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new k(this.b, this.a, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((k) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            HyprMXLog.d("Updating title to (" + this.a + ')');
            h hVar = this.b;
            hVar.f4603e = false;
            com.hyprmx.android.sdk.overlay.g gVar = hVar.a;
            if (gVar != null) {
                gVar.setTitleText(this.a);
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.overlay.HyprMXBrowserPresenter$showToast$2", f = "HyprMXBrowserPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class l extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public final /* synthetic */ int b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(int i, Continuation<? super l> continuation) {
            super(2, continuation);
            this.b = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return h.this.new l(this.b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((l) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            Context context = h.this.f4604f;
            if (context != null) {
                Toast.makeText(context, context.getString(this.b), 0).show();
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.overlay.HyprMXBrowserPresenter$storePicture$2", f = "HyprMXBrowserPresenter.kt", i = {}, l = {177}, m = "invokeSuspend", n = {}, s = {})
    public static final class m extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(String str, Continuation<? super m> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return h.this.new m(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((m) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.overlay.g gVar = h.this.a;
                if (gVar != null) {
                    String str = this.c;
                    this.a = 1;
                    if (gVar.asyncSavePhoto(str, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.overlay.HyprMXBrowserPresenter$webViewLoadStarted$2", f = "HyprMXBrowserPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class n extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public final /* synthetic */ String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public n(String str, Continuation<? super n> continuation) {
            super(2, continuation);
            this.a = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new n(this.a, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((n) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            HyprMXLog.d("webViewLoadStarted " + this.a);
            return kotlin.v.a;
        }
    }

    public h(com.hyprmx.android.sdk.overlay.g gVar, String viewModelIdentifier, com.hyprmx.android.sdk.core.js.a jsEngine, CoroutineScope coroutineScope, com.hyprmx.android.sdk.presentation.h eventPublisher, com.hyprmx.android.sdk.mvp.c lifeCycleHandler, com.hyprmx.android.sdk.overlay.e sharedInterface) {
        Intrinsics.checkNotNullParameter(viewModelIdentifier, "viewModelIdentifier");
        Intrinsics.checkNotNullParameter(jsEngine, "jsEngine");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        Intrinsics.checkNotNullParameter(eventPublisher, "eventPublisher");
        Intrinsics.checkNotNullParameter(lifeCycleHandler, "lifeCycleHandler");
        Intrinsics.checkNotNullParameter(sharedInterface, "sharedInterface");
        this.a = gVar;
        this.b = sharedInterface;
        this.c = coroutineScope;
        this.f4602d = lifeCycleHandler;
        b(new com.hyprmx.android.sdk.overlay.b(this, this));
        com.hyprmx.android.sdk.core.j jVarA = t.a().a();
        if (jVarA != null) {
            jVarA.a(this);
        }
        R();
    }

    @Override // com.hyprmx.android.sdk.overlay.f
    public final void F() {
        if (this.f4603e) {
            return;
        }
        this.f4603e = true;
        this.b.g();
    }

    @Override // com.hyprmx.android.sdk.core.v
    public final void G() {
        com.hyprmx.android.sdk.overlay.g gVar = this.a;
        if (gVar != null) {
            gVar.A();
        }
        com.hyprmx.android.sdk.overlay.g gVar2 = this.a;
        if (gVar2 != null) {
            gVar2.N();
        }
        L();
    }

    @Override // com.hyprmx.android.sdk.core.c
    public final void L() {
        this.b.destroy();
        this.a = null;
        this.f4605g = null;
        this.f4604f = null;
    }

    @Override // com.hyprmx.android.sdk.overlay.f
    public final void Q() {
        this.b.m();
        com.hyprmx.android.sdk.overlay.m mVar = this.f4605g;
        if (mVar != null) {
            mVar.b();
        }
        com.hyprmx.android.sdk.overlay.g gVar = this.a;
        if (gVar != null) {
            gVar.hyprMXBrowserClosed();
        }
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new e(null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.overlay.f
    public final void R() {
        com.hyprmx.android.sdk.overlay.g gVar = this.a;
        if (gVar != null) {
            gVar.e(false);
        }
        com.hyprmx.android.sdk.overlay.g gVar2 = this.a;
        if (gVar2 != null) {
            gVar2.d(false);
        }
        com.hyprmx.android.sdk.overlay.g gVar3 = this.a;
        if (gVar3 != null) {
            gVar3.setTitleText("");
        }
        com.hyprmx.android.sdk.overlay.g gVar4 = this.a;
        if (gVar4 != null) {
            gVar4.z();
        }
    }

    @Override // com.hyprmx.android.sdk.overlay.c
    public final Object a(int i2, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new l(i2, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.overlay.c
    public final Object a(String str, int i2, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new C0294h(str, i2, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.overlay.c
    public final Object a(String str, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new m(str, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.overlay.c
    public final Object a(Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new a(null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.overlay.c
    public final Object a(boolean z, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new j(z, this, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.presentation.k, com.hyprmx.android.sdk.core.a0
    public final String a() {
        return this.b.a();
    }

    @Override // com.hyprmx.android.sdk.overlay.f
    public final void a(Context context) {
        this.f4604f = context;
    }

    @Override // com.hyprmx.android.sdk.core.c
    public final void a(com.hyprmx.android.sdk.core.d dVar) {
        this.a = (com.hyprmx.android.sdk.overlay.g) dVar;
    }

    @Override // com.hyprmx.android.sdk.overlay.f
    public final void a(j.b bVar) {
        this.f4605g = bVar;
    }

    @Override // com.hyprmx.android.sdk.utility.k0
    public final void a(ArrayList permissionResults, int i2) {
        Intrinsics.checkNotNullParameter(permissionResults, "permissionResults");
        this.b.a(permissionResults, i2);
    }

    @Override // com.hyprmx.android.sdk.overlay.c
    public final Object b(String str, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new f(str, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.overlay.c
    public final Object b(Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new b(null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.overlay.c
    public final Object b(boolean z, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new i(z, this, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.overlay.f, com.hyprmx.android.sdk.overlay.e
    public final void b() {
        this.b.b();
    }

    @Override // com.hyprmx.android.sdk.core.a0
    public final void b(Object nativeObject) {
        Intrinsics.checkNotNullParameter(nativeObject, "nativeObject");
        this.b.b(nativeObject);
    }

    @Override // com.hyprmx.android.sdk.overlay.c
    public final Object c(String str, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new c(str, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.overlay.c
    public final Object d(String str, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new g(str, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.core.a0
    public final void destroy() {
        this.b.destroy();
    }

    @Override // com.hyprmx.android.sdk.overlay.c
    public final Object e(String str, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new n(str, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.overlay.c
    public final Object f(String str, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new d(this, str, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.overlay.c
    public final Object g(String str, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new k(this, str, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.overlay.e
    public final void g() {
        this.b.g();
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        return this.c.getCoroutineContext();
    }

    @Override // com.hyprmx.android.sdk.overlay.f, com.hyprmx.android.sdk.overlay.e
    public final void i() {
        if (this.f4603e) {
            return;
        }
        this.f4603e = true;
        this.b.i();
    }

    @Override // com.hyprmx.android.sdk.mvp.c
    public final void i(String event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.f4602d.i(event);
    }

    @Override // com.hyprmx.android.sdk.core.w
    public final void imageCaptured(String str) {
        this.b.imageCaptured(str);
    }

    @Override // com.hyprmx.android.sdk.overlay.f, com.hyprmx.android.sdk.overlay.e
    public final void j() {
        if (this.f4603e) {
            return;
        }
        this.f4603e = true;
        this.b.j();
    }

    @Override // com.hyprmx.android.sdk.overlay.f, com.hyprmx.android.sdk.overlay.e
    public final void l() {
        if (this.f4603e) {
            return;
        }
        this.f4603e = true;
        this.b.l();
    }

    @Override // com.hyprmx.android.sdk.overlay.e
    public final void m() {
        this.b.m();
    }

    @Override // com.hyprmx.android.sdk.overlay.f
    public final com.hyprmx.android.sdk.overlay.m r() {
        return this.f4605g;
    }
}
