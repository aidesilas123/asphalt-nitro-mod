package com.hyprmx.android.sdk.activity;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import com.hyprmx.android.R;
import com.hyprmx.android.sdk.activity.HyprMXBaseViewController;
import com.hyprmx.android.sdk.footer.FooterContract;
import com.hyprmx.android.sdk.footer.FooterFragment;
import com.hyprmx.android.sdk.header.WebTrafficHeaderFragment;
import com.hyprmx.android.sdk.p002assert.ThreadAssert;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005¨\u0006\u0006"}, d2 = {"Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController;", "Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;", "Lcom/hyprmx/android/sdk/footer/FooterContract$URLPresenter;", "Lcom/hyprmx/android/sdk/footer/FooterContract$NavigationPresenter;", "Lcom/hyprmx/android/sdk/header/b;", "Landroidx/lifecycle/LifecycleObserver;", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1})
public final class HyprMXWebTrafficViewController extends HyprMXBaseViewController implements FooterContract.URLPresenter, FooterContract.NavigationPresenter, com.hyprmx.android.sdk.header.b {
    public final com.hyprmx.android.sdk.utility.f0 A;
    public boolean B;
    public FooterFragment C;
    public FooterContract.Presenter D;
    public WebTrafficHeaderFragment E;
    public com.hyprmx.android.sdk.header.c F;
    public RelativeLayout G;
    public RelativeLayout H;
    public Job I;
    public int J;
    public final com.hyprmx.android.sdk.api.data.u z;

