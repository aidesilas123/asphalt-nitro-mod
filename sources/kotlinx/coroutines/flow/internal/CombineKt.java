package kotlinx.coroutines.flow.internal;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.v;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.channels.SendChannel;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.internal.ThreadContextKt;

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
/* JADX INFO: compiled from: Combine.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000>\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001ak\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0003\"\u0004\b\u0001\u0010\u0004\"\u0004\b\u0002\u0010\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00030\u00012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00040\u00012(\u0010\u0007\u001a$\b\u0001\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\bH\u0000¢\u0006\u0002\u0010\u000b\u001a\u008d\u0001\u0010\f\u001a\u00020\r\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u000e*\b\u0012\u0004\u0012\u0002H\u00020\u000f2\u0014\u0010\u0010\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u0002H\u000e0\u00010\u00112\u0016\u0010\u0012\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u0001H\u000e\u0018\u00010\u00110\u001329\u0010\u0007\u001a5\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u000e0\u0011\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\b¢\u0006\u0002\b\u0014H\u0081@¢\u0006\u0002\u0010\u0015*\u001c\b\u0002\u0010\u0016\"\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u00172\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0017¨\u0006\u0018"}, d2 = {"zipImpl", "Lkotlinx/coroutines/flow/Flow;", "R", "T1", "T2", "flow", "flow2", "transform", "Lkotlin/Function3;", "Lkotlin/coroutines/Continuation;", "", "(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;", "combineInternal", "", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/flow/FlowCollector;", "flows", "", "arrayFactory", "Lkotlin/Function0;", "Lkotlin/ExtensionFunctionType;", "(Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Update", "Lkotlin/collections/IndexedValue;", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
public final class CombineKt {

    /* JADX INFO: compiled from: Combine.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "", "R", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/CoroutineScope;"}, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2", f = "Combine.kt", i = {0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2}, l = {51, 73, 76}, m = "invokeSuspend", n = {"latestValues", "resultChannel", "lastReceivedEpoch", "remainingAbsentValues", "currentEpoch", "latestValues", "resultChannel", "lastReceivedEpoch", "remainingAbsentValues", "currentEpoch", "latestValues", "resultChannel", "lastReceivedEpoch", "remainingAbsentValues", "currentEpoch"}, s = {"L$0", "L$1", "L$2", "I$0", "I$1", "L$0", "L$1", "L$2", "I$0", "I$1", "L$0", "L$1", "L$2", "I$0", "I$1"})
    static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        Object a;
        Object b;
        int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f10314d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f10315e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private /* synthetic */ Object f10316f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ Flow<T>[] f10317g;
        final /* synthetic */ Function0<T[]> h;
        final /* synthetic */ Function3<FlowCollector<? super R>, T[], Continuation<? super v>, Object> i;
        final /* synthetic */ FlowCollector<R> j;

        /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Combine.kt */
        @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "", "R", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/CoroutineScope;"}, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1", f = "Combine.kt", i = {}, l = {28}, m = "invokeSuspend", n = {}, s = {})
        static final class C0587a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
            int a;
            final /* synthetic */ Flow<T>[] b;
            final /* synthetic */ int c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ AtomicInteger f10318d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ Channel<IndexedValue<Object>> f10319e;

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$a$a$a, reason: collision with other inner class name */
            /* JADX INFO: compiled from: Combine.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0003H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "R", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, mv = {1, 9, 0}, xi = 48)
            static final class C0588a<T> implements FlowCollector {
                final /* synthetic */ Channel<IndexedValue<Object>> a;
                final /* synthetic */ int b;

                /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$a$a$a$a, reason: collision with other inner class name */
                /* JADX INFO: compiled from: Combine.kt */
                @Metadata(mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1", f = "Combine.kt", i = {}, l = {29, 30}, m = "emit", n = {}, s = {})
                static final class C0589a extends ContinuationImpl {
                    /* synthetic */ Object a;
                    final /* synthetic */ C0588a<T> b;
                    int c;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    C0589a(C0588a<? super T> c0588a, Continuation<? super C0589a> continuation) {
                        super(continuation);
                        this.b = c0588a;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.a = obj;
                        this.c |= Integer.MIN_VALUE;
                        return this.b.emit(null, this);
                    }
                }

                C0588a(Channel<IndexedValue<Object>> channel, int i) {
                    this.a = channel;
                    this.b = i;
                }

                /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object emit(T r7, kotlin.coroutines.Continuation<? super kotlin.v> r8) {
                    /*
                        r6 = this;
                        boolean r0 = r8 instanceof kotlinx.coroutines.flow.internal.CombineKt.a.C0587a.C0588a.C0589a
                        if (r0 == 0) goto L13
                        r0 = r8
                        kotlinx.coroutines.flow.internal.CombineKt$a$a$a$a r0 = (kotlinx.coroutines.flow.internal.CombineKt.a.C0587a.C0588a.C0589a) r0
                        int r1 = r0.c
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.c = r1
                        goto L18
                    L13:
                        kotlinx.coroutines.flow.internal.CombineKt$a$a$a$a r0 = new kotlinx.coroutines.flow.internal.CombineKt$a$a$a$a
                        r0.<init>(r6, r8)
                    L18:
                        java.lang.Object r8 = r0.a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
                        int r2 = r0.c
                        r3 = 2
                        r4 = 1
                        if (r2 == 0) goto L38
                        if (r2 == r4) goto L34
                        if (r2 != r3) goto L2c
                        kotlin.ResultKt.throwOnFailure(r8)
                        goto L56
                    L2c:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r8)
                        throw r7
                    L34:
                        kotlin.ResultKt.throwOnFailure(r8)
                        goto L4d
                    L38:
                        kotlin.ResultKt.throwOnFailure(r8)
                        kotlinx.coroutines.channels.Channel<kotlin.collections.IndexedValue<java.lang.Object>> r8 = r6.a
                        kotlin.collections.IndexedValue r2 = new kotlin.collections.IndexedValue
                        int r5 = r6.b
                        r2.<init>(r5, r7)
                        r0.c = r4
                        java.lang.Object r7 = r8.K(r2, r0)
                        if (r7 != r1) goto L4d
                        return r1
                    L4d:
                        r0.c = r3
                        java.lang.Object r7 = kotlinx.coroutines.YieldKt.yield(r0)
                        if (r7 != r1) goto L56
                        return r1
                    L56:
                        kotlin.v r7 = kotlin.v.a
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt.a.C0587a.C0588a.emit(java.lang.Object, kotlin.coroutines.d):java.lang.Object");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C0587a(Flow<? extends T>[] flowArr, int i, AtomicInteger atomicInteger, Channel<IndexedValue<Object>> channel, Continuation<? super C0587a> continuation) {
                super(2, continuation);
                this.b = flowArr;
                this.c = i;
                this.f10318d = atomicInteger;
                this.f10319e = channel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Object obj, Continuation<?> continuation) {
                return new C0587a(this.b, this.c, this.f10318d, this.f10319e, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
                return ((C0587a) create(coroutineScope, continuation)).invokeSuspend(v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                AtomicInteger atomicInteger;
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.a;
                try {
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj);
                        Flow[] flowArr = this.b;
                        int i2 = this.c;
                        Flow flow = flowArr[i2];
                        C0588a c0588a = new C0588a(this.f10319e, i2);
                        this.a = 1;
                        if (flow.collect(c0588a, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    if (atomicInteger.decrementAndGet() == 0) {
                        SendChannel.DefaultImpls.close$default(this.f10319e, null, 1, null);
                    }
                    return v.a;
                } finally {
                    if (this.f10318d.decrementAndGet() == 0) {
                        SendChannel.DefaultImpls.close$default(this.f10319e, null, 1, null);
                    }
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(Flow<? extends T>[] flowArr, Function0<T[]> function0, Function3<? super FlowCollector<? super R>, ? super T[], ? super Continuation<? super v>, ? extends Object> function3, FlowCollector<? super R> flowCollector, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f10317g = flowArr;
            this.h = function0;
            this.i = function3;
            this.j = flowCollector;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            a aVar = new a(this.f10317g, this.h, this.i, this.j, continuation);
            aVar.f10316f = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x00e9  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00ec A[LOOP:0: B:28:0x00ec->B:51:?, LOOP_START, PHI: r3 r10
          0x00ec: PHI (r3v2 int) = (r3v1 int), (r3v3 int) binds: [B:25:0x00e7, B:51:?] A[DONT_GENERATE, DONT_INLINE]
          0x00ec: PHI (r10v5 kotlin.collections.IndexedValue) = (r10v4 kotlin.collections.IndexedValue), (r10v18 kotlin.collections.IndexedValue) binds: [B:25:0x00e7, B:51:?] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x0134 -> B:20:0x00c7). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r24) {
            /*
                Method dump skipped, instruction units count: 367
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: compiled from: SafeCollector.common.kt */
    @Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0096@¢\u0006\u0002\u0010\u0006¨\u0006\u0007¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "collect", "", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
    public static final class b<R> implements Flow<R> {
        final /* synthetic */ Flow a;
        final /* synthetic */ Flow b;
        final /* synthetic */ Function3 c;

        public b(Flow flow, Flow flow2, Function3 function3) {
            this.a = flow;
            this.b = flow2;
            this.c = function3;
        }

        @Override // kotlinx.coroutines.flow.Flow
        public Object collect(FlowCollector<? super R> flowCollector, Continuation<? super v> continuation) {
            Object objCoroutineScope = CoroutineScopeKt.coroutineScope(new c(this.a, this.b, flowCollector, this.c, null), continuation);
            return objCoroutineScope == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCoroutineScope : v.a;
        }
    }

    /* JADX INFO: compiled from: Combine.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u0004*\u00020\u0005H\u008a@"}, d2 = {"<anonymous>", "", "T1", "T2", "R", "Lkotlinx/coroutines/CoroutineScope;"}, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1", f = "Combine.kt", i = {0, 0}, l = {123}, m = "invokeSuspend", n = {"second", "collectJob"}, s = {"L$0", "L$1"})
    static final class c extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        Object a;
        int b;
        private /* synthetic */ Object c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Flow<T2> f10320d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Flow<T1> f10321e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ FlowCollector<R> f10322f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ Function3<T1, T2, Continuation<? super R>, Object> f10323g;

        /* JADX INFO: compiled from: Combine.kt */
        @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "", "T1", "T2", "R", "it", "", "invoke"}, mv = {1, 9, 0}, xi = 48)
        static final class a extends Lambda implements Function1<Throwable, v> {
            final /* synthetic */ CompletableJob a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(CompletableJob completableJob) {
                super(1);
                this.a = completableJob;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(Throwable th) {
                invoke2(th);
                return v.a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                if (this.a.isActive()) {
                    this.a.b(new AbortFlowException(this.a));
                }
            }
        }

        /* JADX INFO: compiled from: Combine.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u00042\u0006\u0010\u0005\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", "", "T1", "T2", "R", "it"}, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2", f = "Combine.kt", i = {}, l = {124}, m = "invokeSuspend", n = {}, s = {})
        static final class b extends SuspendLambda implements Function2<v, Continuation<? super v>, Object> {
            int a;
            final /* synthetic */ Flow<T1> b;
            final /* synthetic */ CoroutineContext c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ Object f10324d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ ReceiveChannel<Object> f10325e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ FlowCollector<R> f10326f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            final /* synthetic */ Function3<T1, T2, Continuation<? super R>, Object> f10327g;
            final /* synthetic */ CompletableJob h;

            /* JADX INFO: compiled from: Combine.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "", "T1", "T2", "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, mv = {1, 9, 0}, xi = 48)
            static final class a<T> implements FlowCollector {
                final /* synthetic */ CoroutineContext a;
                final /* synthetic */ Object b;
                final /* synthetic */ ReceiveChannel<Object> c;

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                final /* synthetic */ FlowCollector<R> f10328d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                final /* synthetic */ Function3<T1, T2, Continuation<? super R>, Object> f10329e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                final /* synthetic */ CompletableJob f10330f;

                /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$c$b$a$a, reason: collision with other inner class name */
                /* JADX INFO: compiled from: Combine.kt */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u00042\u0006\u0010\u0005\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", "", "T1", "T2", "R", "it"}, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1$1", f = "Combine.kt", i = {}, l = {126, 129, 129}, m = "invokeSuspend", n = {}, s = {})
                static final class C0590a extends SuspendLambda implements Function2<v, Continuation<? super v>, Object> {
                    Object a;
                    int b;
                    final /* synthetic */ ReceiveChannel<Object> c;

                    /* JADX INFO: renamed from: d, reason: collision with root package name */
                    final /* synthetic */ FlowCollector<R> f10331d;

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    final /* synthetic */ Function3<T1, T2, Continuation<? super R>, Object> f10332e;

                    /* JADX INFO: renamed from: f, reason: collision with root package name */
                    final /* synthetic */ T1 f10333f;

                    /* JADX INFO: renamed from: g, reason: collision with root package name */
                    final /* synthetic */ CompletableJob f10334g;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    C0590a(ReceiveChannel<? extends Object> receiveChannel, FlowCollector<? super R> flowCollector, Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3, T1 t1, CompletableJob completableJob, Continuation<? super C0590a> continuation) {
                        super(2, continuation);
                        this.c = receiveChannel;
                        this.f10331d = flowCollector;
                        this.f10332e = function3;
                        this.f10333f = t1;
                        this.f10334g = completableJob;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
                        return new C0590a(this.c, this.f10331d, this.f10332e, this.f10333f, this.f10334g, continuation);
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Removed duplicated region for block: B:29:0x0070 A[RETURN] */
                    /* JADX WARN: Type inference failed for: r1v3, types: [kotlinx.coroutines.flow.j] */
                    /* JADX WARN: Type inference failed for: r1v6 */
                    /* JADX WARN: Type inference failed for: r1v7 */
                    /* JADX WARN: Type inference fix 'apply assigned field type' failed
                    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
                    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                     */
                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct code enable 'Show inconsistent code' option in preferences
                    */
                    public final java.lang.Object invokeSuspend(java.lang.Object r9) throws java.lang.Throwable {
                        /*
                            r8 = this;
                            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
                            int r1 = r8.b
                            r2 = 0
                            r3 = 3
                            r4 = 2
                            r5 = 1
                            if (r1 == 0) goto L30
                            if (r1 == r5) goto L26
                            if (r1 == r4) goto L1e
                            if (r1 != r3) goto L16
                            kotlin.ResultKt.throwOnFailure(r9)
                            goto L71
                        L16:
                            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                            r9.<init>(r0)
                            throw r9
                        L1e:
                            java.lang.Object r1 = r8.a
                            kotlinx.coroutines.flow.j r1 = (kotlinx.coroutines.flow.FlowCollector) r1
                            kotlin.ResultKt.throwOnFailure(r9)
                            goto L66
                        L26:
                            kotlin.ResultKt.throwOnFailure(r9)
                            kotlinx.coroutines.channels.ChannelResult r9 = (kotlinx.coroutines.channels.ChannelResult) r9
                            java.lang.Object r9 = r9.getC()
                            goto L3e
                        L30:
                            kotlin.ResultKt.throwOnFailure(r9)
                            kotlinx.coroutines.channels.ReceiveChannel<java.lang.Object> r9 = r8.c
                            r8.b = r5
                            java.lang.Object r9 = r9.E(r8)
                            if (r9 != r0) goto L3e
                            return r0
                        L3e:
                            kotlinx.coroutines.CompletableJob r1 = r8.f10334g
                            boolean r5 = r9 instanceof kotlinx.coroutines.channels.ChannelResult.c
                            if (r5 == 0) goto L50
                            java.lang.Throwable r9 = kotlinx.coroutines.channels.ChannelResult.m1763exceptionOrNullimpl(r9)
                            if (r9 != 0) goto L4f
                            kotlinx.coroutines.flow.internal.a r9 = new kotlinx.coroutines.flow.internal.a
                            r9.<init>(r1)
                        L4f:
                            throw r9
                        L50:
                            kotlinx.coroutines.flow.j<R> r1 = r8.f10331d
                            kotlin.jvm.b.q<T1, T2, kotlin.coroutines.d<? super R>, java.lang.Object> r5 = r8.f10332e
                            T1 r6 = r8.f10333f
                            kotlinx.coroutines.internal.s r7 = kotlinx.coroutines.flow.internal.m.a
                            if (r9 != r7) goto L5b
                            r9 = r2
                        L5b:
                            r8.a = r1
                            r8.b = r4
                            java.lang.Object r9 = r5.invoke(r6, r9, r8)
                            if (r9 != r0) goto L66
                            return r0
                        L66:
                            r8.a = r2
                            r8.b = r3
                            java.lang.Object r9 = r1.emit(r9, r8)
                            if (r9 != r0) goto L71
                            return r0
                        L71:
                            kotlin.v r9 = kotlin.v.a
                            return r9
                        */
                        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt.c.b.a.C0590a.invokeSuspend(java.lang.Object):java.lang.Object");
                    }

                    @Override // kotlin.jvm.functions.Function2
                    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
                    public final Object invoke(v vVar, Continuation<? super v> continuation) {
                        return ((C0590a) create(vVar, continuation)).invokeSuspend(v.a);
                    }
                }

                /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$c$b$a$b, reason: collision with other inner class name */
                /* JADX INFO: compiled from: Combine.kt */
                @Metadata(mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1", f = "Combine.kt", i = {}, l = {125}, m = "emit", n = {}, s = {})
                static final class C0591b extends ContinuationImpl {
                    /* synthetic */ Object a;
                    final /* synthetic */ a<T> b;
                    int c;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    C0591b(a<? super T> aVar, Continuation<? super C0591b> continuation) {
                        super(continuation);
                        this.b = aVar;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.a = obj;
                        this.c |= Integer.MIN_VALUE;
                        return this.b.emit(null, this);
                    }
                }

                /* JADX WARN: Multi-variable type inference failed */
                a(CoroutineContext coroutineContext, Object obj, ReceiveChannel<? extends Object> receiveChannel, FlowCollector<? super R> flowCollector, Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3, CompletableJob completableJob) {
                    this.a = coroutineContext;
                    this.b = obj;
                    this.c = receiveChannel;
                    this.f10328d = flowCollector;
                    this.f10329e = function3;
                    this.f10330f = completableJob;
                }

                /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object emit(T1 r14, kotlin.coroutines.Continuation<? super kotlin.v> r15) {
                    /*
                        r13 = this;
                        boolean r0 = r15 instanceof kotlinx.coroutines.flow.internal.CombineKt.c.b.a.C0591b
                        if (r0 == 0) goto L13
                        r0 = r15
                        kotlinx.coroutines.flow.internal.CombineKt$c$b$a$b r0 = (kotlinx.coroutines.flow.internal.CombineKt.c.b.a.C0591b) r0
                        int r1 = r0.c
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.c = r1
                        goto L18
                    L13:
                        kotlinx.coroutines.flow.internal.CombineKt$c$b$a$b r0 = new kotlinx.coroutines.flow.internal.CombineKt$c$b$a$b
                        r0.<init>(r13, r15)
                    L18:
                        java.lang.Object r15 = r0.a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
                        int r2 = r0.c
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.ResultKt.throwOnFailure(r15)
                        goto L53
                    L29:
                        java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
                        java.lang.String r15 = "call to 'resume' before 'invoke' with coroutine"
                        r14.<init>(r15)
                        throw r14
                    L31:
                        kotlin.ResultKt.throwOnFailure(r15)
                        kotlin.coroutines.CoroutineContext r15 = r13.a
                        kotlin.v r2 = kotlin.v.a
                        java.lang.Object r4 = r13.b
                        kotlinx.coroutines.flow.internal.CombineKt$c$b$a$a r12 = new kotlinx.coroutines.flow.internal.CombineKt$c$b$a$a
                        kotlinx.coroutines.channels.ReceiveChannel<java.lang.Object> r6 = r13.c
                        kotlinx.coroutines.flow.j<R> r7 = r13.f10328d
                        kotlin.jvm.b.q<T1, T2, kotlin.coroutines.d<? super R>, java.lang.Object> r8 = r13.f10329e
                        kotlinx.coroutines.CompletableJob r10 = r13.f10330f
                        r11 = 0
                        r5 = r12
                        r9 = r14
                        r5.<init>(r6, r7, r8, r9, r10, r11)
                        r0.c = r3
                        java.lang.Object r14 = kotlinx.coroutines.flow.internal.ChannelFlowKt.withContextUndispatched(r15, r2, r4, r12, r0)
                        if (r14 != r1) goto L53
                        return r1
                    L53:
                        kotlin.v r14 = kotlin.v.a
                        return r14
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt.c.b.a.emit(java.lang.Object, kotlin.coroutines.d):java.lang.Object");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            b(Flow<? extends T1> flow, CoroutineContext coroutineContext, Object obj, ReceiveChannel<? extends Object> receiveChannel, FlowCollector<? super R> flowCollector, Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3, CompletableJob completableJob, Continuation<? super b> continuation) {
                super(2, continuation);
                this.b = flow;
                this.c = coroutineContext;
                this.f10324d = obj;
                this.f10325e = receiveChannel;
                this.f10326f = flowCollector;
                this.f10327g = function3;
                this.h = completableJob;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Object obj, Continuation<?> continuation) {
                return new b(this.b, this.c, this.f10324d, this.f10325e, this.f10326f, this.f10327g, this.h, continuation);
            }

            /* JADX WARN: Type inference incomplete: some casts might be missing */
            /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
                jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type kotlin.coroutines.d to kotlinx.coroutines.flow.internal.CombineKt$c$b for r10v1 'this'  kotlin.coroutines.d
                	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
                	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
                	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
                	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
                	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
                */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final java.lang.Object invokeSuspend(java.lang.Object r11) {
                /*
                    r10 = this;
                    java.lang.Object r0 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
                    int r1 = r10.a
                    r2 = 1
                    if (r1 == 0) goto L17
                    if (r1 != r2) goto Lf
                    kotlin.ResultKt.throwOnFailure(r11)
                    goto L37
                Lf:
                    java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                    java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                    r11.<init>(r0)
                    throw r11
                L17:
                    kotlin.ResultKt.throwOnFailure(r11)
                    kotlinx.coroutines.flow.i<T1> r11 = r10.b
                    kotlinx.coroutines.flow.internal.CombineKt$c$b$a r1 = new kotlinx.coroutines.flow.internal.CombineKt$c$b$a
                    kotlin.coroutines.CoroutineContext r4 = r10.c
                    java.lang.Object r5 = r10.f10324d
                    kotlinx.coroutines.channels.ReceiveChannel<java.lang.Object> r6 = r10.f10325e
                    kotlinx.coroutines.flow.j<R> r7 = r10.f10326f
                    kotlin.jvm.b.q<T1, T2, kotlin.coroutines.d<? super R>, java.lang.Object> r8 = r10.f10327g
                    kotlinx.coroutines.CompletableJob r9 = r10.h
                    r3 = r1
                    r3.<init>(r4, r5, r6, r7, r8, r9)
                    r10.a = r2
                    java.lang.Object r11 = r11.collect(r1, r10)
                    if (r11 != r0) goto L37
                    return r0
                L37:
                    kotlin.v r11 = kotlin.v.a
                    return r11
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt.c.b.invokeSuspend(java.lang.Object):java.lang.Object");
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
            public final Object invoke(v vVar, Continuation<? super v> continuation) {
                return ((b) create(vVar, continuation)).invokeSuspend(v.a);
            }
        }

        /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$c$c, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Combine.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u0004*\b\u0012\u0004\u0012\u00020\u00060\u0005H\u008a@"}, d2 = {"<anonymous>", "", "T1", "T2", "R", "Lkotlinx/coroutines/channels/ProducerScope;", ""}, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$second$1", f = "Combine.kt", i = {}, l = {86}, m = "invokeSuspend", n = {}, s = {})
        static final class C0592c extends SuspendLambda implements Function2<ProducerScope<? super Object>, Continuation<? super v>, Object> {
            int a;
            private /* synthetic */ Object b;
            final /* synthetic */ Flow<T2> c;

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$c$c$a */
            /* JADX INFO: compiled from: Combine.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u00042\u0006\u0010\u0005\u001a\u0002H\u0003H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "", "T1", "T2", "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, mv = {1, 9, 0}, xi = 48)
            static final class a<T> implements FlowCollector {
                final /* synthetic */ ProducerScope<Object> a;

                /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$c$c$a$a, reason: collision with other inner class name */
                /* JADX INFO: compiled from: Combine.kt */
                @Metadata(mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$second$1$1", f = "Combine.kt", i = {}, l = {87}, m = "emit", n = {}, s = {})
                static final class C0593a extends ContinuationImpl {
                    /* synthetic */ Object a;
                    final /* synthetic */ a<T> b;
                    int c;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    C0593a(a<? super T> aVar, Continuation<? super C0593a> continuation) {
                        super(continuation);
                        this.b = aVar;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.a = obj;
                        this.c |= Integer.MIN_VALUE;
                        return this.b.emit(null, this);
                    }
                }

                a(ProducerScope<Object> producerScope) {
                    this.a = producerScope;
                }

                /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object emit(T2 r5, kotlin.coroutines.Continuation<? super kotlin.v> r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof kotlinx.coroutines.flow.internal.CombineKt.c.C0592c.a.C0593a
                        if (r0 == 0) goto L13
                        r0 = r6
                        kotlinx.coroutines.flow.internal.CombineKt$c$c$a$a r0 = (kotlinx.coroutines.flow.internal.CombineKt.c.C0592c.a.C0593a) r0
                        int r1 = r0.c
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.c = r1
                        goto L18
                    L13:
                        kotlinx.coroutines.flow.internal.CombineKt$c$c$a$a r0 = new kotlinx.coroutines.flow.internal.CombineKt$c$c$a$a
                        r0.<init>(r4, r6)
                    L18:
                        java.lang.Object r6 = r0.a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
                        int r2 = r0.c
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L47
                    L29:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L31:
                        kotlin.ResultKt.throwOnFailure(r6)
                        kotlinx.coroutines.channels.ProducerScope<java.lang.Object> r6 = r4.a
                        kotlinx.coroutines.channels.SendChannel r6 = r6.k0()
                        if (r5 != 0) goto L3e
                        kotlinx.coroutines.internal.s r5 = kotlinx.coroutines.flow.internal.m.a
                    L3e:
                        r0.c = r3
                        java.lang.Object r5 = r6.K(r5, r0)
                        if (r5 != r1) goto L47
                        return r1
                    L47:
                        kotlin.v r5 = kotlin.v.a
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt.c.C0592c.a.emit(java.lang.Object, kotlin.coroutines.d):java.lang.Object");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C0592c(Flow<? extends T2> flow, Continuation<? super C0592c> continuation) {
                super(2, continuation);
                this.c = flow;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Object obj, Continuation<?> continuation) {
                C0592c c0592c = new C0592c(this.c, continuation);
                c0592c.b = obj;
                return c0592c;
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(ProducerScope<? super Object> producerScope, Continuation<? super v> continuation) {
                return invoke2((ProducerScope<Object>) producerScope, continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(ProducerScope<Object> producerScope, Continuation<? super v> continuation) {
                return ((C0592c) create(producerScope, continuation)).invokeSuspend(v.a);
            }

            /* JADX WARN: Type inference incomplete: some casts might be missing */
            /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
                jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type kotlin.coroutines.d to kotlinx.coroutines.flow.internal.CombineKt$c$c for r4v1 'this'  kotlin.coroutines.d
                	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
                	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
                	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
                	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
                	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
                */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final java.lang.Object invokeSuspend(java.lang.Object r5) {
                /*
                    r4 = this;
                    java.lang.Object r0 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
                    int r1 = r4.a
                    r2 = 1
                    if (r1 == 0) goto L17
                    if (r1 != r2) goto Lf
                    kotlin.ResultKt.throwOnFailure(r5)
                    goto L2e
                Lf:
                    java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                    java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                    r5.<init>(r0)
                    throw r5
                L17:
                    kotlin.ResultKt.throwOnFailure(r5)
                    java.lang.Object r5 = r4.b
                    kotlinx.coroutines.channels.ProducerScope r5 = (kotlinx.coroutines.channels.ProducerScope) r5
                    kotlinx.coroutines.flow.i<T2> r1 = r4.c
                    kotlinx.coroutines.flow.internal.CombineKt$c$c$a r3 = new kotlinx.coroutines.flow.internal.CombineKt$c$c$a
                    r3.<init>(r5)
                    r4.a = r2
                    java.lang.Object r5 = r1.collect(r3, r4)
                    if (r5 != r0) goto L2e
                    return r0
                L2e:
                    kotlin.v r5 = kotlin.v.a
                    return r5
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt.c.C0592c.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        c(Flow<? extends T2> flow, Flow<? extends T1> flow2, FlowCollector<? super R> flowCollector, Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3, Continuation<? super c> continuation) {
            super(2, continuation);
            this.f10320d = flow;
            this.f10321e = flow2;
            this.f10322f = flowCollector;
            this.f10323g = function3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            c cVar = new c(this.f10320d, this.f10321e, this.f10322f, this.f10323g, continuation);
            cVar.c = obj;
            return cVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((c) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            ReceiveChannel receiveChannel;
            CompletableJob completableJob;
            ReceiveChannel receiveChannel2;
            CompletableJob completableJob2;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.b;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.c;
                ReceiveChannel receiveChannelProduce$default = ProduceKt.produce$default(coroutineScope, null, 0, new C0592c(this.f10320d, null), 3, null);
                CompletableJob completableJobJob$default = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
                Intrinsics.checkNotNull(receiveChannelProduce$default, "null cannot be cast to non-null type kotlinx.coroutines.channels.SendChannel<*>");
                ((SendChannel) receiveChannelProduce$default).w(new a(completableJobJob$default));
                try {
                    CoroutineContext coroutineContext = coroutineScope.getCoroutineContext();
                    Object objThreadContextElements = ThreadContextKt.threadContextElements(coroutineContext);
                    CoroutineContext coroutineContextPlus = coroutineScope.getCoroutineContext().plus(completableJobJob$default);
                    v vVar = v.a;
                    b bVar = new b(this.f10321e, coroutineContext, objThreadContextElements, receiveChannelProduce$default, this.f10322f, this.f10323g, completableJobJob$default, null);
                    this.c = receiveChannelProduce$default;
                    this.a = completableJobJob$default;
                    this.b = 1;
                    completableJob = completableJobJob$default;
                    receiveChannel = receiveChannelProduce$default;
                    try {
                        if (ChannelFlowKt.withContextUndispatched$default(coroutineContextPlus, vVar, null, bVar, this, 4, null) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        receiveChannel2 = receiveChannel;
                    } catch (AbortFlowException e2) {
                        e = e2;
                        receiveChannel2 = receiveChannel;
                        completableJob2 = completableJob;
                        FlowExceptions_commonKt.checkOwnership(e, completableJob2);
                    } catch (Throwable th) {
                        th = th;
                        receiveChannel2 = receiveChannel;
                        ReceiveChannel.DefaultImpls.cancel$default(receiveChannel2, (CancellationException) null, 1, (Object) null);
                        throw th;
                    }
                } catch (AbortFlowException e3) {
                    e = e3;
                    completableJob = completableJobJob$default;
                    receiveChannel = receiveChannelProduce$default;
                } catch (Throwable th2) {
                    th = th2;
                    receiveChannel = receiveChannelProduce$default;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                completableJob2 = (CompletableJob) this.a;
                receiveChannel2 = (ReceiveChannel) this.c;
                try {
                    try {
                        ResultKt.throwOnFailure(obj);
                    } catch (AbortFlowException e4) {
                        e = e4;
                        FlowExceptions_commonKt.checkOwnership(e, completableJob2);
                    }
                } catch (Throwable th3) {
                    th = th3;
                    ReceiveChannel.DefaultImpls.cancel$default(receiveChannel2, (CancellationException) null, 1, (Object) null);
                    throw th;
                }
            }
            ReceiveChannel.DefaultImpls.cancel$default(receiveChannel2, (CancellationException) null, 1, (Object) null);
            return v.a;
        }
    }

    public static final <R, T> Object combineInternal(FlowCollector<? super R> flowCollector, Flow<? extends T>[] flowArr, Function0<T[]> function0, Function3<? super FlowCollector<? super R>, ? super T[], ? super Continuation<? super v>, ? extends Object> function3, Continuation<? super v> continuation) {
        Object objFlowScope = FlowCoroutineKt.flowScope(new a(flowArr, function0, function3, flowCollector, null), continuation);
        return objFlowScope == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objFlowScope : v.a;
    }

    public static final <T1, T2, R> Flow<R> zipImpl(Flow<? extends T1> flow, Flow<? extends T2> flow2, Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3) {
        return new b(flow2, flow, function3);
    }
}
