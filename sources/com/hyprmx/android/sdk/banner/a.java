package com.hyprmx.android.sdk.banner;

import java.lang.ref.WeakReference;
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
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements BannerNativeInterface, CoroutineScope {
    public final /* synthetic */ CoroutineScope a;
    public final WeakReference<com.hyprmx.android.sdk.banner.b> b;

    /* JADX INFO: renamed from: com.hyprmx.android.sdk.banner.a$a, reason: collision with other inner class name */
    @DebugMetadata(c = "com.hyprmx.android.sdk.banner.BannerPresenterAdapter$createCalendarEvent$1", f = "BannerNativeInterface.kt", i = {}, l = {70}, m = "invokeSuspend", n = {}, s = {})
    public static final class C0280a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0280a(String str, Continuation<? super C0280a> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return a.this.new C0280a(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((C0280a) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.banner.b bVar = a.this.b.get();
                if (bVar != null) {
                    String str = this.c;
                    this.a = 1;
                    if (bVar.c(str, this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.banner.BannerPresenterAdapter$hyprMXBrowserClosed$1", f = "BannerNativeInterface.kt", i = {}, l = {86}, m = "invokeSuspend", n = {}, s = {})
    public static final class b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public int a;

        public b(Continuation<? super b> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return a.this.new b(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.banner.b bVar = a.this.b.get();
                if (bVar != null) {
                    this.a = 1;
                    if (bVar.b(this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.banner.BannerPresenterAdapter$loadAdFailed$1", f = "BannerNativeInterface.kt", i = {}, l = {58}, m = "invokeSuspend", n = {}, s = {})
    public static final class c extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String str, Continuation<? super c> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return a.this.new c(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((c) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.banner.b bVar = a.this.b.get();
                if (bVar != null) {
                    String str = this.c;
                    this.a = 1;
                    if (bVar.g(str, this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.banner.BannerPresenterAdapter$loadAdSuccess$1", f = "BannerNativeInterface.kt", i = {}, l = {54}, m = "invokeSuspend", n = {}, s = {})
    public static final class d extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public int a;

        public d(Continuation<? super d> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return a.this.new d(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((d) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.banner.b bVar = a.this.b.get();
                if (bVar != null) {
                    this.a = 1;
                    if (bVar.c(this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.banner.BannerPresenterAdapter$onAdClicked$1", f = "BannerNativeInterface.kt", i = {}, l = {62}, m = "invokeSuspend", n = {}, s = {})
    public static final class e extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public int a;

        public e(Continuation<? super e> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return a.this.new e(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((e) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.banner.b bVar = a.this.b.get();
                if (bVar != null) {
                    this.a = 1;
                    if (bVar.d(this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.banner.BannerPresenterAdapter$openOutsideApplication$1", f = "BannerNativeInterface.kt", i = {}, l = {74}, m = "invokeSuspend", n = {}, s = {})
    public static final class f extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(String str, Continuation<? super f> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return a.this.new f(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((f) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.banner.b bVar = a.this.b.get();
                if (bVar != null) {
                    String str = this.c;
                    this.a = 1;
                    if (bVar.b(str, this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.banner.BannerPresenterAdapter$showHyprMXBrowser$1", f = "BannerNativeInterface.kt", i = {}, l = {90}, m = "invokeSuspend", n = {}, s = {})
    public static final class g extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(String str, Continuation<? super g> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return a.this.new g(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((g) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.banner.b bVar = a.this.b.get();
                if (bVar != null) {
                    String str = this.c;
                    this.a = 1;
                    if (bVar.f(str, this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.banner.BannerPresenterAdapter$showPlatformBrowser$1", f = "BannerNativeInterface.kt", i = {}, l = {94}, m = "invokeSuspend", n = {}, s = {})
    public static final class h extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(String str, Continuation<? super h> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return a.this.new h(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((h) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.banner.b bVar = a.this.b.get();
                if (bVar != null) {
                    String str = this.c;
                    this.a = 1;
                    if (bVar.e(str, this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.banner.BannerPresenterAdapter$startVisibilityTracking$1", f = "BannerNativeInterface.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class i extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public final /* synthetic */ long b;
        public final /* synthetic */ int c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(long j, int i, Continuation<? super i> continuation) {
            super(2, continuation);
            this.b = j;
            this.c = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return a.this.new i(this.b, this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((i) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.banner.b bVar = a.this.b.get();
            if (bVar != null) {
                bVar.startVisibilityTracking(this.b, this.c);
            }
            return v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.banner.BannerPresenterAdapter$stopVisibilityTracking$1", f = "BannerNativeInterface.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class j extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public j(Continuation<? super j> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return a.this.new j(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((j) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.banner.b bVar = a.this.b.get();
            if (bVar != null) {
                bVar.stopVisibilityTracking();
            }
            return v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.banner.BannerPresenterAdapter$storePicture$1", f = "BannerNativeInterface.kt", i = {}, l = {66}, m = "invokeSuspend", n = {}, s = {})
    public static final class k extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(String str, Continuation<? super k> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return a.this.new k(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((k) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.banner.b bVar = a.this.b.get();
                if (bVar != null) {
                    String str = this.c;
                    this.a = 1;
                    if (bVar.a(str, this) == coroutine_suspended) {
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

    public a(com.hyprmx.android.sdk.banner.b presenter, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(presenter, "presenter");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.a = scope;
        this.b = new WeakReference<>(presenter);
    }

    @Override // com.hyprmx.android.sdk.banner.BannerNativeInterface
    public final void createCalendarEvent(String data) {
        Intrinsics.checkNotNullParameter(data, "data");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new C0280a(data, null), 3, null);
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        return this.a.getCoroutineContext();
    }

    @Override // com.hyprmx.android.sdk.banner.BannerNativeInterface, com.hyprmx.android.sdk.core.x
    public final void hyprMXBrowserClosed() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new b(null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.banner.BannerNativeInterface
    public final void loadAdFailed(String error) {
        Intrinsics.checkNotNullParameter(error, "error");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new c(error, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.banner.BannerNativeInterface
    public final void loadAdSuccess() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new d(null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.banner.BannerNativeInterface
    public final void onAdClicked() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new e(null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.banner.BannerNativeInterface
    public final void openOutsideApplication(String data) {
        Intrinsics.checkNotNullParameter(data, "data");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new f(data, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.banner.BannerNativeInterface, com.hyprmx.android.sdk.core.x
    public final void showHyprMXBrowser(String viewModelIdentifier) {
        Intrinsics.checkNotNullParameter(viewModelIdentifier, "viewModelIdentifier");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new g(viewModelIdentifier, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.banner.BannerNativeInterface, com.hyprmx.android.sdk.core.x
    public final void showPlatformBrowser(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new h(url, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.banner.BannerNativeInterface
    public final void startVisibilityTracking(long j2, int i2) {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new i(j2, i2, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.banner.BannerNativeInterface
    public final void stopVisibilityTracking() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new j(null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.banner.BannerNativeInterface
    public final void storePicture(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new k(url, null), 3, null);
    }
}