    @DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXWebTrafficViewController$loadThankYouPage$2", f = "HyprMXWebTrafficViewController.kt", i = {}, l = {171}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, Continuation<? super a> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return HyprMXWebTrafficViewController.this.new a(this.c, continuation);
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
                HyprMXWebTrafficViewController.this.t.a.stopLoading();
                HyprMXWebTrafficViewController.this.c0().a();
                HyprMXWebTrafficViewController hyprMXWebTrafficViewController = HyprMXWebTrafficViewController.this;
                this.a = 1;
                if (HyprMXWebTrafficViewController.a(hyprMXWebTrafficViewController) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            HyprMXWebTrafficViewController.this.t.a(this.c, (String) null);
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXWebTrafficViewController$loadWebTrafficPage$2", f = "HyprMXWebTrafficViewController.kt", i = {}, l = {215}, m = "invokeSuspend", n = {}, s = {})
    public static final class b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ int b;
        public final /* synthetic */ HyprMXWebTrafficViewController c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ String f4452d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i, HyprMXWebTrafficViewController hyprMXWebTrafficViewController, String str, Continuation<? super b> continuation) {
            super(2, continuation);
            this.b = i;
            this.c = hyprMXWebTrafficViewController;
            this.f4452d = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new b(this.b, this.c, this.f4452d, continuation);
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
                HyprMXLog.d("Open Web Page: " + this.b);
                this.c.c0().b(this.b);
                HyprMXWebTrafficViewController hyprMXWebTrafficViewController = this.c;
                this.a = 1;
                if (HyprMXWebTrafficViewController.a(hyprMXWebTrafficViewController) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            FooterContract.Presenter presenter = null;
            this.c.t.a(this.f4452d, (String) null);
            this.c.t.requestFocus();
            this.c.c0().showProgressSpinner();
            HyprMXWebTrafficViewController hyprMXWebTrafficViewController2 = this.c;
            if (hyprMXWebTrafficViewController2.z.b.f4534f) {
                FooterContract.Presenter presenter2 = hyprMXWebTrafficViewController2.D;
                if (presenter2 != null) {
                    presenter = presenter2;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("footerPresenter");
                }
                presenter.setVisible(false);
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXWebTrafficViewController$pauseCountDownTimer$2", f = "HyprMXWebTrafficViewController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class c extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public c(Continuation<? super c> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return HyprMXWebTrafficViewController.this.new c(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((c) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            HyprMXLog.d("Pausing Countdown Timer (" + HyprMXWebTrafficViewController.this.J + ')');
            Job job = HyprMXWebTrafficViewController.this.I;
            if (job != null) {
                Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXWebTrafficViewController$resumeCountDownTimer$2", f = "HyprMXWebTrafficViewController.kt", i = {}, l = {369}, m = "invokeSuspend", n = {}, s = {})
    public static final class d extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;

        public d(Continuation<? super d> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return HyprMXWebTrafficViewController.this.new d(continuation);
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
                HyprMXLog.d("Resuming Countdown Timer (" + HyprMXWebTrafficViewController.this.J + ')');
                HyprMXWebTrafficViewController hyprMXWebTrafficViewController = HyprMXWebTrafficViewController.this;
                int i2 = hyprMXWebTrafficViewController.J;
                this.a = 1;
                if (hyprMXWebTrafficViewController.b(i2, this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXWebTrafficViewController$setBackButtonEnabled$2", f = "HyprMXWebTrafficViewController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class e extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public final /* synthetic */ boolean a;
        public final /* synthetic */ HyprMXWebTrafficViewController b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(HyprMXWebTrafficViewController hyprMXWebTrafficViewController, Continuation continuation, boolean z) {
            super(2, continuation);
            this.a = z;
            this.b = hyprMXWebTrafficViewController;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new e(this.b, continuation, this.a);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((e) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            HyprMXLog.d("Updating back navigation to (" + this.a + ')');
            FooterContract.Presenter presenter = this.b.D;
            if (presenter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("footerPresenter");
                presenter = null;
            }
            presenter.enableBackwardNavigation(this.a);
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXWebTrafficViewController$setClosable$2", f = "HyprMXWebTrafficViewController.kt", i = {}, l = {176}, m = "invokeSuspend", n = {}, s = {})
    public static final class f extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ boolean c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(Continuation continuation, boolean z) {
            super(2, continuation);
            this.c = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return HyprMXWebTrafficViewController.this.new f(continuation, this.c);
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
                HyprMXWebTrafficViewController hyprMXWebTrafficViewController = HyprMXWebTrafficViewController.this;
                boolean z = this.c;
                this.a = 1;
                if (HyprMXWebTrafficViewController.a(hyprMXWebTrafficViewController, this, z) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            if (this.c) {
                HyprMXWebTrafficViewController.this.c0().a();
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXWebTrafficViewController$setForwardButtonEnabled$2", f = "HyprMXWebTrafficViewController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class g extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public final /* synthetic */ boolean a;
        public final /* synthetic */ HyprMXWebTrafficViewController b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(HyprMXWebTrafficViewController hyprMXWebTrafficViewController, Continuation continuation, boolean z) {
            super(2, continuation);
            this.a = z;
            this.b = hyprMXWebTrafficViewController;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new g(this.b, continuation, this.a);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((g) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            HyprMXLog.d("Updating forward navigation to (" + this.a + ')');
            FooterContract.Presenter presenter = this.b.D;
            if (presenter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("footerPresenter");
                presenter = null;
            }
            presenter.enableForwardNavigation(this.a);
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXWebTrafficViewController$showFinishButton$2", f = "HyprMXWebTrafficViewController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class h extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public h(Continuation<? super h> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return HyprMXWebTrafficViewController.this.new h(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((h) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            HyprMXWebTrafficViewController.this.c0().showFinishButton();
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXWebTrafficViewController$showNextButton$2", f = "HyprMXWebTrafficViewController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class i extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public i(Continuation<? super i> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return HyprMXWebTrafficViewController.this.new i(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((i) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            HyprMXWebTrafficViewController.this.c0().showNextButton();
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXWebTrafficViewController$showWebTrafficHeader$2", f = "HyprMXWebTrafficViewController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class j extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public final /* synthetic */ HyprMXWebTrafficViewController a;
        public final /* synthetic */ int b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(int i, HyprMXWebTrafficViewController hyprMXWebTrafficViewController, Continuation continuation) {
            super(2, continuation);
            this.a = hyprMXWebTrafficViewController;
            this.b = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new j(this.b, this.a, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((j) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            this.a.c0().a(this.b);
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXWebTrafficViewController$startCountDownTimer$2", f = "HyprMXWebTrafficViewController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class k extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public /* synthetic */ Object a;
        public final /* synthetic */ int b;
        public final /* synthetic */ HyprMXWebTrafficViewController c;

        @DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXWebTrafficViewController$startCountDownTimer$2$1", f = "HyprMXWebTrafficViewController.kt", i = {0}, l = {241}, m = "invokeSuspend", n = {"$this$launch"}, s = {"L$0"})
        public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
            public int a;
            public /* synthetic */ Object b;
            public final /* synthetic */ HyprMXWebTrafficViewController c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(HyprMXWebTrafficViewController hyprMXWebTrafficViewController, Continuation<? super a> continuation) {
                super(2, continuation);
                this.c = hyprMXWebTrafficViewController;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
                a aVar = new a(this.c, continuation);
                aVar.b = obj;
                return aVar;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
                return ((a) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x002b  */
            /* JADX WARN: Removed duplicated region for block: B:16:0x003e  */
            /* JADX WARN: Removed duplicated region for block: B:18:0x0041  */
            /* JADX WARN: Removed duplicated region for block: B:22:0x0063  */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0035 -> B:14:0x0038). Please report as a decompilation issue!!! */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r6) {
                /*
                    r5 = this;
                    java.lang.Object r0 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
                    int r1 = r5.a
                    r2 = 1
                    if (r1 == 0) goto L1c
                    if (r1 != r2) goto L14
                    java.lang.Object r1 = r5.b
                    kotlinx.coroutines.s r1 = (kotlinx.coroutines.CoroutineScope) r1
                    kotlin.ResultKt.throwOnFailure(r6)
                    r6 = r5
                    goto L38
                L14:
                    java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                    java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                    r6.<init>(r0)
                    throw r6
                L1c:
                    kotlin.ResultKt.throwOnFailure(r6)
                    java.lang.Object r6 = r5.b
                    kotlinx.coroutines.s r6 = (kotlinx.coroutines.CoroutineScope) r6
                    r1 = r6
                    r6 = r5
                L25:
                    com.hyprmx.android.sdk.activity.HyprMXWebTrafficViewController r3 = r6.c
                    int r3 = r3.J
                    if (r3 <= 0) goto L63
                    r6.b = r1
                    r6.a = r2
                    r3 = 1000(0x3e8, double:4.94E-321)
                    java.lang.Object r3 = kotlinx.coroutines.DelayKt.delay(r3, r6)
                    if (r3 != r0) goto L38
                    return r0
                L38:
                    boolean r3 = kotlinx.coroutines.CoroutineScopeKt.isActive(r1)
                    if (r3 != 0) goto L41
                    kotlin.v r6 = kotlin.v.a
                    return r6
                L41:
                    com.hyprmx.android.sdk.activity.HyprMXWebTrafficViewController r3 = r6.c
                    int r4 = r3.J
                    int r4 = r4 + (-1)
                    r3.J = r4
                    if (r4 > 0) goto L58
                    java.lang.String r3 = "CountDownTimer fired!"
                    com.hyprmx.android.sdk.utility.HyprMXLog.d(r3)
                    com.hyprmx.android.sdk.activity.HyprMXWebTrafficViewController r3 = r6.c
                    com.hyprmx.android.sdk.fullscreen.e r3 = r3.n
                    r3.O()
                    goto L25
                L58:
                    java.lang.String r3 = "updateTimerView"
                    com.hyprmx.android.sdk.utility.HyprMXLog.d(r3)
                    com.hyprmx.android.sdk.activity.HyprMXWebTrafficViewController r3 = r6.c
                    r3.d0()
                    goto L25
                L63:
                    kotlin.v r6 = kotlin.v.a
                    return r6
                */
                throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.activity.HyprMXWebTrafficViewController.k.a.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(int i, HyprMXWebTrafficViewController hyprMXWebTrafficViewController, Continuation<? super k> continuation) {
            super(2, continuation);
            this.b = i;
            this.c = hyprMXWebTrafficViewController;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            k kVar = new k(this.b, this.c, continuation);
            kVar.a = obj;
            return kVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((k) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:9:0x0034  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
                kotlin.ResultKt.throwOnFailure(r7)
                java.lang.Object r7 = r6.a
                r0 = r7
                kotlinx.coroutines.s r0 = (kotlinx.coroutines.CoroutineScope) r0
                java.lang.StringBuilder r7 = new java.lang.StringBuilder
                java.lang.String r1 = "Starting Countdown Timer ("
                r7.<init>(r1)
                int r1 = r6.b
                r7.append(r1)
                r1 = 41
                r7.append(r1)
                java.lang.String r7 = r7.toString()
                com.hyprmx.android.sdk.utility.HyprMXLog.d(r7)
                com.hyprmx.android.sdk.activity.HyprMXWebTrafficViewController r7 = r6.c
                kotlinx.coroutines.Job r7 = r7.I
                if (r7 == 0) goto L34
                boolean r7 = r7.d()
                r1 = 1
                if (r7 != r1) goto L31
                goto L32
            L31:
                r1 = 0
            L32:
                if (r1 == 0) goto L4e
            L34:
                java.lang.String r7 = "Starting count down timer"
                com.hyprmx.android.sdk.utility.HyprMXLog.d(r7)
                com.hyprmx.android.sdk.activity.HyprMXWebTrafficViewController r7 = r6.c
                int r1 = r6.b
                r7.J = r1
                com.hyprmx.android.sdk.activity.HyprMXWebTrafficViewController$k$a r3 = new com.hyprmx.android.sdk.activity.HyprMXWebTrafficViewController$k$a
                r1 = 0
                r3.<init>(r7, r1)
                r2 = 0
                r4 = 3
                r5 = 0
                kotlinx.coroutines.Job r0 = kotlinx.coroutines.BuildersKt.launch$default(r0, r1, r2, r3, r4, r5)
                r7.I = r0
            L4e:
                kotlin.v r7 = kotlin.v.a
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.activity.HyprMXWebTrafficViewController.k.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXWebTrafficViewController$startOMSession$2", f = "HyprMXWebTrafficViewController.kt", i = {}, l = {322}, m = "invokeSuspend", n = {}, s = {})
    public static final class l extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(String str, Continuation<? super l> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return HyprMXWebTrafficViewController.this.new l(this.c, continuation);
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
                HyprMXWebTrafficViewController hyprMXWebTrafficViewController = HyprMXWebTrafficViewController.this;
                String str = this.c;
                this.a = 1;
                if (HyprMXWebTrafficViewController.super.h(str, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            HyprMXWebTrafficViewController.this.B = true;
            return kotlin.v.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HyprMXWebTrafficViewController(AppCompatActivity activity, Bundle bundle, String distributorId, String userId, com.hyprmx.android.sdk.api.data.u ad, HyprMXBaseViewController.a viewControllerListener, com.hyprmx.android.sdk.analytics.d eventController, com.hyprmx.android.sdk.utility.f0 imageCacheManager, com.hyprmx.android.sdk.webview.s webViewFactory, com.hyprmx.android.sdk.presentation.a activityResultListener, com.hyprmx.android.sdk.om.g gVar, com.hyprmx.android.sdk.powersavemode.a powerSaveMode, ThreadAssert threadAssert, CoroutineScope scope, com.hyprmx.android.sdk.network.i networkConnectionMonitor, com.hyprmx.android.sdk.utility.h0 internetConnectionDialog, com.hyprmx.android.sdk.presentation.h eventPublisher, com.hyprmx.android.sdk.fullscreen.e fullScreenSharedConnector) {
        super(activity, bundle, viewControllerListener, activityResultListener, powerSaveMode, webViewFactory, gVar, ad, scope, threadAssert, null, networkConnectionMonitor, internetConnectionDialog, eventPublisher, fullScreenSharedConnector, 484352);
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(distributorId, "distributorId");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(viewControllerListener, "viewControllerListener");
        Intrinsics.checkNotNullParameter(eventController, "eventController");
        Intrinsics.checkNotNullParameter(imageCacheManager, "imageCacheManager");
        Intrinsics.checkNotNullParameter(webViewFactory, "webViewFactory");
        Intrinsics.checkNotNullParameter(activityResultListener, "activityResultListener");
        Intrinsics.checkNotNullParameter(powerSaveMode, "powerSaveMode");
        Intrinsics.checkNotNullParameter(threadAssert, "assert");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(networkConnectionMonitor, "networkConnectionMonitor");
        Intrinsics.checkNotNullParameter(internetConnectionDialog, "internetConnectionDialog");
        Intrinsics.checkNotNullParameter(eventPublisher, "eventPublisher");
        Intrinsics.checkNotNullParameter(fullScreenSharedConnector, "fullScreenSharedConnector");
        this.z = ad;
        this.A = imageCacheManager;
    }

    public static final /* synthetic */ Object a(HyprMXWebTrafficViewController hyprMXWebTrafficViewController, Continuation continuation, boolean z) {
        return super.c(z, (Continuation<? super kotlin.v>) continuation);
    }

    public static final kotlin.v a(HyprMXWebTrafficViewController hyprMXWebTrafficViewController) {
        ViewGroup.LayoutParams layoutParams = hyprMXWebTrafficViewController.t.getLayoutParams();
        RelativeLayout relativeLayout = hyprMXWebTrafficViewController.G;
        RelativeLayout relativeLayout2 = null;
        if (relativeLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webTrafficContainer");
            relativeLayout = null;
        }
        relativeLayout.removeView(hyprMXWebTrafficViewController.t);
        if (hyprMXWebTrafficViewController.B) {
            hyprMXWebTrafficViewController.B = false;
            BuildersKt__Builders_commonKt.launch$default(hyprMXWebTrafficViewController, null, null, new s0(hyprMXWebTrafficViewController.t, null), 3, null);
        } else {
            hyprMXWebTrafficViewController.t.a.stopLoading();
            hyprMXWebTrafficViewController.t.c();
        }
        Context baseContext = hyprMXWebTrafficViewController.a.getBaseContext();
        Intrinsics.checkNotNullExpressionValue(baseContext, "activity.baseContext");
        com.hyprmx.android.sdk.webview.f fVar = new com.hyprmx.android.sdk.webview.f(baseContext, null, null, 30);
        fVar.b(hyprMXWebTrafficViewController.n.a(), hyprMXWebTrafficViewController.f4442g.a());
        fVar.setContainingActivity(hyprMXWebTrafficViewController.a);
        Intrinsics.checkNotNullParameter(fVar, "<set-?>");
        hyprMXWebTrafficViewController.t = fVar;
        RelativeLayout relativeLayout3 = hyprMXWebTrafficViewController.G;
        if (relativeLayout3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webTrafficContainer");
        } else {
            relativeLayout2 = relativeLayout3;
        }
        relativeLayout2.addView(hyprMXWebTrafficViewController.t, layoutParams);
        return kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.activity.HyprMXBaseViewController
    public final void X() {
        if (this.t.getParent() != null) {
            RelativeLayout relativeLayout = this.G;
            if (relativeLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("webTrafficContainer");
                relativeLayout = null;
            }
            relativeLayout.removeView(this.t);
        }
        super.X();
    }

    @Override // com.hyprmx.android.sdk.activity.HyprMXBaseViewController, com.hyprmx.android.sdk.fullscreen.c
    public final Object a(boolean z, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new g(this, null, z), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.activity.HyprMXBaseViewController
    public final void a(Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(savedInstanceState, "savedInstanceState");
        Intrinsics.checkNotNullParameter(savedInstanceState, "savedInstanceState");
        this.n.w();
    }

    @Override // com.hyprmx.android.sdk.jsAlertDialog.d
    public final void a(String script) {
        Intrinsics.checkNotNullParameter(script, "script");
        this.t.a("javascript:".concat(script), (String) null);
    }

    @Override // com.hyprmx.android.sdk.activity.HyprMXBaseViewController, com.hyprmx.android.sdk.fullscreen.c
    public final Object b(int i2, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new k(i2, this, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.activity.HyprMXBaseViewController, com.hyprmx.android.sdk.fullscreen.c
    public final Object b(String str, int i2, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new b(i2, this, str, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.activity.HyprMXBaseViewController, com.hyprmx.android.sdk.fullscreen.c
    public final Object b(boolean z, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new e(this, null, z), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.activity.HyprMXBaseViewController
    public final void b0() {
        FooterFragment footerFragment;
        super.b0();
        LayoutInflater layoutInflater = this.a.getLayoutInflater();
        Intrinsics.checkNotNullExpressionValue(layoutInflater, "activity.layoutInflater");
        View viewFindViewById = layoutInflater.inflate(R.layout.hyprmx_web_traffic, (ViewGroup) U(), true).findViewById(R.id.hyprmx_webtraffic);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById, "webTrafficRootLayout.fin…d(R.id.hyprmx_webtraffic)");
        RelativeLayout relativeLayout = (RelativeLayout) viewFindViewById;
        this.H = relativeLayout;
        WebTrafficHeaderFragment webTrafficHeaderFragment = null;
        if (relativeLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webTrafficLayout");
            relativeLayout = null;
        }
        View viewFindViewById2 = relativeLayout.findViewById(R.id.webtraffic_container);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById2, "webTrafficLayout.findVie….id.webtraffic_container)");
        RelativeLayout relativeLayout2 = (RelativeLayout) viewFindViewById2;
        this.G = relativeLayout2;
        if (relativeLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webTrafficContainer");
            relativeLayout2 = null;
        }
        View viewFindViewById3 = relativeLayout2.findViewById(R.id.webview_stub);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById3, "webTrafficContainer.find…ewById(R.id.webview_stub)");
        ViewGroup.LayoutParams layoutParams = viewFindViewById3.getLayoutParams();
        RelativeLayout relativeLayout3 = this.G;
        if (relativeLayout3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webTrafficContainer");
            relativeLayout3 = null;
        }
        relativeLayout3.removeView(viewFindViewById3);
        RelativeLayout relativeLayout4 = this.G;
        if (relativeLayout4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webTrafficContainer");
            relativeLayout4 = null;
        }
        relativeLayout4.addView(this.t, layoutParams);
        RelativeLayout relativeLayout5 = this.H;
        if (relativeLayout5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webTrafficLayout");
            relativeLayout5 = null;
        }
        View viewFindViewById4 = relativeLayout5.findViewById(R.id.offer_container);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById4, "webTrafficLayout.findVie…yId(R.id.offer_container)");
        RelativeLayout relativeLayout6 = this.H;
        if (relativeLayout6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webTrafficLayout");
            relativeLayout6 = null;
        }
        View viewFindViewById5 = relativeLayout6.findViewById(R.id.fullScreenVideoContainer);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById5, "webTrafficLayout.findVie…fullScreenVideoContainer)");
        Fragment fragmentFindFragmentById = this.a.getSupportFragmentManager().findFragmentById(R.id.hyprmx_footer_fragment);
        Intrinsics.checkNotNull(fragmentFindFragmentById, "null cannot be cast to non-null type com.hyprmx.android.sdk.footer.FooterFragment");
        this.C = (FooterFragment) fragmentFindFragmentById;
        Fragment fragmentFindFragmentById2 = this.a.getSupportFragmentManager().findFragmentById(R.id.header_fragment);
        Intrinsics.checkNotNull(fragmentFindFragmentById2, "null cannot be cast to non-null type com.hyprmx.android.sdk.header.WebTrafficHeaderFragment");
        this.E = (WebTrafficHeaderFragment) fragmentFindFragmentById2;
        com.hyprmx.android.sdk.footer.a aVar = this.z.b;
        FooterFragment footerFragment2 = this.C;
        if (footerFragment2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("footerFragment");
            footerFragment = null;
        } else {
            footerFragment = footerFragment2;
        }
        com.hyprmx.android.sdk.footer.d dVar = new com.hyprmx.android.sdk.footer.d(this, this, aVar, footerFragment, true, this.A);
        Intrinsics.checkNotNullParameter(dVar, "<set-?>");
        this.D = dVar;
        com.hyprmx.android.sdk.header.a aVar2 = this.z.a;
        WebTrafficHeaderFragment webTrafficHeaderFragment2 = this.E;
        if (webTrafficHeaderFragment2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webTrafficHeaderFragment");
        } else {
            webTrafficHeaderFragment = webTrafficHeaderFragment2;
        }
        com.hyprmx.android.sdk.header.e eVar = new com.hyprmx.android.sdk.header.e(aVar2, webTrafficHeaderFragment, this.n.t(), this);
        Intrinsics.checkNotNullParameter(eVar, "<set-?>");
        this.F = eVar;
    }

    @Override // com.hyprmx.android.sdk.activity.HyprMXBaseViewController, com.hyprmx.android.sdk.fullscreen.c
    public final Object c(int i2, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new j(i2, this, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.activity.HyprMXBaseViewController, com.hyprmx.android.sdk.fullscreen.c
    public final Object c(boolean z, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new f(null, z), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.header.b
    public final void c() {
        this.n.H();
    }

    public final com.hyprmx.android.sdk.header.c c0() {
        com.hyprmx.android.sdk.header.c cVar = this.F;
        if (cVar != null) {
            return cVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("webTrafficHeaderPresenter");
        return null;
    }

    @Override // com.hyprmx.android.sdk.header.b
    public final void d() {
        this.n.I();
    }

    public final void d0() {
        String str;
        StringBuilder sb = new StringBuilder();
        int i2 = this.J;
        int i3 = i2 % 60;
        int i4 = (i2 - i3) / 60;
        int i5 = i4 % 60;
        int i6 = (i4 - i5) / 60;
        if (i6 > 0) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.a;
            str = String.format(Locale.US, "%d:%2d:%02d", Arrays.copyOf(new Object[]{Integer.valueOf(i6), Integer.valueOf(i5), Integer.valueOf(i3)}, 3));
        } else {
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.a;
            Locale locale = Locale.US;
            str = i5 > 0 ? String.format(locale, "%d:%02d", Arrays.copyOf(new Object[]{Integer.valueOf(i5), Integer.valueOf(i3)}, 2)) : String.format(locale, ":%02d", Arrays.copyOf(new Object[]{Integer.valueOf(i3)}, 1));
        }
        Intrinsics.checkNotNullExpressionValue(str, "format(locale, format, *args)");
        sb.append(str);
        com.hyprmx.android.sdk.header.c cVarC0 = c0();
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "b.toString()");
        cVarC0.a(string);
    }

    @Override // com.hyprmx.android.sdk.footer.FooterContract.NavigationPresenter
    public final void didTapBack() {
        this.t.a.goBack();
    }

    @Override // com.hyprmx.android.sdk.footer.FooterContract.NavigationPresenter
    public final void didTapForward() {
        this.t.a.goForward();
    }

    @Override // com.hyprmx.android.sdk.footer.FooterContract.URLPresenter
    public final void didTapURL(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        HyprMXLog.d("did tap url " + url);
        Intrinsics.checkNotNullParameter(url, "url");
        this.n.b(url);
    }

    @Override // com.hyprmx.android.sdk.activity.HyprMXBaseViewController, com.hyprmx.android.sdk.fullscreen.c
    public final Object e(Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new d(null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.activity.HyprMXBaseViewController, com.hyprmx.android.sdk.fullscreen.c
    public final Object f(Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new i(null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.header.b
    public final void f() {
        this.n.u();
    }

    @Override // com.hyprmx.android.sdk.activity.HyprMXBaseViewController, com.hyprmx.android.sdk.fullscreen.c
    public final Object g(String str, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new a(str, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.activity.HyprMXBaseViewController, com.hyprmx.android.sdk.fullscreen.c
    public final Object g(Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new h(null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.activity.HyprMXBaseViewController, com.hyprmx.android.sdk.fullscreen.c
    public final Object h(String str, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new l(str, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.activity.HyprMXBaseViewController, com.hyprmx.android.sdk.fullscreen.c
    public final Object h(Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new c(null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }
}
