package com.hyprmx.android.sdk.utility;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.IOException;
import java.io.InputStream;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.utility.ImageCacheManager$fetchBitmap$2", f = "ImageCacheManager.kt", i = {0, 0}, l = {77}, m = "invokeSuspend", n = {"bitmap", "retries"}, s = {"L$0", "I$0"})
public final class z extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Bitmap>, Object> {
    public Bitmap a;
    public int b;
    public int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f4740d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ y f4741e;

    @DebugMetadata(c = "com.hyprmx.android.sdk.utility.ImageCacheManager$fetchBitmap$2$response$1", f = "ImageCacheManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends SuspendLambda implements Function2<InputStream, Continuation<? super Bitmap>, Object> {
        public /* synthetic */ Object a;

        public a(Continuation<? super a> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            a aVar = new a(continuation);
            aVar.a = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(InputStream inputStream, Continuation<? super Bitmap> continuation) {
            return ((a) create(inputStream, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws IOException {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            InputStream inputStream = (InputStream) this.a;
            try {
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStream);
                CloseableKt.closeFinally(inputStream, null);
                return bitmapDecodeStream;
            } finally {
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(y yVar, String str, Continuation continuation) {
        super(2, continuation);
        this.f4740d = str;
        this.f4741e = yVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new z(this.f4741e, this.f4740d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Bitmap> continuation) {
        return ((z) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Path cross not found for [B:15:0x0072, B:23:0x008a], limit reached: 29 */
    /* JADX WARN: Path cross not found for [B:23:0x008a, B:15:0x0072], limit reached: 29 */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0065 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0072  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0066 -> B:13:0x006c). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            r14 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r1 = r14.c
            r2 = 0
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L21
            if (r1 != r3) goto L19
            int r1 = r14.b
            android.graphics.Bitmap r5 = r14.a
            kotlin.ResultKt.throwOnFailure(r15)
            r6 = r5
            r5 = r1
            r1 = r0
            r0 = r14
            goto L6c
        L19:
            java.lang.IllegalStateException r15 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r15.<init>(r0)
            throw r15
        L21:
            kotlin.ResultKt.throwOnFailure(r15)
            java.lang.StringBuilder r15 = new java.lang.StringBuilder
            java.lang.String r1 = "---fetchBitmap("
            r15.<init>(r1)
            java.lang.String r1 = r14.f4740d
            r15.append(r1)
            r1 = 41
            r15.append(r1)
            java.lang.String r15 = r15.toString()
            com.hyprmx.android.sdk.utility.HyprMXLog.d(r15)
            com.hyprmx.android.sdk.utility.y r15 = r14.f4741e
            int r15 = r15.f4738d
            r1 = r15
            r5 = r4
            r15 = r14
        L43:
            com.hyprmx.android.sdk.utility.y r6 = r15.f4741e
            com.hyprmx.android.sdk.network.k r6 = r6.b
            java.lang.String r7 = r15.f4740d
            com.hyprmx.android.sdk.utility.z$a r11 = new com.hyprmx.android.sdk.utility.z$a
            r11.<init>(r4)
            r15.a = r5
            r15.b = r1
            r15.c = r3
            com.hyprmx.android.sdk.network.a r10 = new com.hyprmx.android.sdk.network.a
            r8 = 15
            r10.<init>(r2, r4, r8)
            r8 = 0
            java.lang.String r9 = "GET"
            r12 = r15
            java.lang.Object r6 = r6.a(r7, r8, r9, r10, r11, r12)
            if (r6 != r0) goto L66
            return r0
        L66:
            r13 = r0
            r0 = r15
            r15 = r6
            r6 = r5
            r5 = r1
            r1 = r13
        L6c:
            com.hyprmx.android.sdk.network.m r15 = (com.hyprmx.android.sdk.network.m) r15
            boolean r7 = r15 instanceof com.hyprmx.android.sdk.network.m.b
            if (r7 == 0) goto L8a
            int r7 = r15.a()
            r8 = 200(0xc8, float:2.8E-43)
            if (r8 > r7) goto L80
            r8 = 300(0x12c, float:4.2E-43)
            if (r7 >= r8) goto L80
            r7 = 1
            goto L81
        L80:
            r7 = 0
        L81:
            if (r7 == 0) goto L8a
            com.hyprmx.android.sdk.network.m$b r15 = (com.hyprmx.android.sdk.network.m.b) r15
            T r15 = r15.b
            android.graphics.Bitmap r15 = (android.graphics.Bitmap) r15
            goto L9e
        L8a:
            java.lang.StringBuilder r15 = new java.lang.StringBuilder
            java.lang.String r7 = "error fetching bitmap "
            r15.<init>(r7)
            java.lang.String r7 = r0.f4740d
            r15.append(r7)
            java.lang.String r15 = r15.toString()
            com.hyprmx.android.sdk.utility.HyprMXLog.e(r15)
            r15 = r6
        L9e:
            int r5 = r5 + (-1)
            if (r5 <= 0) goto Lab
            if (r15 == 0) goto La5
            goto Lab
        La5:
            r13 = r5
            r5 = r15
            r15 = r0
            r0 = r1
            r1 = r13
            goto L43
        Lab:
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.utility.z.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
