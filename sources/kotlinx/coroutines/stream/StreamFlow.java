package kotlinx.coroutines.stream;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.stream.Stream;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: renamed from: kotlinx.coroutines.stream.a, reason: from Kotlin metadata */
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
/* JADX INFO: compiled from: Stream.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0002\u0010\u0005J\u001c\u0010\b\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u000bH\u0096@¢\u0006\u0002\u0010\fR\t\u0010\u0006\u001a\u00020\u0007X\u0082\u0004R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/stream/StreamFlow;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/flow/Flow;", "stream", "Ljava/util/stream/Stream;", "(Ljava/util/stream/Stream;)V", "consumed", "Lkotlinx/atomicfu/AtomicBoolean;", "collect", "", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
final class StreamFlow<T> implements Flow<T> {
    private static final /* synthetic */ AtomicIntegerFieldUpdater a = AtomicIntegerFieldUpdater.newUpdater(StreamFlow.class, "consumed$volatile");
    private final Stream<T> b;
    private volatile /* synthetic */ int consumed$volatile = 0;

    /* JADX INFO: renamed from: kotlinx.coroutines.stream.a$a */
    /* JADX INFO: compiled from: Stream.kt */
    @Metadata(mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.stream.StreamFlow", f = "Stream.kt", i = {0, 0}, l = {22}, m = "collect", n = {"this", "collector"}, s = {"L$0", "L$1"})
    static final class a extends ContinuationImpl {
        Object a;
        Object b;
        Object c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        /* synthetic */ Object f10431d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ StreamFlow<T> f10432e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f10433f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(StreamFlow<T> streamFlow, Continuation<? super a> continuation) {
            super(continuation);
            this.f10432e = streamFlow;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f10431d = obj;
            this.f10433f |= Integer.MIN_VALUE;
            return this.f10432e.collect(null, this);
        }
    }

    public StreamFlow(Stream<T> stream) {
        this.b = stream;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object collect(kotlinx.coroutines.flow.FlowCollector<? super T> r7, kotlin.coroutines.Continuation<? super kotlin.v> r8) throws java.lang.Throwable {
        /*
            r6 = this;
            boolean r0 = r8 instanceof kotlinx.coroutines.stream.StreamFlow.a
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.stream.a$a r0 = (kotlinx.coroutines.stream.StreamFlow.a) r0
            int r1 = r0.f10433f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f10433f = r1
            goto L18
        L13:
            kotlinx.coroutines.stream.a$a r0 = new kotlinx.coroutines.stream.a$a
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.f10431d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f10433f
            r3 = 1
            if (r2 == 0) goto L40
            if (r2 != r3) goto L38
            java.lang.Object r7 = r0.c
            java.util.Iterator r7 = (java.util.Iterator) r7
            java.lang.Object r2 = r0.b
            kotlinx.coroutines.flow.j r2 = (kotlinx.coroutines.flow.FlowCollector) r2
            java.lang.Object r4 = r0.a
            kotlinx.coroutines.stream.a r4 = (kotlinx.coroutines.stream.StreamFlow) r4
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L36
            r8 = r2
            goto L58
        L36:
            r7 = move-exception
            goto L7b
        L38:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L40:
            kotlin.ResultKt.throwOnFailure(r8)
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r8 = b()
            r2 = 0
            boolean r8 = r8.compareAndSet(r6, r2, r3)
            if (r8 == 0) goto L81
            java.util.stream.Stream<T> r8 = r6.b     // Catch: java.lang.Throwable -> L79
            java.util.Iterator r8 = r8.iterator()     // Catch: java.lang.Throwable -> L79
            r4 = r6
            r5 = r8
            r8 = r7
            r7 = r5
        L58:
            boolean r2 = r7.hasNext()     // Catch: java.lang.Throwable -> L36
            if (r2 == 0) goto L71
            java.lang.Object r2 = r7.next()     // Catch: java.lang.Throwable -> L36
            r0.a = r4     // Catch: java.lang.Throwable -> L36
            r0.b = r8     // Catch: java.lang.Throwable -> L36
            r0.c = r7     // Catch: java.lang.Throwable -> L36
            r0.f10433f = r3     // Catch: java.lang.Throwable -> L36
            java.lang.Object r2 = r8.emit(r2, r0)     // Catch: java.lang.Throwable -> L36
            if (r2 != r1) goto L58
            return r1
        L71:
            java.util.stream.Stream<T> r7 = r4.b
            r7.close()
            kotlin.v r7 = kotlin.v.a
            return r7
        L79:
            r7 = move-exception
            r4 = r6
        L7b:
            java.util.stream.Stream<T> r8 = r4.b
            r8.close()
            throw r7
        L81:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "Stream.consumeAsFlow can be collected only once"
            java.lang.String r8 = r8.toString()
            r7.<init>(r8)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.stream.StreamFlow.collect(kotlinx.coroutines.flow.j, kotlin.coroutines.d):java.lang.Object");
    }
}
