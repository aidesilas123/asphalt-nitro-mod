package com.hyprmx.android.sdk.activity;

import android.content.Context;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import androidx.appcompat.app.AppCompatActivity;
import com.hyprmx.android.R;
import com.hyprmx.android.sdk.activity.HyprMXBaseViewController;
import com.hyprmx.android.sdk.graphics.c;
import com.hyprmx.android.sdk.graphics.d;
import com.hyprmx.android.sdk.p002assert.ThreadAssert;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.json.mediationsdk.logger.IronSourceError;
import com.unity3d.ads.adplayer.AndroidWebViewClient;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.MainCoroutineDispatcher;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002¨\u0006\u0003"}, d2 = {"Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;", "Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;", "", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1})
public final class HyprMXVastViewController extends HyprMXBaseViewController {
    public final com.hyprmx.android.sdk.preload.n A;
    public final com.hyprmx.android.sdk.analytics.b B;
    public final com.hyprmx.android.sdk.tracking.c C;
    public final com.hyprmx.android.sdk.network.k D;
    public VideoView E;
    public com.hyprmx.android.sdk.graphics.c F;
    public com.hyprmx.android.sdk.graphics.b G;
    public com.hyprmx.android.sdk.graphics.d H;
    public AudioManager I;
    public AudioManager.OnAudioFocusChangeListener J;
    public final String K;
    public final String L;
    public final String M;
    public String N;
    public int O;
    public boolean P;
    public Job Q;
    public Job R;
    public Job S;
    public boolean T;
    public final ArrayList U;
    public final com.hyprmx.android.sdk.model.vast.a V;
    public boolean W;
    public final com.hyprmx.android.sdk.analytics.d z;

    @DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController$createVideoView$1$1", f = "HyprMXVastViewController.kt", i = {}, l = {587, 588, 589, 590}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;

