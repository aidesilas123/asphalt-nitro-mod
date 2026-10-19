package com.hyprmx.android.sdk.utility;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.hyprmx.android.R;
import com.hyprmx.android.sdk.utility.p;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: loaded from: classes2.dex */
public final class n implements o {
    public static final n a = new n();

    @DebugMetadata(c = "com.hyprmx.android.sdk.utility.FetchGAIDImpl$retrieveGaid$2", f = "FetchGAIDTask.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super p>, Object> {
        public final /* synthetic */ Context a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context, Continuation<? super a> continuation) {
            super(2, continuation);
            this.a = context;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new a(this.a, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super p> continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String str;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            AdvertisingIdClient.Info advertisingIdInfo = null;
            try {
                advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.a);
            } catch (GooglePlayServicesNotAvailableException unused) {
                str = "Google Play Services not available on device.";
                HyprMXLog.d(str);
            } catch (NoClassDefFoundError unused2) {
                str = "Google Play Services not linked.";
                HyprMXLog.d(str);
            } catch (Throwable th) {
                str = "There was a problem retrieving GAID: " + th + ' ';
                HyprMXLog.d(str);
            }
            Context context = this.a;
            Intrinsics.checkNotNullParameter(context, "context");
            if (advertisingIdInfo == null) {
                return p.a.a;
            }
            String id = advertisingIdInfo.getId();
            if (id == null) {
                id = context.getString(R.string.hyprmx_gaid_fallback);
            }
            Intrinsics.checkNotNullExpressionValue(id, "adInfo.id ?: context.get…ing.hyprmx_gaid_fallback)");
            return new p.b(id, advertisingIdInfo.isLimitAdTrackingEnabled());
        }
    }

    @Override // com.hyprmx.android.sdk.utility.o
    public final Object a(Context context, Continuation<? super p> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new a(context, null), continuation);
    }
}
