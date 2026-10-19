package com.hyprmx.android.sdk.fullscreen;

import java.lang.ref.WeakReference;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements com.hyprmx.android.sdk.fullscreen.a, CoroutineScope {
    public final /* synthetic */ CoroutineScope a;
    public final WeakReference<com.hyprmx.android.sdk.fullscreen.c> b;

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$captureImage$1", f = "FullScreenNativeInterface.kt", i = {}, l = {271}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;

        public a(Continuation<? super a> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new a(continuation);
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
                com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
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
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$showToast$1", f = "FullScreenNativeInterface.kt", i = {}, l = {255}, m = "invokeSuspend", n = {}, s = {})
    public static final class a0 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ int c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a0(int i, Continuation<? super a0> continuation) {
            super(2, continuation);
            this.c = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new a0(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((a0) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
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
            return kotlin.v.a;
        }
    }

    /* JADX INFO: renamed from: com.hyprmx.android.sdk.fullscreen.b$b, reason: collision with other inner class name */
    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$closeAdExperience$1", f = "FullScreenNativeInterface.kt", i = {}, l = {148}, m = "invokeSuspend", n = {}, s = {})
    public static final class C0286b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;

        public C0286b(Continuation<? super C0286b> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new C0286b(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((C0286b) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
                if (cVar != null) {
                    this.a = 1;
                    if (cVar.i(this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$showWebTrafficHeader$1", f = "FullScreenNativeInterface.kt", i = {}, l = {195}, m = "invokeSuspend", n = {}, s = {})
    public static final class b0 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ int c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b0(int i, Continuation<? super b0> continuation) {
            super(2, continuation);
            this.c = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new b0(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((b0) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
                if (cVar != null) {
                    int i2 = this.c;
                    this.a = 1;
                    if (cVar.c(i2, this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$createCalendarEvent$1", f = "FullScreenNativeInterface.kt", i = {}, l = {247}, m = "invokeSuspend", n = {}, s = {})
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
            return b.this.new c(this.c, continuation);
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
                com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
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
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$skipThankYouPage$1", f = "FullScreenNativeInterface.kt", i = {}, l = {207}, m = "invokeSuspend", n = {}, s = {})
    public static final class c0 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ boolean c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c0(boolean z, Continuation<? super c0> continuation) {
            super(2, continuation);
            this.c = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new c0(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((c0) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                if (b.this.b.get() != null) {
                    this.a = 1;
                    if (kotlin.v.a == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$dismissOfferCancellationDialog$1", f = "FullScreenNativeInterface.kt", i = {}, l = {184}, m = "invokeSuspend", n = {}, s = {})
    public static final class d extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;

        public d(Continuation<? super d> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new d(continuation);
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
                com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
                if (cVar != null) {
                    this.a = 1;
                    if (cVar.j(this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$startCatalogDurationTracking$1", f = "FullScreenNativeInterface.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class d0 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public final /* synthetic */ float b;
        public final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ String f4538d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d0(float f2, String str, String str2, Continuation<? super d0> continuation) {
            super(2, continuation);
            this.b = f2;
            this.c = str;
            this.f4538d = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new d0(this.b, this.c, this.f4538d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((d0) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
            if (cVar != null) {
                cVar.startCatalogDurationTracking(this.b, this.c, this.f4538d);
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$endOMSession$1", f = "FullScreenNativeInterface.kt", i = {}, l = {172}, m = "invokeSuspend", n = {}, s = {})
    public static final class e extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;

        public e(Continuation<? super e> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new e(continuation);
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
                com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
                if (cVar != null) {
                    this.a = 1;
                    if (cVar.c(this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$startCountDownTimer$1", f = "FullScreenNativeInterface.kt", i = {}, l = {219}, m = "invokeSuspend", n = {}, s = {})
    public static final class e0 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ int c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e0(int i, Continuation<? super e0> continuation) {
            super(2, continuation);
            this.c = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new e0(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((e0) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
                if (cVar != null) {
                    int i2 = this.c;
                    this.a = 1;
                    if (cVar.b(i2, this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$hyprMXBrowserClosed$1", f = "FullScreenNativeInterface.kt", i = {}, l = {275}, m = "invokeSuspend", n = {}, s = {})
    public static final class f extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;

        public f(Continuation<? super f> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new f(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((f) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
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
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$startOMSession$1", f = "FullScreenNativeInterface.kt", i = {}, l = {168}, m = "invokeSuspend", n = {}, s = {})
    public static final class f0 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f0(String str, Continuation<? super f0> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new f0(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((f0) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
                if (cVar != null) {
                    String str = this.c;
                    this.a = 1;
                    if (cVar.h(str, this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$loadThankYouPage$1", f = "FullScreenNativeInterface.kt", i = {}, l = {203}, m = "invokeSuspend", n = {}, s = {})
    public static final class g extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(String str, Continuation<? super g> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new g(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((g) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
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
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$storePicture$1", f = "FullScreenNativeInterface.kt", i = {}, l = {251}, m = "invokeSuspend", n = {}, s = {})
    public static final class g0 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g0(String str, Continuation<? super g0> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new g0(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((g0) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
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
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$loadWebTrafficPage$1", f = "FullScreenNativeInterface.kt", i = {}, l = {199}, m = "invokeSuspend", n = {}, s = {})
    public static final class h extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ int f4539d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(String str, int i, Continuation<? super h> continuation) {
            super(2, continuation);
            this.c = str;
            this.f4539d = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new h(this.c, this.f4539d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((h) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
                if (cVar != null) {
                    String str = this.c;
                    int i2 = this.f4539d;
                    this.a = 1;
                    if (cVar.b(str, i2, this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$useCustomClose$1", f = "FullScreenNativeInterface.kt", i = {}, l = {267}, m = "invokeSuspend", n = {}, s = {})
    public static final class h0 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ boolean c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h0(boolean z, Continuation<? super h0> continuation) {
            super(2, continuation);
            this.c = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new h0(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((h0) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
                if (cVar != null) {
                    boolean z = this.c;
                    this.a = 1;
                    if (cVar.d(z, this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$openOutsideApplication$1", f = "FullScreenNativeInterface.kt", i = {}, l = {259}, m = "invokeSuspend", n = {}, s = {})
    public static final class i extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(String str, Continuation<? super i> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new i(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((i) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
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
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$openShareSheet$1", f = "FullScreenNativeInterface.kt", i = {}, l = {243}, m = "invokeSuspend", n = {}, s = {})
    public static final class j extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(String str, Continuation<? super j> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new j(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((j) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
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
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$pauseCountDownTimer$1", f = "FullScreenNativeInterface.kt", i = {}, l = {223}, m = "invokeSuspend", n = {}, s = {})
    public static final class k extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;

        public k(Continuation<? super k> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new k(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((k) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
                if (cVar != null) {
                    this.a = 1;
                    if (cVar.h(this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$permissionRequest$1", f = "FullScreenNativeInterface.kt", i = {}, l = {160}, m = "invokeSuspend", n = {}, s = {})
    public static final class l extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ int f4540d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(String str, int i, Continuation<? super l> continuation) {
            super(2, continuation);
            this.c = str;
            this.f4540d = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new l(this.c, this.f4540d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((l) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
                if (cVar != null) {
                    String str = this.c;
                    int i2 = this.f4540d;
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
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$reportPowerState$1", f = "FullScreenNativeInterface.kt", i = {}, l = {164}, m = "invokeSuspend", n = {}, s = {})
    public static final class m extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;

        public m(Continuation<? super m> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new m(continuation);
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
                com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
                if (cVar != null) {
                    this.a = 1;
                    if (cVar.d(this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$resumeCountDownTimer$1", f = "FullScreenNativeInterface.kt", i = {}, l = {227}, m = "invokeSuspend", n = {}, s = {})
    public static final class n extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;

        public n(Continuation<? super n> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new n(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((n) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
                if (cVar != null) {
                    this.a = 1;
                    if (cVar.e(this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$setBackButtonEnabled$1", f = "FullScreenNativeInterface.kt", i = {}, l = {180}, m = "invokeSuspend", n = {}, s = {})
    public static final class o extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ boolean c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public o(boolean z, Continuation<? super o> continuation) {
            super(2, continuation);
            this.c = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new o(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((o) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
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
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$setClosable$1", f = "FullScreenNativeInterface.kt", i = {}, l = {156}, m = "invokeSuspend", n = {}, s = {})
    public static final class p extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ boolean c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public p(boolean z, Continuation<? super p> continuation) {
            super(2, continuation);
            this.c = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new p(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((p) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
                if (cVar != null) {
                    boolean z = this.c;
                    this.a = 1;
                    if (cVar.c(z, this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$setForwardButtonEnabled$1", f = "FullScreenNativeInterface.kt", i = {}, l = {176}, m = "invokeSuspend", n = {}, s = {})
    public static final class q extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ boolean c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public q(boolean z, Continuation<? super q> continuation) {
            super(2, continuation);
            this.c = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new q(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((q) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
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
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$setOrientationProperties$1", f = "FullScreenNativeInterface.kt", i = {}, l = {191}, m = "invokeSuspend", n = {}, s = {})
    public static final class r extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ String f4541d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public r(boolean z, String str, Continuation<? super r> continuation) {
            super(2, continuation);
            this.c = z;
            this.f4541d = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new r(this.c, this.f4541d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((r) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
                if (cVar != null) {
                    boolean z = this.c;
                    String str = this.f4541d;
                    this.a = 1;
                    if (cVar.a(z, str, this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$showCancelDialog$1", f = "FullScreenNativeInterface.kt", i = {}, l = {231}, m = "invokeSuspend", n = {}, s = {})
    public static final class s extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ String f4542d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ String f4543e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public s(String str, String str2, String str3, Continuation<? super s> continuation) {
            super(2, continuation);
            this.c = str;
            this.f4542d = str2;
            this.f4543e = str3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new s(this.c, this.f4542d, this.f4543e, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((s) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
                if (cVar != null) {
                    String str = this.c;
                    String str2 = this.f4542d;
                    String str3 = this.f4543e;
                    this.a = 1;
                    if (cVar.a(str, str2, str3, this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$showDialog$1", f = "FullScreenNativeInterface.kt", i = {}, l = {263}, m = "invokeSuspend", n = {}, s = {})
    public static final class t extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public t(String str, Continuation<? super t> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new t(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((t) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
                if (cVar != null) {
                    String str = this.c;
                    this.a = 1;
                    if (cVar.j(str, this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$showErrorDialog$1", f = "FullScreenNativeInterface.kt", i = {}, l = {152}, m = "invokeSuspend", n = {}, s = {})
    public static final class u extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public u(String str, Continuation<? super u> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new u(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((u) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
                if (cVar != null) {
                    String str = this.c;
                    this.a = 1;
                    if (cVar.i(str, this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$showFinishButton$1", f = "FullScreenNativeInterface.kt", i = {}, l = {215}, m = "invokeSuspend", n = {}, s = {})
    public static final class v extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;

        public v(Continuation<? super v> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new v(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((v) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
                if (cVar != null) {
                    this.a = 1;
                    if (cVar.g(this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$showHyprMXBrowser$1", f = "FullScreenNativeInterface.kt", i = {}, l = {279}, m = "invokeSuspend", n = {}, s = {})
    public static final class w extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public w(String str, Continuation<? super w> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new w(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((w) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
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
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$showLearnMore$1", f = "FullScreenNativeInterface.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class x extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public x(Continuation<? super x> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new x(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((x) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
            if (cVar != null) {
                cVar.showLearnMore();
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$showNextButton$1", f = "FullScreenNativeInterface.kt", i = {}, l = {211}, m = "invokeSuspend", n = {}, s = {})
    public static final class y extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;

        public y(Continuation<? super y> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new y(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((y) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
                if (cVar != null) {
                    this.a = 1;
                    if (cVar.f(this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.fullscreen.FullScreenPresenterAdapter$showPlatformBrowser$1", f = "FullScreenNativeInterface.kt", i = {}, l = {283}, m = "invokeSuspend", n = {}, s = {})
    public static final class z extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public z(String str, Continuation<? super z> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b.this.new z(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((z) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.fullscreen.c cVar = b.this.b.get();
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
            return kotlin.v.a;
        }
    }

    public b(com.hyprmx.android.sdk.fullscreen.c presenter, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(presenter, "presenter");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.a = scope;
        this.b = new WeakReference<>(presenter);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a, com.hyprmx.android.sdk.core.e
    public final void captureImage() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new a(null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a
    public final void closeAdExperience() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new C0286b(null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a, com.hyprmx.android.sdk.core.a
    public final void createCalendarEvent(String data) {
        Intrinsics.checkNotNullParameter(data, "data");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new c(data, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a
    public final void dismissOfferCancellationDialog() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new d(null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a
    public final void endOMSession() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new e(null), 3, null);
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        return this.a.getCoroutineContext();
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a, com.hyprmx.android.sdk.core.x
    public final void hyprMXBrowserClosed() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new f(null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a, com.hyprmx.android.sdk.fullscreen.g
    public final void loadThankYouPage(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new g(url, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a, com.hyprmx.android.sdk.fullscreen.g
    public final void loadWebTrafficPage(String url, int i2) {
        Intrinsics.checkNotNullParameter(url, "url");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new h(url, i2, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a, com.hyprmx.android.sdk.core.a
    public final void openOutsideApplication(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new i(url, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a, com.hyprmx.android.sdk.core.a
    public final void openShareSheet(String data) {
        Intrinsics.checkNotNullParameter(data, "data");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new j(data, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a, com.hyprmx.android.sdk.fullscreen.g
    public final void pauseCountDownTimer() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new k(null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a, com.hyprmx.android.sdk.core.z
    public final void permissionRequest(String permissions, int i2) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new l(permissions, i2, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a
    public final void reportPowerState() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new m(null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a, com.hyprmx.android.sdk.fullscreen.g
    public final void resumeCountDownTimer() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new n(null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a, com.hyprmx.android.sdk.fullscreen.g
    public final void setBackButtonEnabled(boolean z2) {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new o(z2, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a
    public final void setClosable(boolean z2) {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new p(z2, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a, com.hyprmx.android.sdk.fullscreen.g
    public final void setForwardButtonEnabled(boolean z2) {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new q(z2, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a, com.hyprmx.android.sdk.core.y
    public final void setOrientationProperties(boolean z2, String forceOrientationChange) {
        Intrinsics.checkNotNullParameter(forceOrientationChange, "forceOrientationChange");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new r(z2, forceOrientationChange, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a
    public final void showCancelDialog(String message, String exitButton, String continueButton) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(exitButton, "exitButton");
        Intrinsics.checkNotNullParameter(continueButton, "continueButton");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new s(message, exitButton, continueButton, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a, com.hyprmx.android.sdk.core.i
    public final void showDialog(String jsonConfiguration) {
        Intrinsics.checkNotNullParameter(jsonConfiguration, "jsonConfiguration");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new t(jsonConfiguration, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a
    public final void showErrorDialog(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new u(message, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a, com.hyprmx.android.sdk.fullscreen.g
    public final void showFinishButton() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new v(null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a, com.hyprmx.android.sdk.core.x
    public final void showHyprMXBrowser(String viewModelIdentifier) {
        Intrinsics.checkNotNullParameter(viewModelIdentifier, "viewModelIdentifier");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new w(viewModelIdentifier, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a, com.hyprmx.android.sdk.fullscreen.f
    public final void showLearnMore() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new x(null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a, com.hyprmx.android.sdk.fullscreen.g
    public final void showNextButton() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new y(null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a, com.hyprmx.android.sdk.core.x
    public final void showPlatformBrowser(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new z(url, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a, com.hyprmx.android.sdk.core.a
    public final void showToast(int i2) {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new a0(i2, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a, com.hyprmx.android.sdk.fullscreen.g
    public final void showWebTrafficHeader(int i2) {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new b0(i2, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a, com.hyprmx.android.sdk.fullscreen.g
    public final void skipThankYouPage(boolean z2) {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new c0(z2, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a, com.hyprmx.android.sdk.fullscreen.f
    public final void startCatalogDurationTracking(float f2, String token, String viewingId) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(viewingId, "viewingId");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new d0(f2, token, viewingId, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a, com.hyprmx.android.sdk.fullscreen.g
    public final void startCountDownTimer(int i2) {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new e0(i2, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a
    public final void startOMSession(String args) {
        Intrinsics.checkNotNullParameter(args, "args");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new f0(args, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a, com.hyprmx.android.sdk.core.a
    public final void storePicture(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new g0(url, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.a, com.hyprmx.android.sdk.core.y
    public final void useCustomClose(boolean z2) {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new h0(z2, null), 3, null);
    }
}
