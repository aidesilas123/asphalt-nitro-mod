package kotlinx.coroutines;

import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.drive.DriveFile;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancelHandler;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import kotlinx.coroutines.internal.Symbol;

/* JADX INFO: renamed from: kotlinx.coroutines.i, reason: from Kotlin metadata */
/* JADX INFO: compiled from: CancellableContinuationImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000Ò\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0011\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u00032\u00060\u0004j\u0002`\u00052\u00020\u0006B\u001b\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\u0012\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010\u0012H\u0002J\u0018\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\b\u00102\u001a\u0004\u0018\u000103J\u001a\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002042\b\u00102\u001a\u0004\u0018\u000103H\u0002J\u0017\u00105\u001a\u00020/2\f\u00106\u001a\b\u0012\u0004\u0012\u00020/07H\u0082\bJ1\u00108\u001a\u00020/2!\u00109\u001a\u001d\u0012\u0013\u0012\u001103¢\u0006\f\b;\u0012\b\b<\u0012\u0004\b\b(2\u0012\u0004\u0012\u00020/0:2\u0006\u00102\u001a\u000203J\u001e\u0010=\u001a\u00020/2\n\u0010>\u001a\u0006\u0012\u0002\b\u00030?2\b\u00102\u001a\u0004\u0018\u000103H\u0002J\u0012\u0010@\u001a\u00020\u001d2\b\u00102\u001a\u0004\u0018\u000103H\u0016J\u001f\u0010A\u001a\u00020/2\b\u0010B\u001a\u0004\u0018\u00010\u00122\u0006\u00102\u001a\u000203H\u0010¢\u0006\u0002\bCJ\u0010\u0010D\u001a\u00020\u001d2\u0006\u00102\u001a\u000203H\u0002J\u0010\u0010E\u001a\u00020/2\u0006\u0010F\u001a\u00020\u0012H\u0016J\r\u0010G\u001a\u00020/H\u0000¢\u0006\u0002\bHJ\b\u0010I\u001a\u00020/H\u0002J\u0010\u0010J\u001a\u00020/2\u0006\u0010K\u001a\u00020\nH\u0002J\u0010\u0010L\u001a\u0002032\u0006\u0010M\u001a\u00020NH\u0016J\u0019\u0010O\u001a\u0004\u0018\u0001032\b\u0010$\u001a\u0004\u0018\u00010\u0012H\u0010¢\u0006\u0002\bPJ\n\u0010Q\u001a\u0004\u0018\u00010\u0012H\u0001J\u0010\u0010R\u001a\n\u0018\u00010Sj\u0004\u0018\u0001`TH\u0016J\u001f\u0010U\u001a\u0002H\u0001\"\u0004\b\u0001\u0010\u00012\b\u0010$\u001a\u0004\u0018\u00010\u0012H\u0010¢\u0006\u0004\bV\u0010WJ\b\u0010X\u001a\u00020/H\u0016J\n\u0010Y\u001a\u0004\u0018\u00010\u0010H\u0002J1\u0010Z\u001a\u00020/2'\u00100\u001a#\u0012\u0015\u0012\u0013\u0018\u000103¢\u0006\f\b;\u0012\b\b<\u0012\u0004\b\b(2\u0012\u0004\u0012\u00020/0:j\u0002`[H\u0016J\u001c\u0010Z\u001a\u00020/2\n\u0010>\u001a\u0006\u0012\u0002\b\u00030?2\u0006\u0010\\\u001a\u00020\nH\u0016J\u0010\u0010]\u001a\u00020/2\u0006\u00100\u001a\u00020\u0012H\u0002J\u0015\u0010^\u001a\u00020/2\u0006\u00100\u001a\u000201H\u0000¢\u0006\u0002\b_J\b\u0010`\u001a\u00020\u001dH\u0002J\u001a\u0010a\u001a\u00020/2\u0006\u00100\u001a\u00020\u00122\b\u0010$\u001a\u0004\u0018\u00010\u0012H\u0002J\b\u0010b\u001a\u00020(H\u0014J\u0015\u0010c\u001a\u00020/2\u0006\u00102\u001a\u000203H\u0000¢\u0006\u0002\bdJ\r\u0010e\u001a\u00020/H\u0000¢\u0006\u0002\bfJ\b\u0010g\u001a\u00020\u001dH\u0001J:\u0010h\u001a\u00020/2\u0006\u0010i\u001a\u00028\u00002#\u00109\u001a\u001f\u0012\u0013\u0012\u001103¢\u0006\f\b;\u0012\b\b<\u0012\u0004\b\b(2\u0012\u0004\u0012\u00020/\u0018\u00010:H\u0016¢\u0006\u0002\u0010jJA\u0010k\u001a\u00020/2\b\u0010-\u001a\u0004\u0018\u00010\u00122\u0006\u0010\t\u001a\u00020\n2%\b\u0002\u00109\u001a\u001f\u0012\u0013\u0012\u001103¢\u0006\f\b;\u0012\b\b<\u0012\u0004\b\b(2\u0012\u0004\u0012\u00020/\u0018\u00010:H\u0002J\u001b\u0010l\u001a\u00020/2\f\u0010m\u001a\b\u0012\u0004\u0012\u00028\u00000nH\u0016¢\u0006\u0002\u0010oJS\u0010p\u001a\u0004\u0018\u00010\u00122\u0006\u0010$\u001a\u00020q2\b\u0010-\u001a\u0004\u0018\u00010\u00122\u0006\u0010\t\u001a\u00020\n2#\u00109\u001a\u001f\u0012\u0013\u0012\u001103¢\u0006\f\b;\u0012\b\b<\u0012\u0004\b\b(2\u0012\u0004\u0012\u00020/\u0018\u00010:2\b\u0010r\u001a\u0004\u0018\u00010\u0012H\u0002J\u000f\u0010s\u001a\u0004\u0018\u00010\u0012H\u0010¢\u0006\u0002\btJ\b\u0010u\u001a\u00020(H\u0016J\b\u0010v\u001a\u00020\u001dH\u0002J!\u0010v\u001a\u0004\u0018\u00010\u00122\u0006\u0010i\u001a\u00028\u00002\b\u0010r\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0002\u0010wJF\u0010v\u001a\u0004\u0018\u00010\u00122\u0006\u0010i\u001a\u00028\u00002\b\u0010r\u001a\u0004\u0018\u00010\u00122#\u00109\u001a\u001f\u0012\u0013\u0012\u001103¢\u0006\f\b;\u0012\b\b<\u0012\u0004\b\b(2\u0012\u0004\u0012\u00020/\u0018\u00010:H\u0016¢\u0006\u0002\u0010xJC\u0010y\u001a\u0004\u0018\u00010z2\b\u0010-\u001a\u0004\u0018\u00010\u00122\b\u0010r\u001a\u0004\u0018\u00010\u00122#\u00109\u001a\u001f\u0012\u0013\u0012\u001103¢\u0006\f\b;\u0012\b\b<\u0012\u0004\b\b(2\u0012\u0004\u0012\u00020/\u0018\u00010:H\u0002J\u0012\u0010{\u001a\u0004\u0018\u00010\u00122\u0006\u0010|\u001a\u000203H\u0016J\b\u0010}\u001a\u00020\u001dH\u0002J\u001a\u0010~\u001a\u00020/*\u00020\u007f2\u0006\u0010i\u001a\u00028\u0000H\u0016¢\u0006\u0003\u0010\u0080\u0001J\u0015\u0010\u0081\u0001\u001a\u00020/*\u00020\u007f2\u0006\u0010|\u001a\u000203H\u0016R\t\u0010\f\u001a\u00020\rX\u0082\u0004R\u0011\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fX\u0082\u0004R\u0011\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000fX\u0082\u0004R\u001c\u0010\u0013\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u0017X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001c\u001a\u00020\u001d8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001eR\u0014\u0010\u001f\u001a\u00020\u001d8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u001eR\u0014\u0010 \u001a\u00020\u001d8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b \u0010\u001eR\u0016\u0010!\u001a\u0004\u0018\u00010\u00108BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#R\u0016\u0010$\u001a\u0004\u0018\u00010\u00128@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b%\u0010&R\u0014\u0010'\u001a\u00020(8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b)\u0010*¨\u0006\u0082\u0001"}, d2 = {"Lkotlinx/coroutines/CancellableContinuationImpl;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/DispatchedTask;", "Lkotlinx/coroutines/CancellableContinuation;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/Waiter;", "delegate", "Lkotlin/coroutines/Continuation;", "resumeMode", "", "(Lkotlin/coroutines/Continuation;I)V", "_decisionAndIndex", "Lkotlinx/atomicfu/AtomicInt;", "_parentHandle", "Lkotlinx/atomicfu/AtomicRef;", "Lkotlinx/coroutines/DisposableHandle;", "_state", "", "callerFrame", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "context", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "getDelegate$kotlinx_coroutines_core", "()Lkotlin/coroutines/Continuation;", "isActive", "", "()Z", "isCancelled", "isCompleted", "parentHandle", "getParentHandle", "()Lkotlinx/coroutines/DisposableHandle;", "state", "getState$kotlinx_coroutines_core", "()Ljava/lang/Object;", "stateDebugRepresentation", "", "getStateDebugRepresentation", "()Ljava/lang/String;", "alreadyResumedError", "", "proposedUpdate", "callCancelHandler", "", "handler", "Lkotlinx/coroutines/CancelHandler;", "cause", "", "Lkotlinx/coroutines/InternalCompletionHandler;", "callCancelHandlerSafely", "block", "Lkotlin/Function0;", "callOnCancellation", "onCancellation", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "callSegmentOnCancellation", "segment", "Lkotlinx/coroutines/internal/Segment;", "cancel", "cancelCompletedResult", "takenState", "cancelCompletedResult$kotlinx_coroutines_core", "cancelLater", "completeResume", "token", "detachChild", "detachChild$kotlinx_coroutines_core", "detachChildIfNonResuable", "dispatchResume", "mode", "getContinuationCancellationCause", "parent", "Lkotlinx/coroutines/Job;", "getExceptionalResult", "getExceptionalResult$kotlinx_coroutines_core", "getResult", "getStackTraceElement", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "getSuccessfulResult", "getSuccessfulResult$kotlinx_coroutines_core", "(Ljava/lang/Object;)Ljava/lang/Object;", "initCancellability", "installParentHandle", "invokeOnCancellation", "Lkotlinx/coroutines/CompletionHandler;", "index", "invokeOnCancellationImpl", "invokeOnCancellationInternal", "invokeOnCancellationInternal$kotlinx_coroutines_core", "isReusable", "multipleHandlersError", "nameString", "parentCancelled", "parentCancelled$kotlinx_coroutines_core", "releaseClaimedReusableContinuation", "releaseClaimedReusableContinuation$kotlinx_coroutines_core", "resetStateReusable", CampaignEx.JSON_NATIVE_VIDEO_RESUME, "value", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "resumeImpl", "resumeWith", "result", "Lkotlin/Result;", "(Ljava/lang/Object;)V", "resumedState", "Lkotlinx/coroutines/NotCompleted;", "idempotent", "takeState", "takeState$kotlinx_coroutines_core", "toString", "tryResume", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "tryResumeImpl", "Lkotlinx/coroutines/internal/Symbol;", "tryResumeWithException", "exception", "trySuspend", "resumeUndispatched", "Lkotlinx/coroutines/CoroutineDispatcher;", "(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V", "resumeUndispatchedWithException", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
public class CancellableContinuationImpl<T> extends DispatchedTask<T> implements CancellableContinuation<T>, CoroutineStackFrame, Waiter {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f10358d = AtomicIntegerFieldUpdater.newUpdater(CancellableContinuationImpl.class, "_decisionAndIndex$volatile");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f10359e = AtomicReferenceFieldUpdater.newUpdater(CancellableContinuationImpl.class, Object.class, "_state$volatile");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f10360f = AtomicReferenceFieldUpdater.newUpdater(CancellableContinuationImpl.class, Object.class, "_parentHandle$volatile");
    private volatile /* synthetic */ int _decisionAndIndex$volatile;
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Continuation<T> f10361g;
    private final CoroutineContext h;

    /* JADX WARN: Multi-variable type inference failed */
    public CancellableContinuationImpl(Continuation<? super T> continuation, int i) {
        super(i);
        this.f10361g = continuation;
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(i != -1)) {
                throw new AssertionError();
            }
        }
        this.h = continuation.getC();
        this._decisionAndIndex$volatile = 536870911;
        this._state$volatile = Active.a;
    }

    private final String A() {
        Object objZ = z();
        return objZ instanceof NotCompleted ? "Active" : objZ instanceof CancelledContinuation ? AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_CANCELLED : AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_COMPLETED;
    }

    private final DisposableHandle H() {
        Job job = (Job) getC().get(Job.g0);
        if (job == null) {
            return null;
        }
        DisposableHandle disposableHandleInvokeOnCompletion$default = JobKt__JobKt.invokeOnCompletion$default(job, true, false, new ChildContinuation(this), 2, null);
        f10360f.compareAndSet(this, null, disposableHandleInvokeOnCompletion$default);
        return disposableHandleInvokeOnCompletion$default;
    }

    private final void I(Object obj) {
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!((obj instanceof CancelHandler) || (obj instanceof Segment))) {
                throw new AssertionError();
            }
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10359e;
        while (true) {
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (!(obj2 instanceof Active)) {
                if (obj2 instanceof CancelHandler ? true : obj2 instanceof Segment) {
                    L(obj, obj2);
                } else {
                    boolean z = obj2 instanceof CompletedExceptionally;
                    if (z) {
                        CompletedExceptionally completedExceptionally = (CompletedExceptionally) obj2;
                        if (!completedExceptionally.c()) {
                            L(obj, obj2);
                        }
                        if (obj2 instanceof CancelledContinuation) {
                            if (!z) {
                                completedExceptionally = null;
                            }
                            Throwable th = completedExceptionally != null ? completedExceptionally.b : null;
                            if (obj instanceof CancelHandler) {
                                l((CancelHandler) obj, th);
                                return;
                            } else {
                                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>");
                                q((Segment) obj, th);
                                return;
                            }
                        }
                        return;
                    }
                    if (obj2 instanceof CompletedContinuation) {
                        CompletedContinuation completedContinuation = (CompletedContinuation) obj2;
                        if (completedContinuation.cancelHandler != null) {
                            L(obj, obj2);
                        }
                        if (obj instanceof Segment) {
                            return;
                        }
                        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                        CancelHandler cancelHandler = (CancelHandler) obj;
                        if (completedContinuation.b()) {
                            l(cancelHandler, completedContinuation.cancelCause);
                            return;
                        } else {
                            if (f10359e.compareAndSet(this, obj2, CompletedContinuation.copy$default(completedContinuation, null, cancelHandler, null, null, null, 29, null))) {
                                return;
                            }
                        }
                    } else {
                        if (obj instanceof Segment) {
                            return;
                        }
                        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                        if (f10359e.compareAndSet(this, obj2, new CompletedContinuation(obj2, (CancelHandler) obj, null, null, null, 28, null))) {
                            return;
                        }
                    }
                }
            } else if (f10359e.compareAndSet(this, obj2, obj)) {
                return;
            }
        }
    }

    private final boolean K() {
        if (DispatchedTaskKt.isReusableMode(this.c)) {
            Continuation<T> continuation = this.f10361g;
            Intrinsics.checkNotNull(continuation, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
            if (((DispatchedContinuation) continuation).s()) {
                return true;
            }
        }
        return false;
    }

    private final void L(Object obj, Object obj2) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + obj + ", already has " + obj2).toString());
    }

    private final void R(Object obj, int i, Function1<? super Throwable, kotlin.v> function1) {
        Object obj2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10359e;
        do {
            obj2 = atomicReferenceFieldUpdater.get(this);
            if (!(obj2 instanceof NotCompleted)) {
                if (obj2 instanceof CancelledContinuation) {
                    CancelledContinuation cancelledContinuation = (CancelledContinuation) obj2;
                    if (cancelledContinuation.e()) {
                        if (function1 != null) {
                            o(function1, cancelledContinuation.b);
                            return;
                        }
                        return;
                    }
                }
                k(obj);
                throw new KotlinNothingValueException();
            }
        } while (!f10359e.compareAndSet(this, obj2, T((NotCompleted) obj2, obj, i, function1, null)));
        t();
        v(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void S(CancellableContinuationImpl cancellableContinuationImpl, Object obj, int i, Function1 function1, int i2, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resumeImpl");
        }
        if ((i2 & 4) != 0) {
            function1 = null;
        }
        cancellableContinuationImpl.R(obj, i, function1);
    }

    private final Object T(NotCompleted notCompleted, Object obj, int i, Function1<? super Throwable, kotlin.v> function1, Object obj2) {
        if (obj instanceof CompletedExceptionally) {
            if (DebugKt.getASSERTIONS_ENABLED()) {
                if (!(obj2 == null)) {
                    throw new AssertionError();
                }
            }
            if (!DebugKt.getASSERTIONS_ENABLED()) {
                return obj;
            }
            if (function1 == null) {
                return obj;
            }
            throw new AssertionError();
        }
        if (!DispatchedTaskKt.isCancellableMode(i) && obj2 == null) {
            return obj;
        }
        if (function1 == null && !(notCompleted instanceof CancelHandler) && obj2 == null) {
            return obj;
        }
        return new CompletedContinuation(obj, notCompleted instanceof CancelHandler ? (CancelHandler) notCompleted : null, function1, obj2, null, 16, null);
    }

    private final boolean U() {
        int i;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f10358d;
        do {
            i = atomicIntegerFieldUpdater.get(this);
            int i2 = i >> 29;
            if (i2 != 0) {
                if (i2 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed".toString());
            }
        } while (!f10358d.compareAndSet(this, i, 1073741824 + (536870911 & i)));
        return true;
    }

    private final Symbol V(Object obj, Object obj2, Function1<? super Throwable, kotlin.v> function1) {
        Object obj3;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10359e;
        do {
            obj3 = atomicReferenceFieldUpdater.get(this);
            if (!(obj3 instanceof NotCompleted)) {
                if (!(obj3 instanceof CompletedContinuation) || obj2 == null) {
                    return null;
                }
                CompletedContinuation completedContinuation = (CompletedContinuation) obj3;
                if (completedContinuation.idempotentResume != obj2) {
                    return null;
                }
                if (!DebugKt.getASSERTIONS_ENABLED() || Intrinsics.areEqual(completedContinuation.result, obj)) {
                    return j.a;
                }
                throw new AssertionError();
            }
        } while (!f10359e.compareAndSet(this, obj3, T((NotCompleted) obj3, obj, this.c, function1, obj2)));
        t();
        return j.a;
    }

    private final boolean W() {
        int i;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f10358d;
        do {
            i = atomicIntegerFieldUpdater.get(this);
            int i2 = i >> 29;
            if (i2 != 0) {
                if (i2 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended".toString());
            }
        } while (!f10358d.compareAndSet(this, i, DriveFile.MODE_WRITE_ONLY + (536870911 & i)));
        return true;
    }

    private final Void k(Object obj) {
        throw new IllegalStateException(("Already resumed, but proposed with update " + obj).toString());
    }

    private final void q(Segment<?> segment, Throwable th) {
        int i = f10358d.get(this) & 536870911;
        if (!(i != 536870911)) {
            throw new IllegalStateException("The index for Segment.onCancellation(..) is broken".toString());
        }
        try {
            segment.r(i, th, getC());
        } catch (Throwable th2) {
            CoroutineExceptionHandlerKt.handleCoroutineException(getC(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    private final boolean r(Throwable th) {
        if (!K()) {
            return false;
        }
        Continuation<T> continuation = this.f10361g;
        Intrinsics.checkNotNull(continuation, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        return ((DispatchedContinuation) continuation).t(th);
    }

    private final void t() {
        if (K()) {
            return;
        }
        s();
    }

    private final void v(int i) {
        if (U()) {
            return;
        }
        DispatchedTaskKt.dispatch(this, i);
    }

    private final DisposableHandle x() {
        return (DisposableHandle) f10360f.get(this);
    }

    public void E() {
        DisposableHandle disposableHandleH = H();
        if (disposableHandleH != null && d()) {
            disposableHandleH.dispose();
            f10360f.set(this, NonDisposableHandle.a);
        }
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public Object F(T t, Object obj, Function1<? super Throwable, kotlin.v> function1) {
        return V(t, obj, function1);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void G(CoroutineDispatcher coroutineDispatcher, T t) {
        Continuation<T> continuation = this.f10361g;
        DispatchedContinuation dispatchedContinuation = continuation instanceof DispatchedContinuation ? (DispatchedContinuation) continuation : null;
        S(this, t, (dispatchedContinuation != null ? dispatchedContinuation.f10364e : null) == coroutineDispatcher ? 4 : this.c, null, 4, null);
    }

    public final void J(CancelHandler cancelHandler) {
        I(cancelHandler);
    }

    protected String M() {
        return "CancellableContinuation";
    }

    public final void N(Throwable th) {
        if (r(th)) {
            return;
        }
        a(th);
        t();
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void O(Object obj) {
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(obj == j.a)) {
                throw new AssertionError();
            }
        }
        v(this.c);
    }

    public final void P() {
        Throwable thW;
        Continuation<T> continuation = this.f10361g;
        DispatchedContinuation dispatchedContinuation = continuation instanceof DispatchedContinuation ? (DispatchedContinuation) continuation : null;
        if (dispatchedContinuation == null || (thW = dispatchedContinuation.w(this)) == null) {
            return;
        }
        s();
        a(thW);
    }

    public final boolean Q() {
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(this.c == 2)) {
                throw new AssertionError();
            }
        }
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(x() != NonDisposableHandle.a)) {
                throw new AssertionError();
            }
        }
        Object obj = f10359e.get(this);
        if (DebugKt.getASSERTIONS_ENABLED() && !(!(obj instanceof NotCompleted))) {
            throw new AssertionError();
        }
        if ((obj instanceof CompletedContinuation) && ((CompletedContinuation) obj).idempotentResume != null) {
            s();
            return false;
        }
        f10358d.set(this, 536870911);
        f10359e.set(this, Active.a);
        return true;
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public boolean a(Throwable th) {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10359e;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof NotCompleted)) {
                return false;
            }
        } while (!f10359e.compareAndSet(this, obj, new CancelledContinuation(this, th, (obj instanceof CancelHandler) || (obj instanceof Segment))));
        NotCompleted notCompleted = (NotCompleted) obj;
        if (notCompleted instanceof CancelHandler) {
            l((CancelHandler) obj, th);
        } else if (notCompleted instanceof Segment) {
            q((Segment) obj, th);
        }
        t();
        v(this.c);
        return true;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public void b(Object obj, Throwable th) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10359e;
        while (true) {
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof NotCompleted) {
                throw new IllegalStateException("Not completed".toString());
            }
            if (obj2 instanceof CompletedExceptionally) {
                return;
            }
            if (obj2 instanceof CompletedContinuation) {
                CompletedContinuation completedContinuation = (CompletedContinuation) obj2;
                if (!(!completedContinuation.b())) {
                    throw new IllegalStateException("Must be called at most once".toString());
                }
                if (f10359e.compareAndSet(this, obj2, CompletedContinuation.copy$default(completedContinuation, null, null, null, null, th, 15, null))) {
                    completedContinuation.c(this, th);
                    return;
                }
            } else if (f10359e.compareAndSet(this, obj2, new CompletedContinuation(obj2, null, null, null, th, 14, null))) {
                return;
            }
        }
    }

    @Override // kotlinx.coroutines.Waiter
    public void c(Segment<?> segment, int i) {
        int i2;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f10358d;
        do {
            i2 = atomicIntegerFieldUpdater.get(this);
            if (!((i2 & 536870911) == 536870911)) {
                throw new IllegalStateException("invokeOnCancellation should be called at most once".toString());
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i2, ((i2 >> 29) << 29) + i));
        I(segment);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public boolean d() {
        return !(z() instanceof NotCompleted);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public Object e(T t, Object obj) {
        return V(t, obj, null);
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final Continuation<T> f() {
        return this.f10361g;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public Throwable g(Object obj) {
        Throwable thG = super.g(obj);
        if (thG == null) {
            return null;
        }
        Continuation<T> continuation = this.f10361g;
        return (DebugKt.getRECOVER_STACK_TRACES() && (continuation instanceof CoroutineStackFrame)) ? StackTraceRecoveryKt.g(thG, (CoroutineStackFrame) continuation) : thG;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    /* JADX INFO: renamed from: getCallerFrame */
    public CoroutineStackFrame getA() {
        Continuation<T> continuation = this.f10361g;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    /* JADX INFO: renamed from: getContext, reason: from getter */
    public CoroutineContext getC() {
        return this.h;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    /* JADX INFO: renamed from: getStackTraceElement */
    public StackTraceElement getB() {
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.DispatchedTask
    public <T> T h(Object obj) {
        return obj instanceof CompletedContinuation ? (T) ((CompletedContinuation) obj).result : obj;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public Object j() {
        return z();
    }

    public final void l(CancelHandler cancelHandler, Throwable th) {
        try {
            cancelHandler.a(th);
        } catch (Throwable th2) {
            CoroutineExceptionHandlerKt.handleCoroutineException(getC(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void m(Function1<? super Throwable, kotlin.v> function1) {
        CancellableContinuationKt.invokeOnCancellation(this, new CancelHandler.a(function1));
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public Object n(Throwable th) {
        return V(new CompletedExceptionally(th, false, 2, null), null, null);
    }

    public final void o(Function1<? super Throwable, kotlin.v> function1, Throwable th) {
        try {
            function1.invoke(th);
        } catch (Throwable th2) {
            CoroutineExceptionHandlerKt.handleCoroutineException(getC(), new CompletionHandlerException("Exception in resume onCancellation handler for " + this, th2));
        }
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void p(CoroutineDispatcher coroutineDispatcher, Throwable th) {
        Continuation<T> continuation = this.f10361g;
        DispatchedContinuation dispatchedContinuation = continuation instanceof DispatchedContinuation ? (DispatchedContinuation) continuation : null;
        S(this, new CompletedExceptionally(th, false, 2, null), (dispatchedContinuation != null ? dispatchedContinuation.f10364e : null) == coroutineDispatcher ? 4 : this.c, null, 4, null);
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(Object result) {
        S(this, CompletionStateKt.toState(result, this), this.c, null, 4, null);
    }

    public final void s() {
        DisposableHandle disposableHandleX = x();
        if (disposableHandleX == null) {
            return;
        }
        disposableHandleX.dispose();
        f10360f.set(this, NonDisposableHandle.a);
    }

    public String toString() {
        return M() + '(' + DebugStringsKt.toDebugString(this.f10361g) + "){" + A() + "}@" + DebugStringsKt.getHexAddress(this);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void u(T t, Function1<? super Throwable, kotlin.v> function1) {
        R(t, this.c, function1);
    }

    public Throwable w(Job job) {
        return job.i();
    }

    public final Object y() {
        Job job;
        boolean zK = K();
        if (W()) {
            if (x() == null) {
                H();
            }
            if (zK) {
                P();
            }
            return IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        }
        if (zK) {
            P();
        }
        Object objZ = z();
        if (objZ instanceof CompletedExceptionally) {
            Throwable th = ((CompletedExceptionally) objZ).b;
            if (DebugKt.getRECOVER_STACK_TRACES()) {
                throw StackTraceRecoveryKt.g(th, this);
            }
            throw th;
        }
        if (!DispatchedTaskKt.isCancellableMode(this.c) || (job = (Job) getC().get(Job.g0)) == null || job.isActive()) {
            return h(objZ);
        }
        CancellationException cancellationExceptionI = job.i();
        b(objZ, cancellationExceptionI);
        if (DebugKt.getRECOVER_STACK_TRACES()) {
            throw StackTraceRecoveryKt.g(cancellationExceptionI, this);
        }
        throw cancellationExceptionI;
    }

    public final Object z() {
        return f10359e.get(this);
    }
}