        public a(Continuation<? super a> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return HyprMXVastViewController.this.new a(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:34:0x009b  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x009f A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00b9 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:45:0x00c6 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r9) {
            /*
                Method dump skipped, instruction units count: 207
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.activity.HyprMXVastViewController.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController$createVideoView$4$1", f = "HyprMXVastViewController.kt", i = {}, l = {618}, m = "invokeSuspend", n = {}, s = {})
    public static final class b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;

        public b(Continuation<? super b> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return HyprMXVastViewController.this.new b(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.tracking.c cVar = HyprMXVastViewController.this.C;
                this.a = 1;
                if (cVar.d(this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController$createVideoView$4$2", f = "HyprMXVastViewController.kt", i = {}, l = {IronSourceError.ERROR_DO_BN_LOAD_DURING_SHOW, 621}, m = "invokeSuspend", n = {}, s = {})
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
            return HyprMXVastViewController.this.new c(this.c, continuation);
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
                com.hyprmx.android.sdk.preload.n nVar = HyprMXVastViewController.this.A;
                String str = this.c;
                this.a = 1;
                if (nVar.f(str, this) == coroutine_suspended) {
                    return coroutine_suspended;
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
            com.hyprmx.android.sdk.preload.n nVar2 = HyprMXVastViewController.this.A;
            String str2 = this.c;
            this.a = 2;
            if (nVar2.a(str2, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController$finishWithResult$1", f = "HyprMXVastViewController.kt", i = {}, l = {534}, m = "invokeSuspend", n = {}, s = {})
    public static final class d extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;

        public d(Continuation<? super d> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return HyprMXVastViewController.this.new d(continuation);
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
                com.hyprmx.android.sdk.tracking.c cVar = HyprMXVastViewController.this.C;
                this.a = 1;
                if (cVar.m(this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController", f = "HyprMXVastViewController.kt", i = {0, 0}, l = {683}, m = "fireOMVerificationNotExecuted", n = {"this", "url"}, s = {"L$0", "L$2"})
    public static final class e extends ContinuationImpl {
        public HyprMXVastViewController a;
        public Iterator b;
        public String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public /* synthetic */ Object f4447d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f4449f;

        public e(Continuation<? super e> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f4447d = obj;
            this.f4449f |= Integer.MIN_VALUE;
            return HyprMXVastViewController.this.k(this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController$pauseVideo$2", f = "HyprMXVastViewController.kt", i = {}, l = {377}, m = "invokeSuspend", n = {}, s = {})
    public static final class f extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;

        public f(Continuation<? super f> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return HyprMXVastViewController.this.new f(continuation);
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
                com.hyprmx.android.sdk.tracking.c cVar = HyprMXVastViewController.this.C;
                this.a = 1;
                if (cVar.k(this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController$resumeVideo$2", f = "HyprMXVastViewController.kt", i = {}, l = {391}, m = "invokeSuspend", n = {}, s = {})
    public static final class g extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;

        public g(Continuation<? super g> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return HyprMXVastViewController.this.new g(continuation);
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
                HyprMXVastViewController hyprMXVastViewController = HyprMXVastViewController.this;
                this.a = 1;
                if (HyprMXVastViewController.a(hyprMXVastViewController, this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController$resumeVideo$4", f = "HyprMXVastViewController.kt", i = {}, l = {432}, m = "invokeSuspend", n = {}, s = {})
    public static final class h extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;

        public h(Continuation<? super h> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return HyprMXVastViewController.this.new h(continuation);
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
                com.hyprmx.android.sdk.tracking.c cVar = HyprMXVastViewController.this.C;
                this.a = 1;
                if (cVar.g(this) == coroutine_suspended) {
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

    public static final class i extends Lambda implements Function1<View, kotlin.v> {
        public i() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final kotlin.v invoke(View view) {
            View it = view;
            Intrinsics.checkNotNullParameter(it, "it");
            HyprMXVastViewController.this.n.K();
            return kotlin.v.a;
        }
    }

    public static final class j implements c.a {
        public j() {
        }

        @Override // com.hyprmx.android.sdk.graphics.c.a
        public final void a() {
            HyprMXVastViewController.this.d0().c();
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController$setupVideoControl$2$2$1", f = "HyprMXVastViewController.kt", i = {}, l = {475}, m = "invokeSuspend", n = {}, s = {})
    public static final class k extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;

        public k(Continuation<? super k> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return HyprMXVastViewController.this.new k(continuation);
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
                com.hyprmx.android.sdk.tracking.c cVar = HyprMXVastViewController.this.C;
                this.a = 1;
                if (cVar.c(this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController$setupVideoControl$3$1$1$1", f = "HyprMXVastViewController.kt", i = {}, l = {495}, m = "invokeSuspend", n = {}, s = {})
    public static final class l extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;

        public l(Continuation<? super l> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return HyprMXVastViewController.this.new l(continuation);
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
                HyprMXVastViewController hyprMXVastViewController = HyprMXVastViewController.this;
                com.hyprmx.android.sdk.analytics.d dVar = hyprMXVastViewController.z;
                String strB = hyprMXVastViewController.n.B();
                this.a = 1;
                if (dVar.a(strB, this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController$setupVideoControl$3$1$1$2", f = "HyprMXVastViewController.kt", i = {}, l = {496}, m = "invokeSuspend", n = {}, s = {})
    public static final class m extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;

        public m(Continuation<? super m> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return HyprMXVastViewController.this.new m(continuation);
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
                com.hyprmx.android.sdk.tracking.c cVar = HyprMXVastViewController.this.C;
                this.a = 1;
                if (cVar.h(this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController$showLearnMore$1", f = "HyprMXVastViewController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class n extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public n(Continuation<? super n> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return HyprMXVastViewController.this.new n(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((n) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.graphics.b bVar = HyprMXVastViewController.this.G;
            if (bVar != null) {
                bVar.setVisibility(0);
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController$startCatalogDurationTracking$1", f = "HyprMXVastViewController.kt", i = {}, l = {244}, m = "invokeSuspend", n = {}, s = {})
    public static final class o extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ float b;
        public final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ String f4450d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ HyprMXVastViewController f4451e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public o(float f2, String str, String str2, HyprMXVastViewController hyprMXVastViewController, Continuation<? super o> continuation) {
            super(2, continuation);
            this.b = f2;
            this.c = str;
            this.f4450d = str2;
            this.f4451e = hyprMXVastViewController;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new o(this.b, this.c, this.f4450d, this.f4451e, continuation);
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
                System.out.println((Object) ("startCatalogDurationTracking " + this.b + ' ' + this.c + ' ' + this.f4450d));
                HyprMXVastViewController hyprMXVastViewController = this.f4451e;
                com.hyprmx.android.sdk.tracking.c cVar = hyprMXVastViewController.C;
                com.hyprmx.android.sdk.vast.a aVar = new com.hyprmx.android.sdk.vast.a(hyprMXVastViewController.z, this.b, this.c, this.f4450d);
                this.a = 1;
                if (cVar.a(aVar, this) == coroutine_suspended) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HyprMXVastViewController(AppCompatActivity activity, Bundle bundle, com.hyprmx.android.sdk.api.data.a ad, MainCoroutineDispatcher dispatcher, com.hyprmx.android.sdk.analytics.d eventController, com.hyprmx.android.sdk.preload.n cacheController, HyprMXBaseViewController.a hyprMXBaseViewControllerListener, com.hyprmx.android.sdk.analytics.b clientErrorController, com.hyprmx.android.sdk.presentation.a activityResultListener, com.hyprmx.android.sdk.tracking.c trackingDelegate, com.hyprmx.android.sdk.om.g gVar, com.hyprmx.android.sdk.network.k networkController, com.hyprmx.android.sdk.powersavemode.a powerSaveMode, CoroutineScope scope, ThreadAssert threadAssert, com.hyprmx.android.sdk.utility.h0 internetConnectionDialog, com.hyprmx.android.sdk.network.i networkConnectionMonitor, com.hyprmx.android.sdk.webview.s webViewFactory, com.hyprmx.android.sdk.presentation.h eventPublisher, com.hyprmx.android.sdk.fullscreen.e fullScreenSharedConnector) {
        com.hyprmx.android.sdk.model.vast.a aVarA;
        super(activity, bundle, hyprMXBaseViewControllerListener, activityResultListener, powerSaveMode, webViewFactory, gVar, ad, scope, threadAssert, dispatcher, networkConnectionMonitor, internetConnectionDialog, eventPublisher, fullScreenSharedConnector, 483328);
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(eventController, "eventController");
        Intrinsics.checkNotNullParameter(cacheController, "cacheController");
        Intrinsics.checkNotNullParameter(hyprMXBaseViewControllerListener, "hyprMXBaseViewControllerListener");
        Intrinsics.checkNotNullParameter(clientErrorController, "clientErrorController");
        Intrinsics.checkNotNullParameter(activityResultListener, "activityResultListener");
        Intrinsics.checkNotNullParameter(trackingDelegate, "trackingDelegate");
        Intrinsics.checkNotNullParameter(networkController, "networkController");
        Intrinsics.checkNotNullParameter(powerSaveMode, "powerSaveMode");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(threadAssert, "assert");
        Intrinsics.checkNotNullParameter(internetConnectionDialog, "internetConnectionDialog");
        Intrinsics.checkNotNullParameter(networkConnectionMonitor, "networkConnectionMonitor");
        Intrinsics.checkNotNullParameter(webViewFactory, "webViewFactory");
        Intrinsics.checkNotNullParameter(eventPublisher, "eventPublisher");
        Intrinsics.checkNotNullParameter(fullScreenSharedConnector, "fullScreenSharedConnector");
        this.z = eventController;
        this.A = cacheController;
        this.B = clientErrorController;
        this.C = trackingDelegate;
        this.D = networkController;
        this.U = new ArrayList();
        threadAssert.runningOnMainThread();
        this.K = ad.getId();
        com.hyprmx.android.sdk.api.data.b bVarD = cacheController.d(ad.getId());
        String strB = bVarD.b();
        if (strB == null || (aVarA = bVarD.a()) == null) {
            return;
        }
        this.L = strB;
        this.V = aVarA;
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new m0(this, aVarA, null), 3, null);
        this.M = aVarA.a();
        this.U = aVarA.e();
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(com.hyprmx.android.sdk.activity.HyprMXVastViewController r10, kotlin.coroutines.Continuation r11) {
        /*
            Method dump skipped, instruction units count: 339
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.activity.HyprMXVastViewController.a(com.hyprmx.android.sdk.activity.HyprMXVastViewController, kotlin.coroutines.d):java.lang.Object");
    }

    public static final void a(HyprMXVastViewController this$0, int i2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.h.runningOnMainThread();
        if ((i2 == -3 || i2 == -2 || i2 == -1) && this$0.g0().isPlaying()) {
            HyprMXLog.d("Audio focus loss while playing video");
            this$0.h0();
        }
    }

    public static final void a(HyprMXVastViewController this$0, MediaPlayer mediaPlayer) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.P) {
            return;
        }
        this$0.P = true;
        BuildersKt__Builders_commonKt.launch$default(this$0, null, null, new n0(this$0, true, null), 3, null);
    }

    public static final void a(HyprMXVastViewController this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        BuildersKt__Builders_commonKt.launch$default(this$0, null, null, this$0.new k(null), 3, null);
        this$0.P = true;
        BuildersKt__Builders_commonKt.launch$default(this$0, null, null, new n0(this$0, false, null), 3, null);
    }

    public static final void a(HyprMXVastViewController this$0, VideoView videoView, MediaPlayer mediaPlayer) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(videoView, "$videoView");
        this$0.h.runningOnMainThread();
        this$0.W = true;
        videoView.setOnPreparedListener(null);
        BuildersKt__Builders_commonKt.launch$default(this$0, null, null, this$0.new a(null), 3, null);
    }

    public static final void a(HyprMXVastViewController this$0, VideoView videoView, View view) {
        com.hyprmx.android.sdk.graphics.c cVar;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(videoView, "$videoView");
        if (this$0.P || !videoView.isPlaying()) {
            if (this$0.P || videoView.isPlaying()) {
                return;
            }
            this$0.i0();
            return;
        }
        this$0.h.runningOnMainThread();
        int i2 = 4;
        if (this$0.d0().getVisibility() == 4) {
            i2 = 0;
            this$0.d0().setVisibility(0);
            cVar = this$0.F;
            if (cVar == null) {
                return;
            }
        } else {
            this$0.d0().setVisibility(4);
            cVar = this$0.F;
            if (cVar == null) {
                return;
            }
        }
        cVar.setVisibility(i2);
    }

    public static final void a(HyprMXVastViewController this$0, String url, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(url, "$url");
        if (this$0.P) {
            return;
        }
        Intrinsics.checkNotNullParameter(url, "url");
        this$0.n.b(url);
        BuildersKt__Builders_commonKt.launch$default(this$0, null, null, this$0.new l(null), 3, null);
        BuildersKt__Builders_commonKt.launch$default(this$0, null, null, this$0.new m(null), 3, null);
    }

    public static final boolean a(HyprMXVastViewController this$0, String mediaAssetURL, MediaPlayer mediaPlayer, int i2, int i3) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(mediaAssetURL, "$mediaAssetURL");
        HyprMXLog.e("There was an error trying to play the video.");
        BuildersKt__Builders_commonKt.launch$default(this$0, null, null, this$0.new b(null), 3, null);
        BuildersKt__Builders_commonKt.launch$default(this$0, null, null, this$0.new c(mediaAssetURL, null), 3, null);
        this$0.B.a(com.hyprmx.android.sdk.utility.s.HYPRErrorTypeVastPlayerError, "There was an error trying to play the video for ad id: " + this$0.K, 3);
        this$0.h.runningOnMainThread();
        Job job = this$0.R;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        Job job2 = this$0.Q;
        if (job2 != null) {
            Job.DefaultImpls.cancel$default(job2, (CancellationException) null, 1, (Object) null);
        }
        this$0.f("There was an error trying to play the video for ad id: " + this$0.K);
        return true;
    }

    public static final void b(final HyprMXVastViewController this$0, MediaPlayer mediaPlayer) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        HyprMXLog.d("Video prepared.  Setting seek location to " + this$0.O);
        if (Build.VERSION.SDK_INT >= 26) {
            mediaPlayer.seekTo(this$0.O, 3);
        } else {
            this$0.g0().seekTo(this$0.O);
        }
        mediaPlayer.setOnSeekCompleteListener(new MediaPlayer.OnSeekCompleteListener() { // from class: com.hyprmx.android.sdk.activity.h1
            @Override // android.media.MediaPlayer.OnSeekCompleteListener
            public final void onSeekComplete(MediaPlayer mediaPlayer2) {
                HyprMXVastViewController.c(this.a, mediaPlayer2);
            }
        });
    }

    public static final void c(HyprMXVastViewController this$0, MediaPlayer mediaPlayer) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        HyprMXLog.d("Seek completed.  Resuming video to position " + this$0.g0().getCurrentPosition() + '.');
        mediaPlayer.start();
    }

    @Override // com.hyprmx.android.sdk.activity.HyprMXBaseViewController
    public final void T() {
        this.h.runningOnMainThread();
        if (this.T) {
            return;
        }
        this.T = true;
        this.t.a(AndroidWebViewClient.BLANK_PAGE, (String) null);
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new d(null), 3, null);
        com.hyprmx.android.sdk.om.g gVar = this.f4441f;
        if (gVar != null) {
            gVar.a();
        }
        super.T();
    }

    @Override // com.hyprmx.android.sdk.activity.HyprMXBaseViewController
    public final void V() {
        if (this.V == null || this.L == null) {
            HyprMXLog.e("Ad state is not valid. The operation could not be completed.");
            this.B.a(com.hyprmx.android.sdk.utility.s.HYPRErrorTypeVastPlayerError, "Ad state is not valid. The operation could not be completed.", 4);
            Intrinsics.checkNotNullParameter("Ad state is not valid. The operation could not be completed.", "message");
            this.n.f("Ad state is not valid. The operation could not be completed.");
            return;
        }
        Object systemService = this.a.getApplicationContext().getSystemService("audio");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.media.AudioManager");
        this.I = (AudioManager) systemService;
        c0();
    }

    @Override // com.hyprmx.android.sdk.activity.HyprMXBaseViewController
    public final void W() {
        super.W();
    }

    @Override // com.hyprmx.android.sdk.activity.HyprMXBaseViewController
    public final void X() {
        f(false);
        if (this.E != null) {
            g0().stopPlayback();
            g0().setOnClickListener(null);
            g0().setOnErrorListener(null);
            g0().setOnCompletionListener(null);
            g0().setOnPreparedListener(null);
        }
        Job job = this.S;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        super.X();
    }

    @Override // com.hyprmx.android.sdk.activity.HyprMXBaseViewController
    public final void Y() {
        h0();
        super.Y();
    }

    @Override // com.hyprmx.android.sdk.activity.HyprMXBaseViewController
    public final void Z() {
        super.Z();
        i0();
    }

    @Override // com.hyprmx.android.sdk.jsAlertDialog.d
    public final void a(String script) {
        Intrinsics.checkNotNullParameter(script, "script");
        this.t.a("javascript:".concat(script), (String) null);
    }

    @Override // com.hyprmx.android.sdk.activity.HyprMXBaseViewController
    public final void b0() {
        super.b0();
        com.hyprmx.android.sdk.webview.f fVar = this.t;
        fVar.setTag(fVar.getClass().getSimpleName());
        this.t.setId(R.id.hyprmx_primary_web_view);
        RelativeLayout relativeLayoutU = U();
        com.hyprmx.android.sdk.webview.f fVar2 = this.t;
        this.h.runningOnMainThread();
        RelativeLayout.LayoutParams layoutParams = this.r;
        if (layoutParams == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adViewLayout");
            layoutParams = null;
        }
        relativeLayoutU.addView(fVar2, layoutParams);
        this.t.setVisibility(8);
    }

    public final void c0() {
        this.h.runningOnMainThread();
        this.J = new AudioManager.OnAudioFocusChangeListener() { // from class: com.hyprmx.android.sdk.activity.w0
            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public final void onAudioFocusChange(int i2) {
                HyprMXVastViewController.a(this.a, i2);
            }
        };
    }

    public final com.hyprmx.android.sdk.graphics.d d0() {
        com.hyprmx.android.sdk.graphics.d dVar = this.H;
        if (dVar != null) {
            return dVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("hyprMXVideoController");
        return null;
    }

    public final RelativeLayout.LayoutParams e0() {
        int iA = com.hyprmx.android.sdk.utility.w0.a(this.a);
        int i2 = (iA == 1 || iA == 9) ? 7 : 20;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(2, d0().getId());
        layoutParams.addRule(9);
        layoutParams.setMargins(com.hyprmx.android.sdk.utility.w.a(i2, this.a), 0, 0, com.hyprmx.android.sdk.utility.w.a(25, this.a));
        return layoutParams;
    }

    public final void f(boolean z) {
        this.h.runningOnMainThread();
        HyprMXLog.d("Monitoring audio focus change " + z);
        AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener = null;
        if (z) {
            AudioManager audioManager = this.I;
            if (audioManager != null) {
                AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener2 = this.J;
                if (onAudioFocusChangeListener2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("audioFocusListener");
                } else {
                    onAudioFocusChangeListener = onAudioFocusChangeListener2;
                }
                audioManager.requestAudioFocus(onAudioFocusChangeListener, 3, 1);
                return;
            }
            return;
        }
        AudioManager audioManager2 = this.I;
        if (audioManager2 != null) {
            AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener3 = this.J;
            if (onAudioFocusChangeListener3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("audioFocusListener");
            } else {
                onAudioFocusChangeListener = onAudioFocusChangeListener3;
            }
            audioManager2.abandonAudioFocus(onAudioFocusChangeListener);
        }
    }

    public final RelativeLayout.LayoutParams f0() {
        int iA = com.hyprmx.android.sdk.utility.w0.a(this.a);
        int i2 = (iA == 1 || iA == 9) ? 7 : 20;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(2, d0().getId());
        layoutParams.addRule(11);
        layoutParams.setMargins(0, 0, com.hyprmx.android.sdk.utility.w.a(i2, this.a), com.hyprmx.android.sdk.utility.w.a(25, this.a));
        return layoutParams;
    }

    public final VideoView g(final String str) {
        this.h.runningOnMainThread();
        final VideoView videoView = new VideoView(this.a.getApplicationContext());
        videoView.setTag(VideoView.class.getSimpleName());
        videoView.setId(R.id.hyprmx_video_view);
        videoView.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.hyprmx.android.sdk.activity.g1
            @Override // android.media.MediaPlayer.OnPreparedListener
            public final void onPrepared(MediaPlayer mediaPlayer) {
                HyprMXVastViewController.a(this.a, videoView, mediaPlayer);
            }
        });
        videoView.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.hyprmx.android.sdk.activity.y0
            @Override // android.media.MediaPlayer.OnCompletionListener
            public final void onCompletion(MediaPlayer mediaPlayer) {
                HyprMXVastViewController.a(this.a, mediaPlayer);
            }
        });
        U().setOnClickListener(new View.OnClickListener() { // from class: com.hyprmx.android.sdk.activity.z0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HyprMXVastViewController.a(this.a, videoView, view);
            }
        });
        videoView.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.hyprmx.android.sdk.activity.i1
            @Override // android.media.MediaPlayer.OnErrorListener
            public final boolean onError(MediaPlayer mediaPlayer, int i2, int i3) {
                return HyprMXVastViewController.a(this.a, str, mediaPlayer, i2, i3);
            }
        });
        return videoView;
    }

    public final VideoView g0() {
        VideoView videoView = this.E;
        if (videoView != null) {
            return videoView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("videoView");
        return null;
    }

    public final void h0() {
        this.h.runningOnMainThread();
        this.h.runningOnMainThread();
        Job job = this.R;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        Job job2 = this.Q;
        if (job2 != null) {
            Job.DefaultImpls.cancel$default(job2, (CancellationException) null, 1, (Object) null);
        }
        if (this.E == null) {
            HyprMXLog.e("VideoView has not been initialized when moving to the onPause state.");
            return;
        }
        if (this.P) {
            return;
        }
        f(false);
        if (g0().getCurrentPosition() > 0) {
            HyprMXLog.d("Pausing video at position " + g0().getCurrentPosition());
            this.O = g0().getCurrentPosition();
        }
        g0().pause();
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new f(null), 3, null);
    }

    public final void i0() {
        HyprMXLog.d("resumeVideo");
        this.h.runningOnMainThread();
        if (this.E == null) {
            BuildersKt__Builders_commonKt.launch$default(this, null, null, new g(null), 3, null);
            return;
        }
        if (this.k.q() || this.P || g0().isPlaying()) {
            return;
        }
        g0().setVisibility(0);
        this.h.runningOnMainThread();
        this.R = BuildersKt__Builders_commonKt.launch$default(this, null, null, new p0(this, null), 3, null);
        this.Q = BuildersKt__Builders_commonKt.launch$default(this, null, null, new q0(this, null), 3, null);
        if (this.O == 0 || g0().getCurrentPosition() > 0) {
            HyprMXLog.d("Resuming video at position " + g0().getCurrentPosition() + '.');
            g0().start();
        } else {
            g0().setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.hyprmx.android.sdk.activity.c1
                @Override // android.media.MediaPlayer.OnPreparedListener
                public final void onPrepared(MediaPlayer mediaPlayer) {
                    HyprMXVastViewController.b(this.a, mediaPlayer);
                }
            });
        }
        d0().setVisibility(4);
        com.hyprmx.android.sdk.graphics.c cVar = this.F;
        if (cVar != null) {
            cVar.setVisibility(4);
        }
        if (this.O > 0) {
            BuildersKt__Builders_commonKt.launch$default(this, null, null, new h(null), 3, null);
        }
        f(true);
    }

    public final void j0() {
        this.h.runningOnMainThread();
        com.hyprmx.android.sdk.model.vast.a aVar = this.V;
        if (aVar == null || this.L == null) {
            HyprMXLog.e("There was an error retrieving the vast ad.");
            return;
        }
        Context applicationContext = this.a.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "activity.applicationContext");
        com.hyprmx.android.sdk.graphics.d dVar = new com.hyprmx.android.sdk.graphics.d(applicationContext, this.n.t());
        Intrinsics.checkNotNullParameter(dVar, "<set-?>");
        this.H = dVar;
        d0().setCloseButtonOnClickListener(new i());
        d0().setVisibility(4);
        U().addView(d0(), d.a.a(this.a));
        com.hyprmx.android.sdk.model.vast.e eVar = aVar.b;
        long j2 = eVar.b;
        if (j2 != 0 && j2 < eVar.a) {
            com.hyprmx.android.sdk.graphics.c cVar = new com.hyprmx.android.sdk.graphics.c(this.a, (int) aVar.b.b, this.h);
            cVar.setSkipControllerListener(new j());
            cVar.setOnClickListener(new View.OnClickListener() { // from class: com.hyprmx.android.sdk.activity.j1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HyprMXVastViewController.a(this.a, view);
                }
            });
            U().addView(cVar, f0());
            this.F = cVar;
        }
        final String str = this.M;
        if (str != null) {
            com.hyprmx.android.sdk.graphics.b bVar = new com.hyprmx.android.sdk.graphics.b(this.a, this.h);
            bVar.setOnClickListener(new View.OnClickListener() { // from class: com.hyprmx.android.sdk.activity.e1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HyprMXVastViewController.a(this.a, str, view);
                }
            });
            U().addView(bVar, e0());
            this.G = bVar;
        }
    }

    /* JADX WARN: Path cross not found for [B:40:0x00de, B:43:0x00e4], limit reached: 55 */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00d1 -> B:38:0x00d4). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object k(kotlin.coroutines.Continuation<? super kotlin.v> r13) {
        /*
            Method dump skipped, instruction units count: 252
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.activity.HyprMXVastViewController.k(kotlin.coroutines.d):java.lang.Object");
    }

    @Override // com.hyprmx.android.sdk.activity.HyprMXBaseViewController, android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        super.onGlobalLayout();
        if (this.P || !this.W) {
            return;
        }
        com.hyprmx.android.sdk.graphics.b bVar = this.G;
        if (bVar != null) {
            bVar.setLayoutParams(e0());
        }
        com.hyprmx.android.sdk.graphics.c cVar = this.F;
        if (cVar != null) {
            cVar.setLayoutParams(f0());
        }
        com.hyprmx.android.sdk.graphics.d dVarD0 = d0();
        int i2 = com.hyprmx.android.sdk.graphics.d.f4548e;
        dVarD0.setLayoutParams(d.a.a(this.a));
    }

    @Override // com.hyprmx.android.sdk.activity.HyprMXBaseViewController, com.hyprmx.android.sdk.fullscreen.c
    public final void showLearnMore() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new n(null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.activity.HyprMXBaseViewController, com.hyprmx.android.sdk.fullscreen.c
    public final void startCatalogDurationTracking(float f2, String token, String viewingId) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(viewingId, "viewingId");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new o(f2, token, viewingId, this, null), 3, null);
    }
}
