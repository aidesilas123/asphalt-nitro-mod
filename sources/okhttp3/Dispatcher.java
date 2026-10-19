package okhttp3;

import androidx.core.app.NotificationCompat;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.v;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealCall;

/* JADX INFO: renamed from: okhttp3.i, reason: from Kotlin metadata */
/* JADX INFO: compiled from: Dispatcher.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0005¢\u0006\u0002\u0010\u0005J\u0006\u0010\u001e\u001a\u00020\u001fJ\u0019\u0010 \u001a\u00020\u001f2\n\u0010!\u001a\u00060\u001aR\u00020\u001bH\u0000¢\u0006\u0002\b\"J\u0015\u0010#\u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001bH\u0000¢\u0006\u0002\b$J\r\u0010\u0002\u001a\u00020\u0003H\u0007¢\u0006\u0002\b%J\u0016\u0010&\u001a\b\u0018\u00010\u001aR\u00020\u001b2\u0006\u0010'\u001a\u00020(H\u0002J)\u0010)\u001a\u00020\u001f\"\u0004\b\u0000\u0010*2\f\u0010+\u001a\b\u0012\u0004\u0012\u0002H*0,2\u0006\u0010!\u001a\u0002H*H\u0002¢\u0006\u0002\u0010-J\u0015\u0010)\u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001bH\u0000¢\u0006\u0002\b.J\u0019\u0010)\u001a\u00020\u001f2\n\u0010!\u001a\u00060\u001aR\u00020\u001bH\u0000¢\u0006\u0002\b.J\b\u0010/\u001a\u000200H\u0002J\f\u00101\u001a\b\u0012\u0004\u0012\u00020302J\u0006\u00104\u001a\u00020\u0010J\f\u00105\u001a\b\u0012\u0004\u0012\u00020302J\u0006\u00106\u001a\u00020\u0010R\u0011\u0010\u0002\u001a\u00020\u00038G¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0006R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R*\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\b\u001a\u0004\u0018\u00010\t8F@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR&\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u00108F@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R&\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00108F@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0014R\u0018\u0010\u0018\u001a\f\u0012\b\u0012\u00060\u001aR\u00020\u001b0\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u001c\u001a\f\u0012\b\u0012\u00060\u001aR\u00020\u001b0\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001b0\u0019X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00067"}, d2 = {"Lokhttp3/Dispatcher;", "", "executorService", "Ljava/util/concurrent/ExecutorService;", "(Ljava/util/concurrent/ExecutorService;)V", "()V", "()Ljava/util/concurrent/ExecutorService;", "executorServiceOrNull", "<set-?>", "Ljava/lang/Runnable;", "idleCallback", "getIdleCallback", "()Ljava/lang/Runnable;", "setIdleCallback", "(Ljava/lang/Runnable;)V", "maxRequests", "", "getMaxRequests", "()I", "setMaxRequests", "(I)V", "maxRequestsPerHost", "getMaxRequestsPerHost", "setMaxRequestsPerHost", "readyAsyncCalls", "Ljava/util/ArrayDeque;", "Lokhttp3/internal/connection/RealCall$AsyncCall;", "Lokhttp3/internal/connection/RealCall;", "runningAsyncCalls", "runningSyncCalls", "cancelAll", "", "enqueue", NotificationCompat.CATEGORY_CALL, "enqueue$okhttp", "executed", "executed$okhttp", "-deprecated_executorService", "findExistingCallWithHost", "host", "", "finished", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "calls", "Ljava/util/Deque;", "(Ljava/util/Deque;Ljava/lang/Object;)V", "finished$okhttp", "promoteAndExecute", "", "queuedCalls", "", "Lokhttp3/Call;", "queuedCallsCount", "runningCalls", "runningCallsCount", "okhttp"}, mv = {1, 6, 0}, xi = 48)
public final class Dispatcher {
    private Runnable c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ExecutorService f10628d;
    private int a = 64;
    private int b = 5;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ArrayDeque<RealCall.a> f10629e = new ArrayDeque<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ArrayDeque<RealCall.a> f10630f = new ArrayDeque<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ArrayDeque<RealCall> f10631g = new ArrayDeque<>();

    private final RealCall.a d(String str) {
        for (RealCall.a aVar : this.f10630f) {
            if (Intrinsics.areEqual(aVar.d(), str)) {
                return aVar;
            }
        }
        for (RealCall.a aVar2 : this.f10629e) {
            if (Intrinsics.areEqual(aVar2.d(), str)) {
                return aVar2;
            }
        }
        return null;
    }

    private final <T> void e(Deque<T> deque, T t) {
        Runnable runnableH;
        synchronized (this) {
            if (!deque.remove(t)) {
                throw new AssertionError("Call wasn't in-flight!");
            }
            runnableH = h();
            v vVar = v.a;
        }
        if (k() || runnableH == null) {
            return;
        }
        runnableH.run();
    }

    private final boolean k() {
        int i;
        boolean z;
        if (Util.h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            Iterator<RealCall.a> it = this.f10629e.iterator();
            Intrinsics.checkNotNullExpressionValue(it, "readyAsyncCalls.iterator()");
            while (it.hasNext()) {
                RealCall.a asyncCall = it.next();
                if (this.f10630f.size() >= i()) {
                    break;
                }
                if (asyncCall.getB().get() < j()) {
                    it.remove();
                    asyncCall.getB().incrementAndGet();
                    Intrinsics.checkNotNullExpressionValue(asyncCall, "asyncCall");
                    arrayList.add(asyncCall);
                    this.f10630f.add(asyncCall);
                }
            }
            z = l() > 0;
            v vVar = v.a;
        }
        int size = arrayList.size();
        for (i = 0; i < size; i++) {
            ((RealCall.a) arrayList.get(i)).a(c());
        }
        return z;
    }

    public final void a(RealCall.a call) {
        RealCall.a aVarD;
        Intrinsics.checkNotNullParameter(call, "call");
        synchronized (this) {
            this.f10629e.add(call);
            if (!call.getC().getC() && (aVarD = d(call.d())) != null) {
                call.e(aVarD);
            }
            v vVar = v.a;
        }
        k();
    }

    public final synchronized void b(RealCall call) {
        Intrinsics.checkNotNullParameter(call, "call");
        this.f10631g.add(call);
    }

    public final synchronized ExecutorService c() {
        ExecutorService executorService;
        if (this.f10628d == null) {
            this.f10628d = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), Util.threadFactory(Intrinsics.stringPlus(Util.i, " Dispatcher"), false));
        }
        executorService = this.f10628d;
        Intrinsics.checkNotNull(executorService);
        return executorService;
    }

    public final void f(RealCall.a call) {
        Intrinsics.checkNotNullParameter(call, "call");
        call.getB().decrementAndGet();
        e(this.f10630f, call);
    }

    public final void g(RealCall call) {
        Intrinsics.checkNotNullParameter(call, "call");
        e(this.f10631g, call);
    }

    public final synchronized Runnable h() {
        return this.c;
    }

    public final synchronized int i() {
        return this.a;
    }

    public final synchronized int j() {
        return this.b;
    }

    public final synchronized int l() {
        return this.f10630f.size() + this.f10631g.size();
    }
}
