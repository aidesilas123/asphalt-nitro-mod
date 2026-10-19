package com.hyprmx.android.sdk.overlay;

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
public final class b implements com.hyprmx.android.sdk.overlay.a, CoroutineScope {
    public final /* synthetic */ CoroutineScope a;
    public final WeakReference<com.hyprmx.android.sdk.overlay.c> b;

    @DebugMetadata(c = "com.hyprmx.android.sdk.overlay.BrowserPresenterAdapter$captureImage$1", f = "BrowserNativeInterface.kt", i = {}, l = {61}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public int a;

        public a(Continuation<? super a> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return b.this.new a(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.overlay.c cVar = b.this.b.get();
                if (cVar != null) {
                    this.a = 1;
                    if (cVar.a(this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.hyprmx.android.sdk.overlay.b$b, reason: collision with other inner class name */
    @DebugMetadata(c = "com.hyprmx.android.sdk.overlay.BrowserPresenterAdapter$closeBrowser$1", f = "BrowserNativeInterface.kt", i = {}, l = {53}, m = "invokeSuspend", n = {}, s = {})
    public static final class C0293b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public int a;

        public C0293b(Continuation<? super C0293b> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return b.this.new C0293b(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((C0293b) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.overlay.c cVar = b.this.b.get();
                if (cVar != null) {
                    this.a = 1;
                    if (cVar.b(this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.overlay.BrowserPresenterAdapter$createCalendarEvent$1", f = "BrowserNativeInterface.kt", i = {}, l = {89}, m = "invokeSuspend", n = {}, s = {})
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
            return b.this.new c(this.c, continuation);
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
                com.hyprmx.android.sdk.overlay.c cVar = b.this.b.get();
                if (cVar != null) {
                    String str = this.c;
                    this.a = 1;
                    if (cVar.c(str, this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.overlay.BrowserPresenterAdapter$displayError$1", f = "BrowserNativeInterface.kt", i = {}, l = {65}, m = "invokeSuspend", n = {}, s = {})
    public static final class d extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str, Continuation<? super d> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return b.this.new d(this.c, continuation);
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
                com.hyprmx.android.sdk.overlay.c cVar = b.this.b.get();
                if (cVar != null) {
                    String str = this.c;
                    this.a = 1;
                    if (cVar.f(str, this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.overlay.BrowserPresenterAdapter$openOutsideApplication$1", f = "BrowserNativeInterface.kt", i = {}, l = {81}, m = "invokeSuspend", n = {}, s = {})
    public static final class e extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(String str, Continuation<? super e> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return b.this.new e(this.c, continuation);
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
                com.hyprmx.android.sdk.overlay.c cVar = b.this.b.get();
                if (cVar != null) {
                    String str = this.c;
                    this.a = 1;
                    if (cVar.b(str, this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.overlay.BrowserPresenterAdapter$openShareSheet$1", f = "BrowserNativeInterface.kt", i = {}, l = {85}, m = "invokeSuspend", n = {}, s = {})
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
            return b.this.new f(this.c, continuation);
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
                com.hyprmx.android.sdk.overlay.c cVar = b.this.b.get();
                if (cVar != null) {
                    String str = this.c;
                    this.a = 1;
                    if (cVar.d(str, this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.overlay.BrowserPresenterAdapter$permissionRequest$1", f = "BrowserNativeInterface.kt", i = {}, l = {57}, m = "invokeSuspend", n = {}, s = {})
    public static final class g extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ int f4601d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(String str, int i, Continuation<? super g> continuation) {
            super(2, continuation);
            this.c = str;
            this.f4601d = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return b.this.new g(this.c, this.f4601d, continuation);
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
                com.hyprmx.android.sdk.overlay.c cVar = b.this.b.get();
                if (cVar != null) {
                    String str = this.c;
                    int i2 = this.f4601d;
                    this.a = 1;
                    if (cVar.a(str, i2, this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.overlay.BrowserPresenterAdapter$setBackButtonEnabled$1", f = "BrowserNativeInterface.kt", i = {}, l = {69}, m = "invokeSuspend", n = {}, s = {})
    public static final class h extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public int a;
        public final /* synthetic */ boolean c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(boolean z, Continuation<? super h> continuation) {
            super(2, continuation);
            this.c = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return b.this.new h(this.c, continuation);
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
                com.hyprmx.android.sdk.overlay.c cVar = b.this.b.get();
                if (cVar != null) {
                    boolean z = this.c;
                    this.a = 1;
                    if (cVar.b(z, this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.overlay.BrowserPresenterAdapter$setForwardButtonEnabled$1", f = "BrowserNativeInterface.kt", i = {}, l = {73}, m = "invokeSuspend", n = {}, s = {})
    public static final class i extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public int a;
        public final /* synthetic */ boolean c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(boolean z, Continuation<? super i> continuation) {
            super(2, continuation);
            this.c = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return b.this.new i(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((i) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.overlay.c cVar = b.this.b.get();
                if (cVar != null) {
                    boolean z = this.c;
                    this.a = 1;
                    if (cVar.a(z, this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.overlay.BrowserPresenterAdapter$setHeader$1", f = "BrowserNativeInterface.kt", i = {}, l = {77}, m = "invokeSuspend", n = {}, s = {})
    public static final class j extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(String str, Continuation<? super j> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return b.this.new j(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((j) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.overlay.c cVar = b.this.b.get();
                if (cVar != null) {
                    String str = this.c;
                    this.a = 1;
                    if (cVar.g(str, this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.overlay.BrowserPresenterAdapter$showToast$1", f = "BrowserNativeInterface.kt", i = {}, l = {97}, m = "invokeSuspend", n = {}, s = {})
    public static final class k extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public int a;
        public final /* synthetic */ int c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(int i, Continuation<? super k> continuation) {
            super(2, continuation);
            this.c = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return b.this.new k(this.c, continuation);
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
                com.hyprmx.android.sdk.overlay.c cVar = b.this.b.get();
                if (cVar != null) {
                    int i2 = this.c;
                    this.a = 1;
                    if (cVar.a(i2, this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.overlay.BrowserPresenterAdapter$storePicture$1", f = "BrowserNativeInterface.kt", i = {}, l = {93}, m = "invokeSuspend", n = {}, s = {})
    public static final class l extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(String str, Continuation<? super l> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return b.this.new l(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((l) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.overlay.c cVar = b.this.b.get();
                if (cVar != null) {
                    String str = this.c;
                    this.a = 1;
                    if (cVar.a(str, this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.overlay.BrowserPresenterAdapter$webViewLoadStarted$1", f = "BrowserNativeInterface.kt", i = {}, l = {49}, m = "invokeSuspend", n = {}, s = {})
    public static final class m extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(String str, Continuation<? super m> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return b.this.new m(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((m) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.overlay.c cVar = b.this.b.get();
                if (cVar != null) {
                    String str = this.c;
                    this.a = 1;
                    if (cVar.e(str, this) == coroutine_suspended) {
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

    public b(com.hyprmx.android.sdk.overlay.c presenter, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(presenter, "presenter");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.a = scope;
        this.b = new WeakReference<>(presenter);
    }

    @Override // com.hyprmx.android.sdk.overlay.a, com.hyprmx.android.sdk.core.e
    public final void captureImage() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new a(null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.overlay.a
    public final void closeBrowser() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new C0293b(null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.overlay.a, com.hyprmx.android.sdk.core.a
    public final void createCalendarEvent(String data) {
        Intrinsics.checkNotNullParameter(data, "data");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new c(data, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.overlay.a
    public final void displayError(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new d(message, null), 3, null);
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        return this.a.getCoroutineContext();
    }

    @Override // com.hyprmx.android.sdk.overlay.a, com.hyprmx.android.sdk.core.a
    public final void openOutsideApplication(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new e(url, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.overlay.a, com.hyprmx.android.sdk.core.a
    public final void openShareSheet(String data) {
        Intrinsics.checkNotNullParameter(data, "data");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new f(data, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.overlay.a, com.hyprmx.android.sdk.core.z
    public final void permissionRequest(String permissions, int i2) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new g(permissions, i2, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.overlay.a
    public final void setBackButtonEnabled(boolean z) {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new h(z, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.overlay.a
    public final void setForwardButtonEnabled(boolean z) {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new i(z, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.overlay.a
    public final void setHeader(String header) {
        Intrinsics.checkNotNullParameter(header, "header");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new j(header, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.overlay.a, com.hyprmx.android.sdk.core.a
    public final void showToast(int i2) {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new k(i2, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.overlay.a, com.hyprmx.android.sdk.core.a
    public final void storePicture(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new l(url, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.overlay.a
    public final void webViewLoadStarted(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new m(url, null), 3, null);
    }
}
