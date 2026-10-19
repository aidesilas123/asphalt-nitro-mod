package kotlinx.coroutines.flow;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.l0;
import kotlin.time.Duration;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.internal.ChildCancelledException;
import kotlinx.coroutines.flow.internal.FlowCoroutineKt;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectImplementation;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Exception occurred when reading Kotlin metadata
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:108)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    Caused by: kotlin.metadata.internal.protobuf.InvalidProtocolBufferException: Message was missing required fields.  (Lite runtime could not determine which fields were missing).
    	at kotlin.metadata.internal.protobuf.UninitializedMessageException.asInvalidProtocolBufferException(UninitializedMessageException.java:81)
    	at kotlin.metadata.internal.protobuf.AbstractParser.checkMessageInitialized(AbstractParser.java:71)
    	at kotlin.metadata.internal.protobuf.AbstractParser.parseFrom(AbstractParser.java:209)
    	at kotlin.metadata.internal.protobuf.AbstractParser.parseFrom(AbstractParser.java:49)
    	at kotlin.metadata.internal.metadata.ProtoBuf$Class.parseFrom(ProtoBuf.java:10614)
    	at kotlin.metadata.internal.metadata.jvm.deserialization.JvmProtoBufUtil.readClassDataFrom(JvmProtoBufUtil.kt:37)
    	at kotlin.metadata.internal.metadata.jvm.deserialization.JvmProtoBufUtil.readClassDataFrom(JvmProtoBufUtil.kt:32)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readKmClass$kotlin_metadata_jvm(JvmReadUtils.kt:27)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Class.<init>(KotlinClassMetadata.kt:95)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:50)
    	... 5 more
    */
