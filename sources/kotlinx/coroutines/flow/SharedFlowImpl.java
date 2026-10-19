package kotlinx.coroutines.flow;

import com.google.android.gms.ads.RequestConfiguration;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot;
import kotlinx.coroutines.flow.internal.FusibleFlow;
import kotlinx.coroutines.internal.Symbol;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Metadata is missing: kotlin.Metadata.data1 must not be an empty array
    	at kotlin.metadata.jvm.internal.JvmExceptionUtilsKt.requireNotEmpty(JvmExceptionUtils.kt:12)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readKmClass$kotlin_metadata_jvm(JvmReadUtils.kt:27)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Class.<init>(KotlinClassMetadata.kt:95)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:50)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    */
/* JADX INFO: compiled from: SharedFlow.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u000f\n\u0002\u0010 \n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0012\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0012\u0004\u0012\u0002H\u00010\u00042\b\u0012\u0004\u0012\u0002H\u00010\u00052\b\u0012\u0004\u0012\u0002H\u00010\u0006:\u0001hB\u001d\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u0016\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\u0003H\u0082@¢\u0006\u0002\u0010.J\u0010\u0010/\u001a\u00020,2\u0006\u00100\u001a\u000201H\u0002J\b\u00102\u001a\u00020,H\u0002J\u001c\u00103\u001a\u0002042\f\u00105\u001a\b\u0012\u0004\u0012\u00028\u000006H\u0096@¢\u0006\u0002\u00107J\u0010\u00108\u001a\u00020,2\u0006\u00109\u001a\u00020\u0012H\u0002J\b\u0010:\u001a\u00020\u0003H\u0014J\u001d\u0010;\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u000e2\u0006\u0010<\u001a\u00020\bH\u0014¢\u0006\u0002\u0010=J\b\u0010>\u001a\u00020,H\u0002J\u0016\u0010?\u001a\u00020,2\u0006\u0010@\u001a\u00028\u0000H\u0096@¢\u0006\u0002\u0010AJ\u0016\u0010B\u001a\u00020,2\u0006\u0010@\u001a\u00028\u0000H\u0082@¢\u0006\u0002\u0010AJ\u0012\u0010C\u001a\u00020,2\b\u0010D\u001a\u0004\u0018\u00010\u000fH\u0002J1\u0010E\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020,\u0018\u00010F0\u000e2\u0014\u0010G\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020,\u0018\u00010F0\u000eH\u0002¢\u0006\u0002\u0010HJ&\u0010I\u001a\b\u0012\u0004\u0012\u00028\u00000J2\u0006\u0010K\u001a\u00020L2\u0006\u0010M\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0012\u0010N\u001a\u0004\u0018\u00010\u000f2\u0006\u0010O\u001a\u00020\u0012H\u0002J7\u0010P\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000e2\u0010\u0010Q\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0018\u00010\u000e2\u0006\u0010R\u001a\u00020\b2\u0006\u0010S\u001a\u00020\bH\u0002¢\u0006\u0002\u0010TJ\b\u0010U\u001a\u00020,H\u0016J\u0015\u0010V\u001a\u00020W2\u0006\u0010@\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010XJ\u0015\u0010Y\u001a\u00020W2\u0006\u0010@\u001a\u00028\u0000H\u0002¢\u0006\u0002\u0010XJ\u0015\u0010Z\u001a\u00020W2\u0006\u0010@\u001a\u00028\u0000H\u0002¢\u0006\u0002\u0010XJ\u0010\u0010[\u001a\u00020\u00122\u0006\u0010-\u001a\u00020\u0003H\u0002J\u0012\u0010\\\u001a\u0004\u0018\u00010\u000f2\u0006\u0010-\u001a\u00020\u0003H\u0002J(\u0010]\u001a\u00020,2\u0006\u0010^\u001a\u00020\u00122\u0006\u0010_\u001a\u00020\u00122\u0006\u0010`\u001a\u00020\u00122\u0006\u0010a\u001a\u00020\u0012H\u0002J%\u0010b\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020,\u0018\u00010F0\u000e2\u0006\u0010c\u001a\u00020\u0012H\u0000¢\u0006\u0004\bd\u0010eJ\r\u0010f\u001a\u00020\u0012H\u0000¢\u0006\u0002\bgR\u001a\u0010\r\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0010R\u000e\u0010\t\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u00128BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u00128BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0014R\u001a\u0010\u0018\u001a\u00028\u00008DX\u0084\u0004¢\u0006\f\u0012\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u000e\u0010\u001d\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u00020\u00128BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u0014R\u000e\u0010 \u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00000\"8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b#\u0010$R\u000e\u0010%\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010&\u001a\u00020\b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b'\u0010(R\u0014\u0010)\u001a\u00020\b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b*\u0010(¨\u0006i"}, d2 = {"Lkotlinx/coroutines/flow/SharedFlowImpl;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;", "Lkotlinx/coroutines/flow/SharedFlowSlot;", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lkotlinx/coroutines/flow/CancellableFlow;", "Lkotlinx/coroutines/flow/internal/FusibleFlow;", "replay", "", "bufferCapacity", "onBufferOverflow", "Lkotlinx/coroutines/channels/BufferOverflow;", "(IILkotlinx/coroutines/channels/BufferOverflow;)V", "buffer", "", "", "[Ljava/lang/Object;", "bufferEndIndex", "", "getBufferEndIndex", "()J", "bufferSize", TtmlNode.TAG_HEAD, "getHead", "lastReplayedLocked", "getLastReplayedLocked$annotations", "()V", "getLastReplayedLocked", "()Ljava/lang/Object;", "minCollectorIndex", "queueEndIndex", "getQueueEndIndex", "queueSize", "replayCache", "", "getReplayCache", "()Ljava/util/List;", "replayIndex", "replaySize", "getReplaySize", "()I", "totalSize", "getTotalSize", "awaitValue", "", "slot", "(Lkotlinx/coroutines/flow/SharedFlowSlot;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cancelEmitter", "emitter", "Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;", "cleanupTailLocked", "collect", "", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "correctCollectorIndexesOnDropOldest", "newHead", "createSlot", "createSlotArray", "size", "(I)[Lkotlinx/coroutines/flow/SharedFlowSlot;", "dropOldestLocked", "emit", "value", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "emitSuspend", "enqueueLocked", "item", "findSlotsToResumeLocked", "Lkotlin/coroutines/Continuation;", "resumesIn", "([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;", "fuse", "Lkotlinx/coroutines/flow/Flow;", "context", "Lkotlin/coroutines/CoroutineContext;", "capacity", "getPeekedValueLockedAt", "index", "growBuffer", "curBuffer", "curSize", "newSize", "([Ljava/lang/Object;II)[Ljava/lang/Object;", "resetReplayCache", "tryEmit", "", "(Ljava/lang/Object;)Z", "tryEmitLocked", "tryEmitNoCollectorsLocked", "tryPeekLocked", "tryTakeValue", "updateBufferLocked", "newReplayIndex", "newMinCollectorIndex", "newBufferEndIndex", "newQueueEndIndex", "updateCollectorIndexLocked", "oldIndex", "updateCollectorIndexLocked$kotlinx_coroutines_core", "(J)[Lkotlin/coroutines/Continuation;", "updateNewCollectorIndexLocked", "updateNewCollectorIndexLocked$kotlinx_coroutines_core", "Emitter", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
public class SharedFlowImpl<T> extends AbstractSharedFlow<SharedFlowSlot> implements MutableSharedFlow<T>, CancellableFlow<T>, FusibleFlow<T> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f10287e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f10288f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final BufferOverflow f10289g;
    private Object[] h;
    private long i;
    private long j;
    private int k;
    private int l;

    /* JADX INFO: compiled from: SharedFlow.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B1\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0002\u0010\u000bJ\b\u0010\f\u001a\u00020\nH\u0016R\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;", "Lkotlinx/coroutines/DisposableHandle;", "flow", "Lkotlinx/coroutines/flow/SharedFlowImpl;", "index", "", "value", "", "cont", "Lkotlin/coroutines/Continuation;", "", "(Lkotlinx/coroutines/flow/SharedFlowImpl;JLjava/lang/Object;Lkotlin/coroutines/Continuation;)V", "dispose", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
    private static final class a implements DisposableHandle {
        public final SharedFlowImpl<?> a;
        public long b;
        public final Object c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final Continuation<kotlin.v> f10290d;

        /* JADX WARN: Multi-variable type inference failed */
        public a(SharedFlowImpl<?> sharedFlowImpl, long j, Object obj, Continuation<? super kotlin.v> continuation) {
            this.a = sharedFlowImpl;
            this.b = j;
            this.c = obj;
            this.f10290d = continuation;
        }

        @Override // kotlinx.coroutines.DisposableHandle
        public void dispose() {
            this.a.m(this);
        }
    }

    /* JADX INFO: compiled from: SharedFlow.kt */
    @Metadata(mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[BufferOverflow.values().length];
            try {
                iArr[BufferOverflow.a.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BufferOverflow.c.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BufferOverflow.b.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    /* JADX INFO: compiled from: SharedFlow.kt */
    @Metadata(mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.SharedFlowImpl", f = "SharedFlow.kt", i = {0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2}, l = {382, 389, 392}, m = "collect$suspendImpl", n = {"$this", "collector", "slot", "$this", "collector", "slot", "collectorJob", "$this", "collector", "slot", "collectorJob"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2", "L$3"})
    static final class c<T> extends ContinuationImpl {
        Object a;
        Object b;
        Object c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Object f10291d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        /* synthetic */ Object f10292e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ SharedFlowImpl<T> f10293f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f10294g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(SharedFlowImpl<T> sharedFlowImpl, Continuation<? super c> continuation) {
            super(continuation);
            this.f10293f = sharedFlowImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f10292e = obj;
            this.f10294g |= Integer.MIN_VALUE;
            return SharedFlowImpl.o(this.f10293f, null, this);
        }
    }

    public SharedFlowImpl(int i, int i2, BufferOverflow bufferOverflow) {
        this.f10287e = i;
        this.f10288f = i2;
        this.f10289g = bufferOverflow;
    }

    private final Object A(long j) {
        Object[] objArr = this.h;
        Intrinsics.checkNotNull(objArr);
        Object objA = SharedFlowKt.a(objArr, j);
        return objA instanceof a ? ((a) objA).c : objA;
    }

    private final long B() {
        return y() + ((long) this.k) + ((long) this.l);
    }

    private final int C() {
        return (int) ((y() + ((long) this.k)) - this.i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int D() {
        return this.k + this.l;
    }

    private final Object[] E(Object[] objArr, int i, int i2) {
        if (!(i2 > 0)) {
            throw new IllegalStateException("Buffer size overflow".toString());
        }
        Object[] objArr2 = new Object[i2];
        this.h = objArr2;
        if (objArr == null) {
            return objArr2;
        }
        long jY = y();
        for (int i3 = 0; i3 < i; i3++) {
            long j = ((long) i3) + jY;
            SharedFlowKt.b(objArr2, j, SharedFlowKt.a(objArr, j));
        }
        return objArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean F(T t) {
        if (getB() == 0) {
            return G(t);
        }
        if (this.k >= this.f10288f && this.j <= this.i) {
            int i = b.a[this.f10289g.ordinal()];
            if (i == 1) {
                return false;
            }
            if (i == 2) {
                return true;
            }
        }
        v(t);
        int i2 = this.k + 1;
        this.k = i2;
        if (i2 > this.f10288f) {
            s();
        }
        if (C() > this.f10287e) {
            J(this.i + 1, this.j, x(), B());
        }
        return true;
    }

    private final boolean G(T t) {
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(getB() == 0)) {
                throw new AssertionError();
            }
        }
        if (this.f10287e == 0) {
            return true;
        }
        v(t);
        int i = this.k + 1;
        this.k = i;
        if (i > this.f10287e) {
            s();
        }
        this.j = y() + ((long) this.k);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long H(SharedFlowSlot sharedFlowSlot) {
        long j = sharedFlowSlot.a;
        if (j < x()) {
            return j;
        }
        if (this.f10288f <= 0 && j <= y() && this.l != 0) {
            return j;
        }
        return -1L;
    }

    private final Object I(SharedFlowSlot sharedFlowSlot) {
        Object obj;
        Continuation<kotlin.v>[] continuationArrK = kotlinx.coroutines.flow.internal.b.a;
        synchronized (this) {
            long jH = H(sharedFlowSlot);
            if (jH < 0) {
                obj = SharedFlowKt.a;
            } else {
                long j = sharedFlowSlot.a;
                Object objA = A(jH);
                sharedFlowSlot.a = jH + 1;
                continuationArrK = K(j);
                obj = objA;
            }
        }
        for (Continuation<kotlin.v> continuation : continuationArrK) {
            if (continuation != null) {
                Result.a aVar = Result.a;
                continuation.resumeWith(Result.m1238constructorimpl(kotlin.v.a));
            }
        }
        return obj;
    }

    private final void J(long j, long j2, long j3, long j4) {
        long jMin = Math.min(j2, j);
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(jMin >= y())) {
                throw new AssertionError();
            }
        }
        for (long jY = y(); jY < jMin; jY++) {
            Object[] objArr = this.h;
            Intrinsics.checkNotNull(objArr);
            SharedFlowKt.b(objArr, jY, null);
        }
        this.i = j;
        this.j = j2;
        this.k = (int) (j3 - jMin);
        this.l = (int) (j4 - j3);
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(this.k >= 0)) {
                throw new AssertionError();
            }
        }
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(this.l >= 0)) {
                throw new AssertionError();
            }
        }
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(this.i <= y() + ((long) this.k))) {
                throw new AssertionError();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object l(SharedFlowSlot sharedFlowSlot, Continuation<? super kotlin.v> continuation) {
        kotlin.v vVar;
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        cancellableContinuationImpl.E();
        synchronized (this) {
            if (H(sharedFlowSlot) < 0) {
                sharedFlowSlot.b = cancellableContinuationImpl;
                sharedFlowSlot.b = cancellableContinuationImpl;
            } else {
                Result.a aVar = Result.a;
                cancellableContinuationImpl.resumeWith(Result.m1238constructorimpl(kotlin.v.a));
            }
            vVar = kotlin.v.a;
        }
        Object objY = cancellableContinuationImpl.y();
        if (objY == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objY == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objY : vVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m(a aVar) {
        synchronized (this) {
            if (aVar.b < y()) {
                return;
            }
            Object[] objArr = this.h;
            Intrinsics.checkNotNull(objArr);
            if (SharedFlowKt.a(objArr, aVar.b) != aVar) {
                return;
            }
            SharedFlowKt.b(objArr, aVar.b, SharedFlowKt.a);
            n();
            kotlin.v vVar = kotlin.v.a;
        }
    }

    private final void n() {
        if (this.f10288f != 0 || this.l > 1) {
            Object[] objArr = this.h;
            Intrinsics.checkNotNull(objArr);
            while (this.l > 0 && SharedFlowKt.a(objArr, (y() + ((long) D())) - 1) == SharedFlowKt.a) {
                this.l--;
                SharedFlowKt.b(objArr, y() + ((long) D()), null);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static /* synthetic */ <T> java.lang.Object o(kotlinx.coroutines.flow.SharedFlowImpl<T> r8, kotlinx.coroutines.flow.FlowCollector<? super T> r9, kotlin.coroutines.Continuation<?> r10) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 222
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.SharedFlowImpl.o(kotlinx.coroutines.flow.SharedFlowImpl, kotlinx.coroutines.flow.j, kotlin.coroutines.d):java.lang.Object");
    }

    private final void p(long j) {
        AbstractSharedFlowSlot[] abstractSharedFlowSlotArr;
        if (((AbstractSharedFlow) this).b != 0 && (abstractSharedFlowSlotArr = ((AbstractSharedFlow) this).a) != null) {
            for (AbstractSharedFlowSlot abstractSharedFlowSlot : abstractSharedFlowSlotArr) {
                if (abstractSharedFlowSlot != null) {
                    SharedFlowSlot sharedFlowSlot = (SharedFlowSlot) abstractSharedFlowSlot;
                    long j2 = sharedFlowSlot.a;
                    if (j2 >= 0 && j2 < j) {
                        sharedFlowSlot.a = j;
                    }
                }
            }
        }
        this.j = j;
    }

    private final void s() {
        Object[] objArr = this.h;
        Intrinsics.checkNotNull(objArr);
        SharedFlowKt.b(objArr, y(), null);
        this.k--;
        long jY = y() + 1;
        if (this.i < jY) {
            this.i = jY;
        }
        if (this.j < jY) {
            p(jY);
        }
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(y() == jY)) {
                throw new AssertionError();
            }
        }
    }

    static /* synthetic */ <T> Object t(SharedFlowImpl<T> sharedFlowImpl, T t, Continuation<? super kotlin.v> continuation) {
        Object objU;
        return (!sharedFlowImpl.c(t) && (objU = sharedFlowImpl.u(t, continuation)) == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? objU : kotlin.v.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object u(T t, Continuation<? super kotlin.v> continuation) {
        Continuation<kotlin.v>[] continuationArrW;
        a aVar;
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        cancellableContinuationImpl.E();
        Continuation<kotlin.v>[] continuationArrW2 = kotlinx.coroutines.flow.internal.b.a;
        synchronized (this) {
            if (F(t)) {
                Result.a aVar2 = Result.a;
                cancellableContinuationImpl.resumeWith(Result.m1238constructorimpl(kotlin.v.a));
                continuationArrW = w(continuationArrW2);
                aVar = null;
            } else {
                a aVar3 = new a(this, ((long) D()) + y(), t, cancellableContinuationImpl);
                v(aVar3);
                this.l++;
                if (this.f10288f == 0) {
                    continuationArrW2 = w(continuationArrW2);
                }
                continuationArrW = continuationArrW2;
                aVar = aVar3;
            }
        }
        if (aVar != null) {
            CancellableContinuationKt.disposeOnCancellation(cancellableContinuationImpl, aVar);
        }
        for (Continuation<kotlin.v> continuation2 : continuationArrW) {
            if (continuation2 != null) {
                Result.a aVar4 = Result.a;
                continuation2.resumeWith(Result.m1238constructorimpl(kotlin.v.a));
            }
        }
        Object objY = cancellableContinuationImpl.y();
        if (objY == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objY == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objY : kotlin.v.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v(Object obj) {
        int iD = D();
        Object[] objArrE = this.h;
        if (objArrE == null) {
            objArrE = E(null, 0, 2);
        } else if (iD >= objArrE.length) {
            objArrE = E(objArrE, iD, objArrE.length * 2);
        }
        SharedFlowKt.b(objArrE, y() + ((long) iD), obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [kotlin.coroutines.d<kotlin.v>[]] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v3, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r6v2 */
    public final Continuation<kotlin.v>[] w(Continuation<kotlin.v>[] continuationArr) {
        AbstractSharedFlowSlot[] abstractSharedFlowSlotArr;
        SharedFlowSlot sharedFlowSlot;
        Continuation<? super kotlin.v> continuation;
        int length = continuationArr.length;
        if (((AbstractSharedFlow) this).b != 0 && (abstractSharedFlowSlotArr = ((AbstractSharedFlow) this).a) != null) {
            int i = 0;
            int length2 = abstractSharedFlowSlotArr.length;
            continuationArr = continuationArr;
            while (i < length2) {
                AbstractSharedFlowSlot abstractSharedFlowSlot = abstractSharedFlowSlotArr[i];
                if (abstractSharedFlowSlot != null && (continuation = (sharedFlowSlot = (SharedFlowSlot) abstractSharedFlowSlot).b) != null && H(sharedFlowSlot) >= 0) {
                    int length3 = continuationArr.length;
                    continuationArr = continuationArr;
                    if (length >= length3) {
                        Object[] objArrCopyOf = Arrays.copyOf((Object[]) continuationArr, Math.max(2, continuationArr.length * 2));
                        Intrinsics.checkNotNullExpressionValue(objArrCopyOf, "copyOf(...)");
                        continuationArr = objArrCopyOf;
                    }
                    ((Continuation[]) continuationArr)[length] = continuation;
                    sharedFlowSlot.b = null;
                    length++;
                }
                i++;
                continuationArr = continuationArr;
            }
        }
        return (Continuation[]) continuationArr;
    }

    private final long x() {
        return y() + ((long) this.k);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long y() {
        return Math.min(this.j, this.i);
    }

    public final Continuation<kotlin.v>[] K(long j) {
        long j2;
        long j3;
        AbstractSharedFlowSlot[] abstractSharedFlowSlotArr;
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(j >= this.j)) {
                throw new AssertionError();
            }
        }
        if (j > this.j) {
            return kotlinx.coroutines.flow.internal.b.a;
        }
        long jY = y();
        long j4 = ((long) this.k) + jY;
        if (this.f10288f == 0 && this.l > 0) {
            j4++;
        }
        if (((AbstractSharedFlow) this).b != 0 && (abstractSharedFlowSlotArr = ((AbstractSharedFlow) this).a) != null) {
            for (AbstractSharedFlowSlot abstractSharedFlowSlot : abstractSharedFlowSlotArr) {
                if (abstractSharedFlowSlot != null) {
                    long j5 = ((SharedFlowSlot) abstractSharedFlowSlot).a;
                    if (j5 >= 0 && j5 < j4) {
                        j4 = j5;
                    }
                }
            }
        }
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(j4 >= this.j)) {
                throw new AssertionError();
            }
        }
        if (j4 <= this.j) {
            return kotlinx.coroutines.flow.internal.b.a;
        }
        long jX = x();
        int iMin = getB() > 0 ? Math.min(this.l, this.f10288f - ((int) (jX - j4))) : this.l;
        Continuation<kotlin.v>[] continuationArr = kotlinx.coroutines.flow.internal.b.a;
        long j6 = ((long) this.l) + jX;
        if (iMin > 0) {
            continuationArr = new Continuation[iMin];
            Object[] objArr = this.h;
            Intrinsics.checkNotNull(objArr);
            long j7 = jX;
            int i = 0;
            while (true) {
                if (jX >= j6) {
                    j2 = j4;
                    break;
                }
                Object objA = SharedFlowKt.a(objArr, jX);
                Symbol symbol = SharedFlowKt.a;
                j2 = j4;
                if (objA != symbol) {
                    Intrinsics.checkNotNull(objA, "null cannot be cast to non-null type kotlinx.coroutines.flow.SharedFlowImpl.Emitter");
                    a aVar = (a) objA;
                    int i2 = i + 1;
                    continuationArr[i] = aVar.f10290d;
                    SharedFlowKt.b(objArr, jX, symbol);
                    SharedFlowKt.b(objArr, j7, aVar.c);
                    j3 = 1;
                    j7++;
                    if (i2 >= iMin) {
                        break;
                    }
                    i = i2;
                } else {
                    j3 = 1;
                }
                jX += j3;
                j4 = j2;
            }
            jX = j7;
        } else {
            j2 = j4;
        }
        int i3 = (int) (jX - jY);
        long j8 = getB() == 0 ? jX : j2;
        long jMax = Math.max(this.i, jX - ((long) Math.min(this.f10287e, i3)));
        if (this.f10288f == 0 && jMax < j6) {
            Object[] objArr2 = this.h;
            Intrinsics.checkNotNull(objArr2);
            if (Intrinsics.areEqual(SharedFlowKt.a(objArr2, jMax), SharedFlowKt.a)) {
                jX++;
                jMax++;
            }
        }
        J(jMax, j8, jX, j6);
        n();
        return true ^ (continuationArr.length == 0) ? w(continuationArr) : continuationArr;
    }

    public final long L() {
        long j = this.i;
        if (j < this.j) {
            this.j = j;
        }
        return j;
    }

    @Override // kotlinx.coroutines.flow.internal.FusibleFlow
    public Flow<T> a(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        return SharedFlowKt.fuseSharedFlow(this, coroutineContext, i, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow
    public boolean c(T t) {
        int i;
        boolean z;
        Continuation<kotlin.v>[] continuationArrW = kotlinx.coroutines.flow.internal.b.a;
        synchronized (this) {
            if (F(t)) {
                continuationArrW = w(continuationArrW);
                z = true;
            } else {
                z = false;
            }
        }
        for (Continuation<kotlin.v> continuation : continuationArrW) {
            if (continuation != null) {
                Result.a aVar = Result.a;
                continuation.resumeWith(Result.m1238constructorimpl(kotlin.v.a));
            }
        }
        return z;
    }

    @Override // kotlinx.coroutines.flow.SharedFlow, kotlinx.coroutines.flow.Flow
    public Object collect(FlowCollector<? super T> flowCollector, Continuation<?> continuation) {
        return o(this, flowCollector, continuation);
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow, kotlinx.coroutines.flow.FlowCollector
    public Object emit(T t, Continuation<? super kotlin.v> continuation) {
        return t(this, t, continuation);
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow
    public void i() {
        synchronized (this) {
            J(x(), this.j, x(), B());
            kotlin.v vVar = kotlin.v.a;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public SharedFlowSlot d() {
        return new SharedFlowSlot();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public SharedFlowSlot[] e(int i) {
        return new SharedFlowSlot[i];
    }

    protected final T z() {
        Object[] objArr = this.h;
        Intrinsics.checkNotNull(objArr);
        return (T) SharedFlowKt.a(objArr, (this.i + ((long) C())) - 1);
    }
}
