package kotlinx.coroutines.channels;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.v;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.selects.SelectInstance;

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
/* JADX INFO: compiled from: BroadcastChannel.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\n\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u000245B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0017\u0010\u001f\u001a\u00020\n2\b\u0010 \u001a\u0004\u0018\u00010!H\u0010¢\u0006\u0002\b\"J\u0012\u0010#\u001a\u00020\n2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u000e\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000%H\u0016J\u001e\u0010&\u001a\u00020'2\n\u0010(\u001a\u0006\u0012\u0002\b\u00030\u00132\b\u0010)\u001a\u0004\u0018\u00010\rH\u0014J\u0016\u0010*\u001a\u00020'2\f\u0010+\u001a\b\u0012\u0004\u0012\u00028\u00000%H\u0002J\u0016\u0010,\u001a\u00020'2\u0006\u0010)\u001a\u00028\u0000H\u0096@¢\u0006\u0002\u0010-J\b\u0010.\u001a\u00020/H\u0016J#\u00100\u001a\b\u0012\u0004\u0012\u00020'012\u0006\u0010)\u001a\u00028\u0000H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b2\u00103R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\u000bR\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00060\u000fj\u0002`\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R6\u0010\u0011\u001a*\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0013\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0012j\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0013\u0012\u0006\u0012\u0004\u0018\u00010\r`\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\u0017\u001a\u00028\u00008F¢\u0006\f\u0012\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0019\u0010\u001c\u001a\u0004\u0018\u00018\u00008F¢\u0006\f\u0012\u0004\b\u001d\u0010\u0019\u001a\u0004\b\u001e\u0010\u001b\u0082\u0002\u000b\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u00066"}, d2 = {"Lkotlinx/coroutines/channels/BroadcastChannelImpl;", "E", "Lkotlinx/coroutines/channels/BufferedChannel;", "Lkotlinx/coroutines/channels/BroadcastChannel;", "capacity", "", "(I)V", "getCapacity", "()I", "isClosedForSend", "", "()Z", "lastConflatedElement", "", "lock", "Ljava/util/concurrent/locks/ReentrantLock;", "Lkotlinx/coroutines/internal/ReentrantLock;", "onSendInternalResult", "Ljava/util/HashMap;", "Lkotlinx/coroutines/selects/SelectInstance;", "Lkotlin/collections/HashMap;", "subscribers", "", "value", "getValue$annotations", "()V", "getValue", "()Ljava/lang/Object;", "valueOrNull", "getValueOrNull$annotations", "getValueOrNull", "cancelImpl", "cause", "", "cancelImpl$kotlinx_coroutines_core", "close", "openSubscription", "Lkotlinx/coroutines/channels/ReceiveChannel;", "registerSelectForSend", "", "select", "element", "removeSubscriber", "s", "send", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "toString", "", "trySend", "Lkotlinx/coroutines/channels/ChannelResult;", "trySend-JP2dKIU", "(Ljava/lang/Object;)Ljava/lang/Object;", "SubscriberBuffered", "SubscriberConflated", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
public final class BroadcastChannelImpl<E> extends BufferedChannel<E> implements BroadcastChannel<E> {
    private final int m;
    private final ReentrantLock n;
    private List<? extends BufferedChannel<E>> o;
    private Object p;
    private final HashMap<SelectInstance<?>, Object> q;

    /* JADX INFO: compiled from: BroadcastChannel.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0000\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016¨\u0006\u0007"}, d2 = {"Lkotlinx/coroutines/channels/BroadcastChannelImpl$SubscriberBuffered;", "Lkotlinx/coroutines/channels/BufferedChannel;", "(Lkotlinx/coroutines/channels/BroadcastChannelImpl;)V", "cancelImpl", "", "cause", "", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
    private final class a extends BufferedChannel<E> {
        /* JADX WARN: Multi-variable type inference failed */
        public a() {
            super(BroadcastChannelImpl.this.a1(), null, 2, 0 == true ? 1 : 0);
        }

        @Override // kotlinx.coroutines.channels.BufferedChannel
        /* JADX INFO: renamed from: a1, reason: merged with bridge method [inline-methods] */
        public boolean d(Throwable th) {
            ReentrantLock reentrantLock = ((BroadcastChannelImpl) BroadcastChannelImpl.this).n;
            BroadcastChannelImpl<E> broadcastChannelImpl = BroadcastChannelImpl.this;
            reentrantLock.lock();
            try {
                broadcastChannelImpl.c1(this);
                return super.d(th);
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    /* JADX INFO: compiled from: BroadcastChannel.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0000\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016¨\u0006\u0007"}, d2 = {"Lkotlinx/coroutines/channels/BroadcastChannelImpl$SubscriberConflated;", "Lkotlinx/coroutines/channels/ConflatedBufferedChannel;", "(Lkotlinx/coroutines/channels/BroadcastChannelImpl;)V", "cancelImpl", "", "cause", "", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
    private final class b extends ConflatedBufferedChannel<E> {
        public b() {
            super(1, BufferOverflow.b, null, 4, null);
        }

        @Override // kotlinx.coroutines.channels.BufferedChannel
        /* JADX INFO: renamed from: e1, reason: merged with bridge method [inline-methods] */
        public boolean d(Throwable th) {
            BroadcastChannelImpl.this.c1(this);
            return super.d(th);
        }
    }

    /* JADX INFO: compiled from: BroadcastChannel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "E", "Lkotlinx/coroutines/CoroutineScope;"}, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.BroadcastChannelImpl$registerSelectForSend$2", f = "BroadcastChannel.kt", i = {}, l = {288}, m = "invokeSuspend", n = {}, s = {})
    static final class c extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        int a;
        final /* synthetic */ BroadcastChannelImpl<E> b;
        final /* synthetic */ Object c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ SelectInstance<?> f10019d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(BroadcastChannelImpl<E> broadcastChannelImpl, Object obj, SelectInstance<?> selectInstance, Continuation<? super c> continuation) {
            super(2, continuation);
            this.b = broadcastChannelImpl;
            this.c = obj;
            this.f10019d = selectInstance;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new c(this.b, this.c, this.f10019d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((c) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type kotlin.coroutines.d to kotlinx.coroutines.channels.BroadcastChannelImpl$c for r6v1 'this'  kotlin.coroutines.d
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
                int r1 = r6.a
                r2 = 0
                r3 = 1
                if (r1 == 0) goto L1a
                if (r1 != r3) goto L12
                kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L10
                goto L2a
            L10:
                r7 = move-exception
                goto L2c
            L12:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L1a:
                kotlin.ResultKt.throwOnFailure(r7)
                kotlinx.coroutines.channels.BroadcastChannelImpl<E> r7 = r6.b     // Catch: java.lang.Throwable -> L10
                java.lang.Object r1 = r6.c     // Catch: java.lang.Throwable -> L10
                r6.a = r3     // Catch: java.lang.Throwable -> L10
                java.lang.Object r7 = r7.K(r1, r6)     // Catch: java.lang.Throwable -> L10
                if (r7 != r0) goto L2a
                return r0
            L2a:
                r7 = 1
                goto L41
            L2c:
                kotlinx.coroutines.channels.BroadcastChannelImpl<E> r0 = r6.b
                boolean r0 = r0.L()
                if (r0 == 0) goto L9d
                boolean r0 = r7 instanceof kotlinx.coroutines.channels.ClosedSendChannelException
                if (r0 != 0) goto L40
                kotlinx.coroutines.channels.BroadcastChannelImpl<E> r0 = r6.b
                java.lang.Throwable r0 = r0.N()
                if (r0 != r7) goto L9d
            L40:
                r7 = 0
            L41:
                kotlinx.coroutines.channels.BroadcastChannelImpl<E> r0 = r6.b
                java.util.concurrent.locks.ReentrantLock r0 = kotlinx.coroutines.channels.BroadcastChannelImpl.access$getLock$p(r0)
                kotlinx.coroutines.channels.BroadcastChannelImpl<E> r1 = r6.b
                kotlinx.coroutines.selects.h<?> r4 = r6.f10019d
                r0.lock()
                boolean r5 = kotlinx.coroutines.DebugKt.getASSERTIONS_ENABLED()     // Catch: java.lang.Throwable -> L98
                if (r5 == 0) goto L68
                java.util.HashMap r5 = kotlinx.coroutines.channels.BroadcastChannelImpl.access$getOnSendInternalResult$p(r1)     // Catch: java.lang.Throwable -> L98
                java.lang.Object r5 = r5.get(r4)     // Catch: java.lang.Throwable -> L98
                if (r5 != 0) goto L5f
                r2 = 1
            L5f:
                if (r2 == 0) goto L62
                goto L68
            L62:
                java.lang.AssertionError r7 = new java.lang.AssertionError     // Catch: java.lang.Throwable -> L98
                r7.<init>()     // Catch: java.lang.Throwable -> L98
                throw r7     // Catch: java.lang.Throwable -> L98
            L68:
                java.util.HashMap r2 = kotlinx.coroutines.channels.BroadcastChannelImpl.access$getOnSendInternalResult$p(r1)     // Catch: java.lang.Throwable -> L98
                if (r7 == 0) goto L71
                kotlin.v r7 = kotlin.v.a     // Catch: java.lang.Throwable -> L98
                goto L75
            L71:
                kotlinx.coroutines.internal.s r7 = kotlinx.coroutines.channels.BufferedChannelKt.getCHANNEL_CLOSED()     // Catch: java.lang.Throwable -> L98
            L75:
                r2.put(r4, r7)     // Catch: java.lang.Throwable -> L98
                java.lang.String r7 = "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>"
                kotlin.jvm.internal.Intrinsics.checkNotNull(r4, r7)     // Catch: java.lang.Throwable -> L98
                r7 = r4
                kotlinx.coroutines.selects.SelectImplementation r7 = (kotlinx.coroutines.selects.SelectImplementation) r7     // Catch: java.lang.Throwable -> L98
                r7 = r4
                kotlinx.coroutines.selects.SelectImplementation r7 = (kotlinx.coroutines.selects.SelectImplementation) r7     // Catch: java.lang.Throwable -> L98
                kotlin.v r2 = kotlin.v.a     // Catch: java.lang.Throwable -> L98
                kotlinx.coroutines.selects.TrySelectDetailedResult r7 = r7.w(r1, r2)     // Catch: java.lang.Throwable -> L98
                kotlinx.coroutines.selects.TrySelectDetailedResult r3 = kotlinx.coroutines.selects.TrySelectDetailedResult.b     // Catch: java.lang.Throwable -> L98
                if (r7 == r3) goto L94
                java.util.HashMap r7 = kotlinx.coroutines.channels.BroadcastChannelImpl.access$getOnSendInternalResult$p(r1)     // Catch: java.lang.Throwable -> L98
                r7.remove(r4)     // Catch: java.lang.Throwable -> L98
            L94:
                r0.unlock()
                return r2
            L98:
                r7 = move-exception
                r0.unlock()
                throw r7
            L9d:
                throw r7
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BroadcastChannelImpl.c.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: compiled from: BroadcastChannel.kt */
    @Metadata(mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.BroadcastChannelImpl", f = "BroadcastChannel.kt", i = {0, 0}, l = {227}, m = "send", n = {"this", "element"}, s = {"L$0", "L$1"})
    static final class d extends ContinuationImpl {
        Object a;
        Object b;
        Object c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        /* synthetic */ Object f10020d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ BroadcastChannelImpl<E> f10021e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f10022f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(BroadcastChannelImpl<E> broadcastChannelImpl, Continuation<? super d> continuation) {
            super(continuation);
            this.f10021e = broadcastChannelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f10020d = obj;
            this.f10022f |= Integer.MIN_VALUE;
            return this.f10021e.K(null, this);
        }
    }

    public BroadcastChannelImpl(int i) {
        super(0, null);
        this.m = i;
        if (i >= 1 || i == -1) {
            this.n = new ReentrantLock();
            this.o = CollectionsKt__CollectionsKt.emptyList();
            this.p = BroadcastChannelKt.a;
            this.q = new HashMap<>();
            return;
        }
        throw new IllegalArgumentException(("BroadcastChannel capacity must be positive or Channel.CONFLATED, but " + i + " was specified").toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void c1(ReceiveChannel<? extends E> receiveChannel) {
        ReentrantLock reentrantLock = this.n;
        reentrantLock.lock();
        try {
            List<? extends BufferedChannel<E>> list = this.o;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((BufferedChannel) obj) != receiveChannel) {
                    arrayList.add(obj);
                }
            }
            this.o = arrayList;
            v vVar = v.a;
        } finally {
            reentrantLock.unlock();
        }
    }

    public static /* synthetic */ void getValue$annotations() {
    }

    public static /* synthetic */ void getValueOrNull$annotations() {
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    protected void D0(SelectInstance<?> selectInstance, Object obj) {
        ReentrantLock reentrantLock = this.n;
        reentrantLock.lock();
        try {
            Object objRemove = this.q.remove(selectInstance);
            if (objRemove != null) {
                selectInstance.e(objRemove);
                return;
            }
            v vVar = v.a;
            reentrantLock.unlock();
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(selectInstance.getContext()), null, CoroutineStart.f9989d, new c(this, obj, selectInstance, null), 1, null);
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    public boolean J(Throwable th) {
        ReentrantLock reentrantLock = this.n;
        reentrantLock.lock();
        try {
            Iterator<T> it = this.o.iterator();
            while (it.hasNext()) {
                ((BufferedChannel) it.next()).J(th);
            }
            List<? extends BufferedChannel<E>> list = this.o;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((BufferedChannel) obj).S()) {
                    arrayList.add(obj);
                }
            }
            this.o = arrayList;
            return super.J(th);
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0078 -> B:28:0x007b). Please report as a decompilation issue!!! */
    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object K(E r7, kotlin.coroutines.Continuation<? super kotlin.v> r8) throws java.lang.Throwable {
        /*
            r6 = this;
            boolean r0 = r8 instanceof kotlinx.coroutines.channels.BroadcastChannelImpl.d
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.channels.BroadcastChannelImpl$d r0 = (kotlinx.coroutines.channels.BroadcastChannelImpl.d) r0
            int r1 = r0.f10022f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f10022f = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.BroadcastChannelImpl$d r0 = new kotlinx.coroutines.channels.BroadcastChannelImpl$d
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.f10020d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f10022f
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r7 = r0.c
            java.util.Iterator r7 = (java.util.Iterator) r7
            java.lang.Object r2 = r0.b
            java.lang.Object r4 = r0.a
            kotlinx.coroutines.channels.BroadcastChannelImpl r4 = (kotlinx.coroutines.channels.BroadcastChannelImpl) r4
            kotlin.ResultKt.throwOnFailure(r8)
            goto L7b
        L33:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3b:
            kotlin.ResultKt.throwOnFailure(r8)
            java.util.concurrent.locks.ReentrantLock r8 = r6.n
            r8.lock()
            boolean r2 = r6.L()     // Catch: java.lang.Throwable -> L99
            if (r2 != 0) goto L94
            int r2 = r6.m     // Catch: java.lang.Throwable -> L99
            r4 = -1
            if (r2 != r4) goto L50
            r6.p = r7     // Catch: java.lang.Throwable -> L99
        L50:
            java.util.List<? extends kotlinx.coroutines.channels.BufferedChannel<E>> r2 = r6.o     // Catch: java.lang.Throwable -> L99
            r8.unlock()
            java.util.Iterator r8 = r2.iterator()
            r4 = r6
            r5 = r8
            r8 = r7
            r7 = r5
        L5d:
            boolean r2 = r7.hasNext()
            if (r2 == 0) goto L91
            java.lang.Object r2 = r7.next()
            kotlinx.coroutines.channels.BufferedChannel r2 = (kotlinx.coroutines.channels.BufferedChannel) r2
            r0.a = r4
            r0.b = r8
            r0.c = r7
            r0.f10022f = r3
            java.lang.Object r2 = r2.J0(r8, r0)
            if (r2 != r1) goto L78
            return r1
        L78:
            r5 = r2
            r2 = r8
            r8 = r5
        L7b:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 != 0) goto L8f
            boolean r8 = r4.L()
            if (r8 != 0) goto L8a
            goto L8f
        L8a:
            java.lang.Throwable r7 = r4.N()
            throw r7
        L8f:
            r8 = r2
            goto L5d
        L91:
            kotlin.v r7 = kotlin.v.a
            return r7
        L94:
            java.lang.Throwable r7 = r6.N()     // Catch: java.lang.Throwable -> L99
            throw r7     // Catch: java.lang.Throwable -> L99
        L99:
            r7 = move-exception
            r8.unlock()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BroadcastChannelImpl.K(java.lang.Object, kotlin.coroutines.d):java.lang.Object");
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    public boolean L() {
        ReentrantLock reentrantLock = this.n;
        reentrantLock.lock();
        try {
            return super.L();
        } finally {
            reentrantLock.unlock();
        }
    }

    public final int a1() {
        return this.m;
    }

    public final E b1() throws Throwable {
        ReentrantLock reentrantLock = this.n;
        reentrantLock.lock();
        try {
            if (!L()) {
                if (this.p != BroadcastChannelKt.a) {
                    return (E) this.p;
                }
                throw new IllegalStateException("No value".toString());
            }
            Throwable thU = u();
            if (thU == null) {
                throw new IllegalStateException("This broadcast channel is closed");
            }
            throw thU;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    public boolean d(Throwable th) {
        ReentrantLock reentrantLock = this.n;
        reentrantLock.lock();
        try {
            Iterator<T> it = this.o.iterator();
            while (it.hasNext()) {
                ((BufferedChannel) it.next()).d(th);
            }
            this.p = BroadcastChannelKt.a;
            return super.d(th);
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.BroadcastChannel
    public ReceiveChannel<E> o() {
        ReentrantLock reentrantLock = this.n;
        reentrantLock.lock();
        try {
            a bVar = this.m == -1 ? new b() : new a();
            if (L() && this.p == BroadcastChannelKt.a) {
                ((BufferedChannel) bVar).J(u());
                return bVar;
            }
            if (this.p != BroadcastChannelKt.a) {
                ((BufferedChannel) bVar).y(b1());
            }
            this.o = CollectionsKt___CollectionsKt.plus((Collection<? extends ReceiveChannel<E>>) this.o, bVar);
            return bVar;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        if (this.p != BroadcastChannelKt.a) {
            str = "CONFLATED_ELEMENT=" + this.p + "; ";
        } else {
            str = "";
        }
        sb.append(str);
        sb.append("BROADCAST=<");
        sb.append(super.toString());
        sb.append(">; SUBSCRIBERS=");
        sb.append(CollectionsKt___CollectionsKt.joinToString$default(this.o, ";", "<", ">", 0, null, null, 56, null));
        return sb.toString();
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    public Object y(E e2) {
        ReentrantLock reentrantLock = this.n;
        reentrantLock.lock();
        try {
            if (L()) {
                return super.y(e2);
            }
            List<? extends BufferedChannel<E>> list = this.o;
            boolean z = false;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator<T> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    if (((BufferedChannel) it.next()).N0()) {
                        z = true;
                        break;
                    }
                }
            }
            if (z) {
                return ChannelResult.a.b();
            }
            if (this.m == -1) {
                this.p = e2;
            }
            Iterator<T> it2 = this.o.iterator();
            while (it2.hasNext()) {
                ((BufferedChannel) it2.next()).y(e2);
            }
            return ChannelResult.a.c(v.a);
        } finally {
            reentrantLock.unlock();
        }
    }
}
