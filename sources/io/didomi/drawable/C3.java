package io.didomi.drawable;

import android.graphics.Bitmap;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.v;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

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
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B+\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0001\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0013\u0010\r\u001a\u00020\fH\u0082@ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000eJ9\u0010\r\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\f0\u00112\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\f0\u0014H\u0002¢\u0006\u0004\b\r\u0010\u0016JK\u0010\r\u001a\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u000f2\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\f0\u00112\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\f0\u00112\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\f0\u0014¢\u0006\u0004\b\r\u0010\u0019J\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0000¢\u0006\u0004\b\r\u0010\u001aR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u001bR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u001b\u0010#\u001a\u00020\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\r\u0010\"R\u001b\u0010'\u001a\u00020$8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010!\u001a\u0004\b\u001c\u0010&R\u001a\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00120(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u001a\u0010.\u001a\b\u0012\u0004\u0012\u00020,0(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010*\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006/"}, d2 = {"Lio/didomi/sdk/C3;", "", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/Z;", "contextHelper", "Lio/didomi/sdk/i3;", "imageUrlLoader", "Lkotlinx/coroutines/CoroutineDispatcher;", "coroutineDispatcher", "<init>", "(Lio/didomi/sdk/H;Lio/didomi/sdk/Z;Lio/didomi/sdk/i3;Lkotlinx/coroutines/CoroutineDispatcher;)V", "", "a", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/lifecycle/LifecycleOwner;", "lifecycleOwner", "Lkotlin/Function1;", "Landroid/graphics/Bitmap;", "onBitmap", "Lkotlin/Function0;", "onNoLogo", "(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V", "", "onResource", "(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "(Landroidx/lifecycle/LifecycleOwner;)V", "Lio/didomi/sdk/H;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/i3;", "c", "Lkotlinx/coroutines/CoroutineDispatcher;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/Lazy;", "()I", "logoResourceId", "", "e", "()Ljava/lang/String;", "logoUrl", "Landroidx/lifecycle/MutableLiveData;", InneractiveMediationDefs.GENDER_FEMALE, "Landroidx/lifecycle/MutableLiveData;", "logoBitmapLiveData", "", "g", "noLogoLiveData", "android_release"}, mv = {1, 8, 0})
public final class C3 {
    private final H a;
    private final C1790i3 b;
    private final CoroutineDispatcher c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f8194d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f8195e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final MutableLiveData<Bitmap> f8196f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final MutableLiveData<Boolean> f8197g;

