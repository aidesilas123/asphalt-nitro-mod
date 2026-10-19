package com.hyprmx.android.sdk.activity;

import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import com.hyprmx.android.R;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/hyprmx/android/sdk/activity/HyprMXNoOffersActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1})
public final class HyprMXNoOffersActivity extends AppCompatActivity {
    public e0 a;
    public TextView b;
    public boolean c;

    public HyprMXNoOffersActivity() {
        CoroutineScopeKt.MainScope();
    }

    public static final void a(HyprMXNoOffersActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onBackPressed();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        this.c = true;
        e0 e0Var = this.a;
        if (e0Var != null) {
            BuildersKt__Builders_commonKt.launch$default(e0Var, null, null, new d0(e0Var, false, null), 3, null);
        }
        super.onBackPressed();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        com.hyprmx.android.sdk.api.data.r rVar;
        com.hyprmx.android.sdk.api.data.l lVar;
        int color;
        super.onCreate(bundle);
        f0 f0Var = a.c;
        if (f0Var == null) {
            HyprMXLog.w("Cancelling ad. Cannot recreate HyprMXNoOffersActivity.");
            finish();
            return;
        }
        this.a = f0Var.a(this);
        int i = 0;
        TextView textView = null;
        if (bundle != null) {
            HyprMXLog.d("Cancelling ad because activity was destroyed.");
            e0 e0Var = this.a;
            if (e0Var != null) {
                BuildersKt__Builders_commonKt.launch$default(e0Var, null, null, new d0(e0Var, false, null), 3, null);
            }
            finish();
            return;
        }
        setContentView(R.layout.hyprmx_no_ad);
        View viewFindViewById = findViewById(R.id.hyprmx_close_button);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(R.id.hyprmx_close_button)");
        ImageView imageView = (ImageView) viewFindViewById;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("closeButton");
            imageView = null;
        }
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.hyprmx.android.sdk.activity.f1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HyprMXNoOffersActivity.a(this.a, view);
            }
        });
        View viewFindViewById2 = findViewById(R.id.hyprmx_no_ad_title);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById2, "findViewById(R.id.hyprmx_no_ad_title)");
        TextView textView2 = (TextView) viewFindViewById2;
        this.b = textView2;
        e0 e0Var2 = this.a;
        if (e0Var2 == null || (rVar = e0Var2.b) == null || (lVar = rVar.a) == null) {
            return;
        }
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("titleView");
            textView2 = null;
        }
        textView2.setText(lVar.a);
        TextView textView3 = this.b;
        if (textView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("titleView");
            textView3 = null;
        }
        String color2 = lVar.b;
        Intrinsics.checkNotNullParameter(color2, "color");
        try {
            try {
                color = Color.parseColor("#" + color2);
            } catch (IllegalArgumentException unused) {
                color = Color.parseColor("#" + Integer.toHexString((int) (255 * 1.0f)) + color2);
            }
            i = color;
        } catch (IllegalArgumentException e2) {
            HyprMXLog.d(e2.getMessage());
        }
        textView3.setTextColor(i);
        TextView textView4 = this.b;
        if (textView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("titleView");
        } else {
            textView = textView4;
        }
        textView.setTextSize(lVar.c);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        e0 e0Var;
        if (!this.c && (e0Var = this.a) != null) {
            BuildersKt__Builders_commonKt.launch$default(e0Var, null, null, new d0(e0Var, false, null), 3, null);
        }
        super.onDestroy();
    }
}
