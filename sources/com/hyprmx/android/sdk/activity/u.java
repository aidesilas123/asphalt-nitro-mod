package com.hyprmx.android.sdk.activity;

import androidx.appcompat.app.AppCompatActivity;
import com.hyprmx.android.sdk.api.data.n;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import java.util.ArrayList;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXBaseViewController$showDialog$2", f = "HyprMXBaseViewController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
public final class u extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
    public final /* synthetic */ String a;
    public final /* synthetic */ HyprMXBaseViewController b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(HyprMXBaseViewController hyprMXBaseViewController, String str, Continuation continuation) {
        super(2, continuation);
        this.a = str;
        this.b = hyprMXBaseViewController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new u(this.b, this.a, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
        return ((u) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ArrayList<n.a> arrayList;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        HyprMXLog.d("showDialog");
        try {
            String jsonString = this.a;
            Intrinsics.checkNotNullParameter(jsonString, "jsonString");
            JSONObject jSONObject = new JSONObject(jsonString);
            String strA = com.hyprmx.android.sdk.utility.i0.a("title", jSONObject);
            String strA2 = com.hyprmx.android.sdk.utility.i0.a("message", jSONObject);
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("buttons");
            if (jSONArrayOptJSONArray == null) {
                arrayList = null;
            } else {
                ArrayList arrayList2 = new ArrayList();
                int length = jSONArrayOptJSONArray.length();
                for (int i = 0; i < length; i++) {
                    JSONObject jsonObject = jSONArrayOptJSONArray.getJSONObject(i);
                    Intrinsics.checkNotNullExpressionValue(jsonObject, "buttonJson");
                    Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
                    arrayList2.add(new n.a(com.hyprmx.android.sdk.utility.i0.a("name", jsonObject), com.hyprmx.android.sdk.utility.i0.a("script", jsonObject)));
                }
                arrayList = arrayList2;
            }
            com.hyprmx.android.sdk.api.data.n presentDialog = new com.hyprmx.android.sdk.api.data.n(strA, strA2, arrayList);
            if (!this.b.a.isFinishing()) {
                HyprMXBaseViewController hyprMXBaseViewController = this.b;
                com.hyprmx.android.sdk.jsAlertDialog.e eVar = hyprMXBaseViewController.s;
                AppCompatActivity context = hyprMXBaseViewController.a;
                eVar.getClass();
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(presentDialog, "presentDialog");
                if (strA2 != null && arrayList != null && !arrayList.isEmpty()) {
                    for (n.a aVar : arrayList) {
                        String str = aVar.a;
                        if (str != null) {
                            eVar.f4566d.put(str, aVar.b);
                        }
                    }
                    eVar.a.a(context, presentDialog.a, presentDialog.b, CollectionsKt___CollectionsKt.toList(eVar.f4566d.keySet()));
                }
            }
            return kotlin.v.a;
        } catch (JSONException e2) {
            HyprMXLog.e(e2.getMessage());
            return kotlin.v.a;
        }
    }
}