    @Metadata(mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.didomi.sdk.resources.LogoProvider", f = "LogoProvider.kt", i = {0}, l = {64}, m = "loadLogoFromUrl", n = {"this"}, s = {"L$0"})
    static final class a extends ContinuationImpl {
        Object a;
        /* synthetic */ Object b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f8198d;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.b = obj;
            this.f8198d |= Integer.MIN_VALUE;
            return C3.this.a(this);
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Integer;"}, mv = {1, 8, 0})
    static final class b extends Lambda implements Function0<Integer> {
        final /* synthetic */ Z a;
        final /* synthetic */ C3 b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Z z, C3 c3) {
            super(0);
            this.a = z;
            this.b = c3;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer invoke() {
            return Integer.valueOf(this.a.a(this.b.a.b().a().h()));
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/String;"}, mv = {1, 8, 0})
    static final class c extends Lambda implements Function0<String> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return C3.this.a.b().a().h();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", "kotlin.jvm.PlatformType", "noLogo", "", "a", "(Ljava/lang/Boolean;)V"}, mv = {1, 8, 0})
    static final class d extends Lambda implements Function1<Boolean, v> {
        final /* synthetic */ Function0<v> a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(Function0<v> function0) {
            super(1);
            this.a = function0;
        }

        public final void a(Boolean bool) {
            if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
                this.a.invoke();
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(Boolean bool) {
            a(bool);
            return v.a;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.didomi.sdk.resources.LogoProvider$updateLogo$2", f = "LogoProvider.kt", i = {}, l = {55}, m = "invokeSuspend", n = {}, s = {})
    static final class e extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        int a;

        e(Continuation<? super e> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((e) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return C3.this.new e(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                C3 c3 = C3.this;
                this.a = 1;
                if (c3.a(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return v.a;
        }
    }

    public C3(H configurationRepository, Z contextHelper, C1790i3 imageUrlLoader, CoroutineDispatcher coroutineDispatcher) {
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(contextHelper, "contextHelper");
        Intrinsics.checkNotNullParameter(imageUrlLoader, "imageUrlLoader");
        Intrinsics.checkNotNullParameter(coroutineDispatcher, "coroutineDispatcher");
        this.a = configurationRepository;
        this.b = imageUrlLoader;
        this.c = coroutineDispatcher;
        this.f8194d = LazyKt__LazyJVMKt.lazy(new b(contextHelper, this));
        this.f8195e = LazyKt__LazyJVMKt.lazy(new c());
        this.f8196f = new MutableLiveData<>();
        this.f8197g = new MutableLiveData<>();
    }

    private final int a() {
        return ((Number) this.f8194d.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation<? super kotlin.v> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof io.didomi.sdk.C3.a
            if (r0 == 0) goto L13
            r0 = r6
            io.didomi.sdk.C3$a r0 = (io.didomi.sdk.C3.a) r0
            int r1 = r0.f8198d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f8198d = r1
            goto L18
        L13:
            io.didomi.sdk.C3$a r0 = new io.didomi.sdk.C3$a
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f8198d
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r0 = r0.a
            io.didomi.sdk.C3 r0 = (io.didomi.drawable.C3) r0
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4f
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L35:
            kotlin.ResultKt.throwOnFailure(r6)
            io.didomi.sdk.i3 r6 = r5.b
            io.didomi.sdk.i3$a r2 = new io.didomi.sdk.i3$a
            java.lang.String r4 = r5.b()
            r2.<init>(r4)
            r0.a = r5
            r0.f8198d = r3
            java.lang.Object r6 = r6.b(r2, r0)
            if (r6 != r1) goto L4e
            return r1
        L4e:
            r0 = r5
        L4f:
            io.didomi.sdk.y r6 = (io.didomi.drawable.C1946y) r6
            boolean r1 = r6.c()
            if (r1 == 0) goto L7b
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r1 = "Error loading logo from "
            r6.append(r1)
            java.lang.String r1 = r0.b()
            r6.append(r1)
            java.lang.String r6 = r6.toString()
            r1 = 2
            r2 = 0
            io.didomi.drawable.Log.e$default(r6, r2, r1, r2)
            androidx.lifecycle.MutableLiveData<java.lang.Boolean> r6 = r0.f8197g
            java.lang.Boolean r0 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            r6.postValue(r0)
            goto L84
        L7b:
            androidx.lifecycle.MutableLiveData<android.graphics.Bitmap> r0 = r0.f8196f
            java.lang.Object r6 = r6.b()
            r0.postValue(r6)
        L84:
            kotlin.v r6 = kotlin.v.a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.didomi.drawable.C3.a(kotlin.coroutines.d):java.lang.Object");
    }

    private final void a(LifecycleOwner lifecycleOwner, final Function1<? super Bitmap, v> function1, Function0<v> function0) {
        this.f8196f.observe(lifecycleOwner, new Observer() { // from class: io.didomi.sdk.u9
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                C3.a(function1, obj);
            }
        });
        MutableLiveData<Boolean> mutableLiveData = this.f8197g;
        final d dVar = new d(function0);
        mutableLiveData.observe(lifecycleOwner, new Observer() { // from class: io.didomi.sdk.v9
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                C3.b(dVar, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    private final String b() {
        return (String) this.f8195e.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public final Object a(LifecycleOwner lifecycleOwner, Function1<? super Bitmap, v> onBitmap, Function1<? super Integer, v> onResource, Function0<v> onNoLogo) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        Intrinsics.checkNotNullParameter(onBitmap, "onBitmap");
        Intrinsics.checkNotNullParameter(onResource, "onResource");
        Intrinsics.checkNotNullParameter(onNoLogo, "onNoLogo");
        if (a() != 0) {
            onResource.invoke(Integer.valueOf(a()));
            return v.a;
        }
        Bitmap value = this.f8196f.getValue();
        if (value != null) {
            onBitmap.invoke(value);
        } else {
            value = null;
        }
        if (value != null) {
            return v.a;
        }
        if (Intrinsics.areEqual(this.f8197g.getValue(), Boolean.TRUE)) {
            onNoLogo.invoke();
            return v.a;
        }
        if (V5.c(b())) {
            a(lifecycleOwner, onBitmap, onNoLogo);
            return BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(this.c), null, null, new e(null), 3, null);
        }
        onNoLogo.invoke();
        return v.a;
    }

    public final void a(LifecycleOwner lifecycleOwner) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        this.f8196f.removeObservers(lifecycleOwner);
        this.f8197g.removeObservers(lifecycleOwner);
    }
}