/* JADX INFO: compiled from: Delay.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u001a2\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00050\u0004H\u0007\u001a7\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00070\u0004H\u0007¢\u0006\u0002\b\b\u001a&\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0005H\u0007\u001a0\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0007H\u0007ø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u001a7\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00050\u0004H\u0002¢\u0006\u0002\b\r\u001a\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0005H\u0000\u001a&\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u0005H\u0007\u001a0\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u0007H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\n\u001a0\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0007H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\n\u001a0\u0010\u0018\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0007H\u0002ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\n\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006\u001a"}, d2 = {"debounce", "Lkotlinx/coroutines/flow/Flow;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "timeoutMillis", "Lkotlin/Function1;", "", "timeout", "Lkotlin/time/Duration;", "debounceDuration", "debounce-HG0u8IE", "(Lkotlinx/coroutines/flow/Flow;J)Lkotlinx/coroutines/flow/Flow;", "debounceInternal", "timeoutMillisSelector", "debounceInternal$FlowKt__DelayKt", "fixedPeriodTicker", "Lkotlinx/coroutines/channels/ReceiveChannel;", "", "Lkotlinx/coroutines/CoroutineScope;", "delayMillis", "sample", "periodMillis", TypedValues.CycleType.S_WAVE_PERIOD, "sample-HG0u8IE", "timeout-HG0u8IE", "timeoutInternal", "timeoutInternal-HG0u8IE$FlowKt__DelayKt", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
final /* synthetic */ class FlowKt__DelayKt {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: Delay.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "it", "invoke", "(Ljava/lang/Object;)Ljava/lang/Long;"}, mv = {1, 9, 0}, xi = 48)
    static final class a<T> extends Lambda implements Function1<T, Long> {
        final /* synthetic */ long a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(long j) {
            super(1);
            this.a = j;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Long invoke(T t) {
            return Long.valueOf(this.a);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: Delay.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "emittedItem", "invoke", "(Ljava/lang/Object;)Ljava/lang/Long;"}, mv = {1, 9, 0}, xi = 48)
    static final class b<T> extends Lambda implements Function1<T, Long> {
        final /* synthetic */ Function1<T, Duration> a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        b(Function1<? super T, Duration> function1) {
            super(1);
            this.a = function1;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Long invoke(T t) {
            return Long.valueOf(DelayKt.m1745toDelayMillisLRDsOJo(this.a.invoke(t).getF9974e()));
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: Delay.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005H\u008a@"}, d2 = {"<anonymous>", "", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/CoroutineScope;", "downstream", "Lkotlinx/coroutines/flow/FlowCollector;"}, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1", f = "Delay.kt", i = {0, 0, 0, 0, 1, 1, 1}, l = {215, 418}, m = "invokeSuspend", n = {"downstream", "values", "lastValue", "timeoutMillis", "downstream", "values", "lastValue"}, s = {"L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2"})
    static final class c<T> extends SuspendLambda implements Function3<CoroutineScope, FlowCollector<? super T>, Continuation<? super kotlin.v>, Object> {
        Object a;
        Object b;
        int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ Object f10186d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        /* synthetic */ Object f10187e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ Function1<T, Long> f10188f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ Flow<T> f10189g;

        /* JADX INFO: compiled from: Delay.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002H\u008a@"}, d2 = {"<anonymous>", "", RequestConfiguration.MAX_AD_CONTENT_RATING_T}, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$1", f = "Delay.kt", i = {}, l = {226}, m = "invokeSuspend", n = {}, s = {})
        static final class a extends SuspendLambda implements Function1<Continuation<? super kotlin.v>, Object> {
            int a;
            final /* synthetic */ FlowCollector<T> b;
            final /* synthetic */ l0<Object> c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            a(FlowCollector<? super T> flowCollector, l0<Object> l0Var, Continuation<? super a> continuation) {
                super(1, continuation);
                this.b = flowCollector;
                this.c = l0Var;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<kotlin.v> create(Continuation<?> continuation) {
                return new a(this.b, this.c, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Continuation<? super kotlin.v> continuation) {
                return ((a) create(continuation)).invokeSuspend(kotlin.v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.a;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    FlowCollector<T> flowCollector = this.b;
                    Symbol symbol = kotlinx.coroutines.flow.internal.m.a;
                    T t = this.c.a;
                    if (t == symbol) {
                        t = null;
                    }
                    this.a = 1;
                    if (flowCollector.emit(t, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                this.c.a = null;
                return kotlin.v.a;
            }
        }

        /* JADX INFO: compiled from: Delay.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u008a@"}, d2 = {"<anonymous>", "", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "value", "Lkotlinx/coroutines/channels/ChannelResult;", ""}, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$2", f = "Delay.kt", i = {0}, l = {236}, m = "invokeSuspend", n = {"$this$onFailure_u2dWpGqRn0$iv"}, s = {"L$0"})
        static final class b extends SuspendLambda implements Function2<ChannelResult<? extends Object>, Continuation<? super kotlin.v>, Object> {
            Object a;
            int b;
            /* synthetic */ Object c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ l0<Object> f10190d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ FlowCollector<T> f10191e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            b(l0<Object> l0Var, FlowCollector<? super T> flowCollector, Continuation<? super b> continuation) {
                super(2, continuation);
                this.f10190d = l0Var;
                this.f10191e = flowCollector;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
                b bVar = new b(this.f10190d, this.f10191e, continuation);
                bVar.c = obj;
                return bVar;
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(ChannelResult<? extends Object> channelResult, Continuation<? super kotlin.v> continuation) {
                return k(channelResult.getC(), continuation);
            }

            /* JADX WARN: Type inference failed for: r7v6, types: [T, kotlinx.coroutines.internal.s] */
            /* JADX WARN: Type inference incomplete: some casts might be missing */
            /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
                jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type kotlin.coroutines.d to kotlinx.coroutines.flow.FlowKt__DelayKt$c$b for r6v1 'this'  kotlin.coroutines.d
                	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
                	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
                	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
                	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
                	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
                */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final java.lang.Object invokeSuspend(java.lang.Object r7) {
                /*
                    r6 = this;
                    java.lang.Object r0 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
                    int r1 = r6.b
                    r2 = 1
                    if (r1 == 0) goto L1b
                    if (r1 != r2) goto L13
                    java.lang.Object r0 = r6.a
                    kotlin.jvm.internal.l0 r0 = (kotlin.jvm.internal.l0) r0
                    kotlin.ResultKt.throwOnFailure(r7)
                    goto L4f
                L13:
                    java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                    java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                    r7.<init>(r0)
                    throw r7
                L1b:
                    kotlin.ResultKt.throwOnFailure(r7)
                    java.lang.Object r7 = r6.c
                    kotlinx.coroutines.channels.ChannelResult r7 = (kotlinx.coroutines.channels.ChannelResult) r7
                    java.lang.Object r7 = r7.getC()
                    kotlin.jvm.internal.l0<java.lang.Object> r1 = r6.f10190d
                    boolean r3 = r7 instanceof kotlinx.coroutines.channels.ChannelResult.c
                    if (r3 != 0) goto L2e
                    r1.a = r7
                L2e:
                    kotlinx.coroutines.flow.j<T> r4 = r6.f10191e
                    if (r3 == 0) goto L56
                    java.lang.Throwable r3 = kotlinx.coroutines.channels.ChannelResult.m1763exceptionOrNullimpl(r7)
                    if (r3 != 0) goto L55
                    T r3 = r1.a
                    if (r3 == 0) goto L50
                    kotlinx.coroutines.internal.s r5 = kotlinx.coroutines.flow.internal.m.a
                    if (r3 != r5) goto L41
                    r3 = 0
                L41:
                    r6.c = r7
                    r6.a = r1
                    r6.b = r2
                    java.lang.Object r7 = r4.emit(r3, r6)
                    if (r7 != r0) goto L4e
                    return r0
                L4e:
                    r0 = r1
                L4f:
                    r1 = r0
                L50:
                    kotlinx.coroutines.internal.s r7 = kotlinx.coroutines.flow.internal.m.c
                    r1.a = r7
                    goto L56
                L55:
                    throw r3
                L56:
                    kotlin.v r7 = kotlin.v.a
                    return r7
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__DelayKt.c.b.invokeSuspend(java.lang.Object):java.lang.Object");
            }

            public final Object k(Object obj, Continuation<? super kotlin.v> continuation) {
                return ((b) create(ChannelResult.m1759boximpl(obj), continuation)).invokeSuspend(kotlin.v.a);
            }
        }

        /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__DelayKt$c$c, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Delay.kt */
        @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u00020\u00040\u0003H\u008a@"}, d2 = {"<anonymous>", "", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/channels/ProducerScope;", ""}, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$values$1", f = "Delay.kt", i = {}, l = {204}, m = "invokeSuspend", n = {}, s = {})
        static final class C0562c extends SuspendLambda implements Function2<ProducerScope<? super Object>, Continuation<? super kotlin.v>, Object> {
            int a;
            private /* synthetic */ Object b;
            final /* synthetic */ Flow<T> c;

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__DelayKt$c$c$a */
            /* JADX INFO: compiled from: Delay.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, mv = {1, 9, 0}, xi = 48)
            static final class a<T> implements FlowCollector {
                final /* synthetic */ ProducerScope<Object> a;

                /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__DelayKt$c$c$a$a, reason: collision with other inner class name */
                /* JADX INFO: compiled from: Delay.kt */
                @Metadata(mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$values$1$1", f = "Delay.kt", i = {}, l = {204}, m = "emit", n = {}, s = {})
                static final class C0563a extends ContinuationImpl {
                    /* synthetic */ Object a;
                    final /* synthetic */ a<T> b;
                    int c;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    C0563a(a<? super T> aVar, Continuation<? super C0563a> continuation) {
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
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object emit(T r5, kotlin.coroutines.Continuation<? super kotlin.v> r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof kotlinx.coroutines.flow.FlowKt__DelayKt.c.C0562c.a.C0563a
                        if (r0 == 0) goto L13
                        r0 = r6
                        kotlinx.coroutines.flow.FlowKt__DelayKt$c$c$a$a r0 = (kotlinx.coroutines.flow.FlowKt__DelayKt.c.C0562c.a.C0563a) r0
                        int r1 = r0.c
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.c = r1
                        goto L18
                    L13:
                        kotlinx.coroutines.flow.FlowKt__DelayKt$c$c$a$a r0 = new kotlinx.coroutines.flow.FlowKt__DelayKt$c$c$a$a
                        r0.<init>(r4, r6)
                    L18:
                        java.lang.Object r6 = r0.a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
                        int r2 = r0.c
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L43
                    L29:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L31:
                        kotlin.ResultKt.throwOnFailure(r6)
                        kotlinx.coroutines.channels.ProducerScope<java.lang.Object> r6 = r4.a
                        if (r5 != 0) goto L3a
                        kotlinx.coroutines.internal.s r5 = kotlinx.coroutines.flow.internal.m.a
                    L3a:
                        r0.c = r3
                        java.lang.Object r5 = r6.K(r5, r0)
                        if (r5 != r1) goto L43
                        return r1
                    L43:
                        kotlin.v r5 = kotlin.v.a
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__DelayKt.c.C0562c.a.emit(java.lang.Object, kotlin.coroutines.d):java.lang.Object");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C0562c(Flow<? extends T> flow, Continuation<? super C0562c> continuation) {
                super(2, continuation);
                this.c = flow;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
                C0562c c0562c = new C0562c(this.c, continuation);
                c0562c.b = obj;
                return c0562c;
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(ProducerScope<? super Object> producerScope, Continuation<? super kotlin.v> continuation) {
                return invoke2((ProducerScope<Object>) producerScope, continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(ProducerScope<Object> producerScope, Continuation<? super kotlin.v> continuation) {
                return ((C0562c) create(producerScope, continuation)).invokeSuspend(kotlin.v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.a;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    ProducerScope producerScope = (ProducerScope) this.b;
                    Flow<T> flow = this.c;
                    a aVar = new a(producerScope);
                    this.a = 1;
                    if (flow.collect(aVar, this) == coroutine_suspended) {
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
        /* JADX WARN: Multi-variable type inference failed */
        c(Function1<? super T, Long> function1, Flow<? extends T> flow, Continuation<? super c> continuation) {
            super(3, continuation);
            this.f10188f = function1;
            this.f10189g = flow;
        }

        /* JADX WARN: Removed duplicated region for block: B:37:0x00cf  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x00f3  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x0119 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:54:0x011a  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x011a -> B:11:0x006e). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r19) {
            /*
                Method dump skipped, instruction units count: 292
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__DelayKt.c.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        @Override // kotlin.jvm.functions.Function3
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, FlowCollector<? super T> flowCollector, Continuation<? super kotlin.v> continuation) {
            c cVar = new c(this.f10188f, this.f10189g, continuation);
            cVar.f10186d = coroutineScope;
            cVar.f10187e = flowCollector;
            return cVar.invokeSuspend(kotlin.v.a);
        }
    }

    /* JADX INFO: compiled from: Delay.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;"}, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$fixedPeriodTicker$1", f = "Delay.kt", i = {0, 1, 2}, l = {307, 309, 310}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", "$this$produce"}, s = {"L$0", "L$0", "L$0"})
    static final class d extends SuspendLambda implements Function2<ProducerScope<? super kotlin.v>, Continuation<? super kotlin.v>, Object> {
        int a;
        private /* synthetic */ Object b;
        final /* synthetic */ long c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(long j, Continuation<? super d> continuation) {
            super(2, continuation);
            this.c = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            d dVar = new d(this.c, continuation);
            dVar.b = obj;
            return dVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope<? super kotlin.v> producerScope, Continuation<? super kotlin.v> continuation) {
            return ((d) create(producerScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0050 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:20:0x005d A[RETURN] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005b -> B:15:0x0040). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
                int r1 = r7.a
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L2a
                if (r1 == r4) goto L11
                if (r1 == r3) goto L21
                if (r1 != r2) goto L19
            L11:
                java.lang.Object r1 = r7.b
                kotlinx.coroutines.channels.ProducerScope r1 = (kotlinx.coroutines.channels.ProducerScope) r1
                kotlin.ResultKt.throwOnFailure(r8)
                goto L3f
            L19:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L21:
                java.lang.Object r1 = r7.b
                kotlinx.coroutines.channels.ProducerScope r1 = (kotlinx.coroutines.channels.ProducerScope) r1
                kotlin.ResultKt.throwOnFailure(r8)
                r8 = r7
                goto L51
            L2a:
                kotlin.ResultKt.throwOnFailure(r8)
                java.lang.Object r8 = r7.b
                r1 = r8
                kotlinx.coroutines.channels.ProducerScope r1 = (kotlinx.coroutines.channels.ProducerScope) r1
                long r5 = r7.c
                r7.b = r1
                r7.a = r4
                java.lang.Object r8 = kotlinx.coroutines.DelayKt.delay(r5, r7)
                if (r8 != r0) goto L3f
                return r0
            L3f:
                r8 = r7
            L40:
                kotlinx.coroutines.channels.SendChannel r4 = r1.k0()
                kotlin.v r5 = kotlin.v.a
                r8.b = r1
                r8.a = r3
                java.lang.Object r4 = r4.K(r5, r8)
                if (r4 != r0) goto L51
                return r0
            L51:
                long r4 = r8.c
                r8.b = r1
                r8.a = r2
                java.lang.Object r4 = kotlinx.coroutines.DelayKt.delay(r4, r8)
                if (r4 != r0) goto L40
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__DelayKt.d.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: Delay.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005H\u008a@"}, d2 = {"<anonymous>", "", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/CoroutineScope;", "downstream", "Lkotlinx/coroutines/flow/FlowCollector;"}, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2", f = "Delay.kt", i = {0, 0, 0, 0}, l = {TTAdConstant.VIDEO_COVER_URL_CODE}, m = "invokeSuspend", n = {"downstream", "values", "lastValue", "ticker"}, s = {"L$0", "L$1", "L$2", "L$3"})
    static final class e<T> extends SuspendLambda implements Function3<CoroutineScope, FlowCollector<? super T>, Continuation<? super kotlin.v>, Object> {
        Object a;
        Object b;
        int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ Object f10192d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        /* synthetic */ Object f10193e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ long f10194f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ Flow<T> f10195g;

        /* JADX INFO: compiled from: Delay.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u008a@"}, d2 = {"<anonymous>", "", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "result", "Lkotlinx/coroutines/channels/ChannelResult;", ""}, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2$1$1", f = "Delay.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class a extends SuspendLambda implements Function2<ChannelResult<? extends Object>, Continuation<? super kotlin.v>, Object> {
            int a;
            /* synthetic */ Object b;
            final /* synthetic */ l0<Object> c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ ReceiveChannel<kotlin.v> f10196d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(l0<Object> l0Var, ReceiveChannel<kotlin.v> receiveChannel, Continuation<? super a> continuation) {
                super(2, continuation);
                this.c = l0Var;
                this.f10196d = receiveChannel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
                a aVar = new a(this.c, this.f10196d, continuation);
                aVar.b = obj;
                return aVar;
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(ChannelResult<? extends Object> channelResult, Continuation<? super kotlin.v> continuation) {
                return k(channelResult.getC(), continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.a != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                T t = (T) ((ChannelResult) this.b).getC();
                l0<Object> l0Var = this.c;
                boolean z = t instanceof ChannelResult.c;
                if (!z) {
                    l0Var.a = t;
                }
                ReceiveChannel<kotlin.v> receiveChannel = this.f10196d;
                if (z) {
                    Throwable thM1763exceptionOrNullimpl = ChannelResult.m1763exceptionOrNullimpl(t);
                    if (thM1763exceptionOrNullimpl != null) {
                        throw thM1763exceptionOrNullimpl;
                    }
                    receiveChannel.b(new ChildCancelledException());
                    l0Var.a = (T) kotlinx.coroutines.flow.internal.m.c;
                }
                return kotlin.v.a;
            }

            public final Object k(Object obj, Continuation<? super kotlin.v> continuation) {
                return ((a) create(ChannelResult.m1759boximpl(obj), continuation)).invokeSuspend(kotlin.v.a);
            }
        }

        /* JADX INFO: compiled from: Delay.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", "", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "it"}, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2$1$2", f = "Delay.kt", i = {}, l = {293}, m = "invokeSuspend", n = {}, s = {})
        static final class b extends SuspendLambda implements Function2<kotlin.v, Continuation<? super kotlin.v>, Object> {
            int a;
            final /* synthetic */ l0<Object> b;
            final /* synthetic */ FlowCollector<T> c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            b(l0<Object> l0Var, FlowCollector<? super T> flowCollector, Continuation<? super b> continuation) {
                super(2, continuation);
                this.b = l0Var;
                this.c = flowCollector;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
                return new b(this.b, this.c, continuation);
            }

            /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
                jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type kotlin.coroutines.d to kotlinx.coroutines.flow.FlowKt__DelayKt$e$b for r5v1 'this'  kotlin.coroutines.d
                	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
                	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
                	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
                	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
                	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
                */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final java.lang.Object invokeSuspend(java.lang.Object r6) {
                /*
                    r5 = this;
                    java.lang.Object r0 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
                    int r1 = r5.a
                    r2 = 1
                    if (r1 == 0) goto L17
                    if (r1 != r2) goto Lf
                    kotlin.ResultKt.throwOnFailure(r6)
                    goto L36
                Lf:
                    java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                    java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                    r6.<init>(r0)
                    throw r6
                L17:
                    kotlin.ResultKt.throwOnFailure(r6)
                    kotlin.jvm.internal.l0<java.lang.Object> r6 = r5.b
                    T r1 = r6.a
                    if (r1 != 0) goto L23
                    kotlin.v r6 = kotlin.v.a
                    return r6
                L23:
                    r3 = 0
                    r6.a = r3
                    kotlinx.coroutines.flow.j<T> r6 = r5.c
                    kotlinx.coroutines.internal.s r4 = kotlinx.coroutines.flow.internal.m.a
                    if (r1 != r4) goto L2d
                    r1 = r3
                L2d:
                    r5.a = r2
                    java.lang.Object r6 = r6.emit(r1, r5)
                    if (r6 != r0) goto L36
                    return r0
                L36:
                    kotlin.v r6 = kotlin.v.a
                    return r6
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__DelayKt.e.b.invokeSuspend(java.lang.Object):java.lang.Object");
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
            public final Object invoke(kotlin.v vVar, Continuation<? super kotlin.v> continuation) {
                return ((b) create(vVar, continuation)).invokeSuspend(kotlin.v.a);
            }
        }

        /* JADX INFO: compiled from: Delay.kt */
        @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u00020\u00040\u0003H\u008a@"}, d2 = {"<anonymous>", "", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/channels/ProducerScope;", ""}, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2$values$1", f = "Delay.kt", i = {}, l = {273}, m = "invokeSuspend", n = {}, s = {})
        static final class c extends SuspendLambda implements Function2<ProducerScope<? super Object>, Continuation<? super kotlin.v>, Object> {
            int a;
            private /* synthetic */ Object b;
            final /* synthetic */ Flow<T> c;

            /* JADX INFO: compiled from: Delay.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, mv = {1, 9, 0}, xi = 48)
            static final class a<T> implements FlowCollector {
                final /* synthetic */ ProducerScope<Object> a;

                /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__DelayKt$e$c$a$a, reason: collision with other inner class name */
                /* JADX INFO: compiled from: Delay.kt */
                @Metadata(mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2$values$1$1", f = "Delay.kt", i = {}, l = {273}, m = "emit", n = {}, s = {})
                static final class C0564a extends ContinuationImpl {
                    /* synthetic */ Object a;
                    final /* synthetic */ a<T> b;
                    int c;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    C0564a(a<? super T> aVar, Continuation<? super C0564a> continuation) {
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
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object emit(T r5, kotlin.coroutines.Continuation<? super kotlin.v> r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof kotlinx.coroutines.flow.FlowKt__DelayKt.e.c.a.C0564a
                        if (r0 == 0) goto L13
                        r0 = r6
                        kotlinx.coroutines.flow.FlowKt__DelayKt$e$c$a$a r0 = (kotlinx.coroutines.flow.FlowKt__DelayKt.e.c.a.C0564a) r0
                        int r1 = r0.c
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.c = r1
                        goto L18
                    L13:
                        kotlinx.coroutines.flow.FlowKt__DelayKt$e$c$a$a r0 = new kotlinx.coroutines.flow.FlowKt__DelayKt$e$c$a$a
                        r0.<init>(r4, r6)
                    L18:
                        java.lang.Object r6 = r0.a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
                        int r2 = r0.c
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L43
                    L29:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L31:
                        kotlin.ResultKt.throwOnFailure(r6)
                        kotlinx.coroutines.channels.ProducerScope<java.lang.Object> r6 = r4.a
                        if (r5 != 0) goto L3a
                        kotlinx.coroutines.internal.s r5 = kotlinx.coroutines.flow.internal.m.a
                    L3a:
                        r0.c = r3
                        java.lang.Object r5 = r6.K(r5, r0)
                        if (r5 != r1) goto L43
                        return r1
                    L43:
                        kotlin.v r5 = kotlin.v.a
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__DelayKt.e.c.a.emit(java.lang.Object, kotlin.coroutines.d):java.lang.Object");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            c(Flow<? extends T> flow, Continuation<? super c> continuation) {
                super(2, continuation);
                this.c = flow;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
                c cVar = new c(this.c, continuation);
                cVar.b = obj;
                return cVar;
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(ProducerScope<? super Object> producerScope, Continuation<? super kotlin.v> continuation) {
                return invoke2((ProducerScope<Object>) producerScope, continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(ProducerScope<Object> producerScope, Continuation<? super kotlin.v> continuation) {
                return ((c) create(producerScope, continuation)).invokeSuspend(kotlin.v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.a;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    ProducerScope producerScope = (ProducerScope) this.b;
                    Flow<T> flow = this.c;
                    a aVar = new a(producerScope);
                    this.a = 1;
                    if (flow.collect(aVar, this) == coroutine_suspended) {
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
        /* JADX WARN: Multi-variable type inference failed */
        e(long j, Flow<? extends T> flow, Continuation<? super e> continuation) {
            super(3, continuation);
            this.f10194f = j;
            this.f10195g = flow;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            FlowCollector flowCollector;
            ReceiveChannel<kotlin.v> receiveChannelFixedPeriodTicker;
            e<T> eVar;
            ReceiveChannel receiveChannel;
            l0 l0Var;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.c;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.f10192d;
                FlowCollector flowCollector2 = (FlowCollector) this.f10193e;
                ReceiveChannel receiveChannelProduce$default = ProduceKt.produce$default(coroutineScope, null, -1, new c(this.f10195g, null), 1, null);
                l0 l0Var2 = new l0();
                flowCollector = flowCollector2;
                receiveChannelFixedPeriodTicker = FlowKt.fixedPeriodTicker(coroutineScope, this.f10194f);
                eVar = this;
                receiveChannel = receiveChannelProduce$default;
                l0Var = l0Var2;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                receiveChannelFixedPeriodTicker = (ReceiveChannel) this.b;
                l0Var = (l0) this.a;
                receiveChannel = (ReceiveChannel) this.f10193e;
                flowCollector = (FlowCollector) this.f10192d;
                ResultKt.throwOnFailure(obj);
                eVar = this;
            }
            while (l0Var.a != kotlinx.coroutines.flow.internal.m.c) {
                SelectImplementation selectImplementation = new SelectImplementation(eVar.getB());
                selectImplementation.h(receiveChannel.A(), new a(l0Var, receiveChannelFixedPeriodTicker, null));
                selectImplementation.h(receiveChannelFixedPeriodTicker.z(), new b(l0Var, flowCollector, null));
                eVar.f10192d = flowCollector;
                eVar.f10193e = receiveChannel;
                eVar.a = l0Var;
                eVar.b = receiveChannelFixedPeriodTicker;
                eVar.c = 1;
                if (selectImplementation.l(eVar) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return kotlin.v.a;
        }

        @Override // kotlin.jvm.functions.Function3
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, FlowCollector<? super T> flowCollector, Continuation<? super kotlin.v> continuation) {
            e eVar = new e(this.f10194f, this.f10195g, continuation);
            eVar.f10192d = coroutineScope;
            eVar.f10193e = flowCollector;
            return eVar.invokeSuspend(kotlin.v.a);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: Delay.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005H\u008a@"}, d2 = {"<anonymous>", "", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/CoroutineScope;", "downStream", "Lkotlinx/coroutines/flow/FlowCollector;"}, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1", f = "Delay.kt", i = {0, 0}, l = {TypedValues.CycleType.TYPE_PATH_ROTATE}, m = "invokeSuspend", n = {"downStream", "values"}, s = {"L$0", "L$1"})
    static final class f<T> extends SuspendLambda implements Function3<CoroutineScope, FlowCollector<? super T>, Continuation<? super kotlin.v>, Object> {
        long a;
        int b;
        private /* synthetic */ Object c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        /* synthetic */ Object f10197d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ long f10198e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ Flow<T> f10199f;

        /* JADX INFO: compiled from: Delay.kt */
        @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "value", "Lkotlinx/coroutines/channels/ChannelResult;"}, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1$1$1", f = "Delay.kt", i = {0}, l = {395}, m = "invokeSuspend", n = {"$this$onSuccess_u2dWpGqRn0$iv"}, s = {"L$0"})
        static final class a extends SuspendLambda implements Function2<ChannelResult<? extends T>, Continuation<? super Boolean>, Object> {
            int a;
            /* synthetic */ Object b;
            final /* synthetic */ FlowCollector<T> c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            a(FlowCollector<? super T> flowCollector, Continuation<? super a> continuation) {
                super(2, continuation);
                this.c = flowCollector;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
                a aVar = new a(this.c, continuation);
                aVar.b = obj;
                return aVar;
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Continuation<? super Boolean> continuation) {
                return k(((ChannelResult) obj).getC(), continuation);
            }

            /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
                jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type kotlin.coroutines.d to kotlinx.coroutines.flow.FlowKt__DelayKt$f$a for r4v1 'this'  kotlin.coroutines.d
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
                    if (r1 == 0) goto L19
                    if (r1 != r2) goto L11
                    java.lang.Object r0 = r4.b
                    kotlin.ResultKt.throwOnFailure(r5)
                    goto L36
                L11:
                    java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                    java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                    r5.<init>(r0)
                    throw r5
                L19:
                    kotlin.ResultKt.throwOnFailure(r5)
                    java.lang.Object r5 = r4.b
                    kotlinx.coroutines.channels.ChannelResult r5 = (kotlinx.coroutines.channels.ChannelResult) r5
                    java.lang.Object r5 = r5.getC()
                    kotlinx.coroutines.flow.j<T> r1 = r4.c
                    boolean r3 = r5 instanceof kotlinx.coroutines.channels.ChannelResult.c
                    if (r3 != 0) goto L37
                    r4.b = r5
                    r4.a = r2
                    java.lang.Object r1 = r1.emit(r5, r4)
                    if (r1 != r0) goto L35
                    return r0
                L35:
                    r0 = r5
                L36:
                    r5 = r0
                L37:
                    boolean r0 = r5 instanceof kotlinx.coroutines.channels.ChannelResult.Closed
                    if (r0 == 0) goto L49
                    java.lang.Throwable r5 = kotlinx.coroutines.channels.ChannelResult.m1763exceptionOrNullimpl(r5)
                    if (r5 != 0) goto L48
                    r5 = 0
                    java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)
                    return r5
                L48:
                    throw r5
                L49:
                    java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r2)
                    return r5
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__DelayKt.f.a.invokeSuspend(java.lang.Object):java.lang.Object");
            }

            public final Object k(Object obj, Continuation<? super Boolean> continuation) {
                return ((a) create(ChannelResult.m1759boximpl(obj), continuation)).invokeSuspend(kotlin.v.a);
            }
        }

        /* JADX INFO: compiled from: Delay.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0001\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002H\u008a@"}, d2 = {"<anonymous>", "", RequestConfiguration.MAX_AD_CONTENT_RATING_T}, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1$1$2", f = "Delay.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class b extends SuspendLambda implements Function1<Continuation<?>, Object> {
            int a;
            final /* synthetic */ long b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(long j, Continuation<? super b> continuation) {
                super(1, continuation);
                this.b = j;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<kotlin.v> create(Continuation<?> continuation) {
                return new b(this.b, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Continuation<?> continuation) {
                return ((b) create(continuation)).invokeSuspend(kotlin.v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.a != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                throw new TimeoutCancellationException("Timed out waiting for " + ((Object) Duration.m1699toStringimpl(this.b)));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        f(long j, Flow<? extends T> flow, Continuation<? super f> continuation) {
            super(3, continuation);
            this.f10198e = j;
            this.f10199f = flow;
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x007c A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:14:0x007d  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x008c  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x008f  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x007d -> B:15:0x0084). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r12) {
            /*
                r11 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
                int r1 = r11.b
                r2 = 1
                r3 = 0
                if (r1 == 0) goto L27
                if (r1 != r2) goto L1f
                long r4 = r11.a
                java.lang.Object r1 = r11.f10197d
                kotlinx.coroutines.channels.ReceiveChannel r1 = (kotlinx.coroutines.channels.ReceiveChannel) r1
                java.lang.Object r6 = r11.c
                kotlinx.coroutines.flow.j r6 = (kotlinx.coroutines.flow.FlowCollector) r6
                kotlin.ResultKt.throwOnFailure(r12)
                r7 = r6
                r5 = r4
                r4 = r1
                r1 = r0
                r0 = r11
                goto L84
            L1f:
                java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r12.<init>(r0)
                throw r12
            L27:
                kotlin.ResultKt.throwOnFailure(r12)
                java.lang.Object r12 = r11.c
                kotlinx.coroutines.s r12 = (kotlinx.coroutines.CoroutineScope) r12
                java.lang.Object r1 = r11.f10197d
                kotlinx.coroutines.flow.j r1 = (kotlinx.coroutines.flow.FlowCollector) r1
                long r4 = r11.f10198e
                kotlin.time.Duration$Companion r6 = kotlin.time.Duration.a
                long r6 = r6.c()
                int r4 = kotlin.time.Duration.m1654compareToLRDsOJo(r4, r6)
                if (r4 <= 0) goto L95
                kotlinx.coroutines.flow.i<T> r4 = r11.f10199f
                r5 = 0
                r6 = 2
                kotlinx.coroutines.flow.i r4 = kotlinx.coroutines.flow.FlowKt.buffer$default(r4, r5, r3, r6, r3)
                kotlinx.coroutines.channels.ReceiveChannel r12 = kotlinx.coroutines.flow.FlowKt.produceIn(r4, r12)
                long r4 = r11.f10198e
                r6 = r1
                r1 = r12
                r12 = r11
            L51:
                kotlinx.coroutines.selects.SelectImplementation r7 = new kotlinx.coroutines.selects.SelectImplementation
                kotlin.coroutines.CoroutineContext r8 = r12.getB()
                r7.<init>(r8)
                kotlinx.coroutines.selects.c r8 = r1.A()
                kotlinx.coroutines.flow.FlowKt__DelayKt$f$a r9 = new kotlinx.coroutines.flow.FlowKt__DelayKt$f$a
                r9.<init>(r6, r3)
                r7.h(r8, r9)
                kotlinx.coroutines.flow.FlowKt__DelayKt$f$b r8 = new kotlinx.coroutines.flow.FlowKt__DelayKt$f$b
                r8.<init>(r4, r3)
                kotlinx.coroutines.selects.OnTimeoutKt.m1799onTimeout8Mi8wO0(r7, r4, r8)
                r12.c = r6
                r12.f10197d = r1
                r12.a = r4
                r12.b = r2
                java.lang.Object r7 = r7.l(r12)
                if (r7 != r0) goto L7d
                return r0
            L7d:
                r10 = r0
                r0 = r12
                r12 = r7
                r7 = r6
                r5 = r4
                r4 = r1
                r1 = r10
            L84:
                java.lang.Boolean r12 = (java.lang.Boolean) r12
                boolean r12 = r12.booleanValue()
                if (r12 != 0) goto L8f
                kotlin.v r12 = kotlin.v.a
                return r12
            L8f:
                r12 = r0
                r0 = r1
                r1 = r4
                r4 = r5
                r6 = r7
                goto L51
            L95:
                kotlinx.coroutines.f1 r12 = new kotlinx.coroutines.f1
                java.lang.String r0 = "Timed out immediately"
                r12.<init>(r0)
                throw r12
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__DelayKt.f.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        @Override // kotlin.jvm.functions.Function3
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, FlowCollector<? super T> flowCollector, Continuation<? super kotlin.v> continuation) {
            f fVar = new f(this.f10198e, this.f10199f, continuation);
            fVar.c = coroutineScope;
            fVar.f10197d = flowCollector;
            return fVar.invokeSuspend(kotlin.v.a);
        }
    }

    private static final <T> Flow<T> a(Flow<? extends T> flow, Function1<? super T, Long> function1) {
        return FlowCoroutineKt.scopedFlow(new c(function1, flow, null));
    }

    private static final <T> Flow<T> b(Flow<? extends T> flow, long j) {
        return FlowCoroutineKt.scopedFlow(new f(j, flow, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> Flow<T> debounce(Flow<? extends T> flow, long j) {
        if (j >= 0) {
            return j == 0 ? flow : a(flow, new a(j));
        }
        throw new IllegalArgumentException("Debounce timeout should not be negative".toString());
    }

    public static final <T> Flow<T> debounce(Flow<? extends T> flow, Function1<? super T, Long> function1) {
        return a(flow, function1);
    }

    /* JADX INFO: renamed from: debounce-HG0u8IE, reason: not valid java name */
    public static final <T> Flow<T> m1775debounceHG0u8IE(Flow<? extends T> flow, long j) {
        return FlowKt.debounce(flow, DelayKt.m1745toDelayMillisLRDsOJo(j));
    }

    public static final <T> Flow<T> debounceDuration(Flow<? extends T> flow, Function1<? super T, Duration> function1) {
        return a(flow, new b(function1));
    }

    public static final ReceiveChannel<kotlin.v> fixedPeriodTicker(CoroutineScope coroutineScope, long j) {
        return ProduceKt.produce$default(coroutineScope, null, 0, new d(j, null), 1, null);
    }

    public static final <T> Flow<T> sample(Flow<? extends T> flow, long j) {
        if (j > 0) {
            return FlowCoroutineKt.scopedFlow(new e(j, flow, null));
        }
        throw new IllegalArgumentException("Sample period should be positive".toString());
    }

    /* JADX INFO: renamed from: sample-HG0u8IE, reason: not valid java name */
    public static final <T> Flow<T> m1776sampleHG0u8IE(Flow<? extends T> flow, long j) {
        return FlowKt.sample(flow, DelayKt.m1745toDelayMillisLRDsOJo(j));
    }

    /* JADX INFO: renamed from: timeout-HG0u8IE, reason: not valid java name */
    public static final <T> Flow<T> m1777timeoutHG0u8IE(Flow<? extends T> flow, long j) {
        return b(flow, j);
    }
}
