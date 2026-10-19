package io.didomi.drawable;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.v;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: renamed from: io.didomi.sdk.o, reason: case insensitive filesystem */
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
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u0000*\u0004\b\u0001\u0010\u00022\u00020\u0003B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J!\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00010\t2\u0006\u0010\b\u001a\u00028\u0000H\u0086Bø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00010\t2\u0006\u0010\f\u001a\u00028\u0000H¤@ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000bR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000f"}, d2 = {"Lio/didomi/sdk/o;", "Param", "Type", "", "Lkotlinx/coroutines/CoroutineDispatcher;", "coroutineDispatcher", "<init>", "(Lkotlinx/coroutines/CoroutineDispatcher;)V", "parameters", "Lio/didomi/sdk/y;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "param", "a", "Lkotlinx/coroutines/CoroutineDispatcher;", "android_release"}, mv = {1, 8, 0})
public abstract class AbstractC1846o<Param, Type> {
    private final CoroutineDispatcher a;

    /* JADX INFO: renamed from: io.didomi.sdk.o$a */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.didomi.sdk.core.base.BaseUseCase", f = "BaseUseCase.kt", i = {}, l = {22}, m = "invoke", n = {}, s = {})
    static final class a extends ContinuationImpl {
        /* synthetic */ Object a;
        final /* synthetic */ AbstractC1846o<Param, Type> b;
        int c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(AbstractC1846o<? super Param, Type> abstractC1846o, Continuation<? super a> continuation) {
            super(continuation);
            this.b = abstractC1846o;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.a = obj;
            this.c |= Integer.MIN_VALUE;
            return this.b.b(null, this);
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.o$b */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003\"\u0006\b\u0000\u0010\u0000 \u0000\"\u0004\b\u0001\u0010\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Param", "Type", "Lkotlinx/coroutines/CoroutineScope;", "Lio/didomi/sdk/y;", "<anonymous>", "(Lkotlinx/coroutines/CoroutineScope;)Lio/didomi/sdk/y;"}, mv = {1, 8, 0})
    @DebugMetadata(c = "io.didomi.sdk.core.base.BaseUseCase$invoke$2", f = "BaseUseCase.kt", i = {}, l = {23}, m = "invokeSuspend", n = {}, s = {})
    static final class b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super C1946y<? extends Type>>, Object> {
        int a;
        final /* synthetic */ AbstractC1846o<Param, Type> b;
        final /* synthetic */ Param c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        b(AbstractC1846o<? super Param, Type> abstractC1846o, Param param, Continuation<? super b> continuation) {
            super(2, continuation);
            this.b = abstractC1846o;
            this.c = param;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super C1946y<? extends Type>> continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new b(this.b, this.c, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                AbstractC1846o<Param, Type> abstractC1846o = this.b;
                Param param = this.c;
                this.a = 1;
                obj = abstractC1846o.a(param, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public AbstractC1846o(CoroutineDispatcher coroutineDispatcher) {
        Intrinsics.checkNotNullParameter(coroutineDispatcher, "coroutineDispatcher");
        this.a = coroutineDispatcher;
    }

    protected abstract Object a(Param param, Continuation<? super C1946y<? extends Type>> continuation) throws RuntimeException;

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(Param r6, kotlin.coroutines.Continuation<? super io.didomi.drawable.C1946y<? extends Type>> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof io.didomi.drawable.AbstractC1846o.a
            if (r0 == 0) goto L13
            r0 = r7
            io.didomi.sdk.o$a r0 = (io.didomi.drawable.AbstractC1846o.a) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            io.didomi.sdk.o$a r0 = new io.didomi.sdk.o$a
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Exception -> L48
            goto L45
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L31:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.r r7 = r5.a     // Catch: java.lang.Exception -> L48
            io.didomi.sdk.o$b r2 = new io.didomi.sdk.o$b     // Catch: java.lang.Exception -> L48
            r4 = 0
            r2.<init>(r5, r6, r4)     // Catch: java.lang.Exception -> L48
            r0.c = r3     // Catch: java.lang.Exception -> L48
            java.lang.Object r7 = kotlinx.coroutines.BuildersKt.withContext(r7, r2, r0)     // Catch: java.lang.Exception -> L48
            if (r7 != r1) goto L45
            return r1
        L45:
            io.didomi.sdk.y r7 = (io.didomi.drawable.C1946y) r7     // Catch: java.lang.Exception -> L48
            goto L4f
        L48:
            r6 = move-exception
            io.didomi.sdk.y$a r7 = io.didomi.drawable.C1946y.INSTANCE
            io.didomi.sdk.y r7 = r7.a(r6)
        L4f:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.didomi.drawable.AbstractC1846o.b(java.lang.Object, kotlin.coroutines.d):java.lang.Object");
    }
}
