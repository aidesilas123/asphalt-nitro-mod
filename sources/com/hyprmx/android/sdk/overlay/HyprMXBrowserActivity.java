package com.hyprmx.android.sdk.overlay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.PersistableBundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.core.app.ActivityCompat;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.viewbinding.ViewBindings;
import com.hyprmx.android.R;
import com.hyprmx.android.sdk.annotation.RetainMethodSignature;
import com.hyprmx.android.sdk.core.q;
import com.hyprmx.android.sdk.core.t;
import com.hyprmx.android.sdk.core.w;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.hyprmx.android.sdk.utility.l0;
import com.json.o2;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.v;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007¢\u0006\u0004\b\u0016\u0010\u0017J\u0011\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0097\u0001J\u0011\u0010\n\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0005H\u0097\u0001J\u0011\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0097\u0001J\u0011\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\fH\u0097\u0001J\u0011\u0010\u000f\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0005H\u0097\u0001J\u000e\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010J\u000e\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010J\u000e\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010J\u000e\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010¨\u0006\u0018"}, d2 = {"Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lcom/hyprmx/android/sdk/overlay/g;", "Lcom/hyprmx/android/sdk/overlay/i;", "Lcom/hyprmx/android/sdk/overlay/k;", "", "data", "", "createCalendarEvent", "url", "openOutsideApplication", "openShareSheet", "", "resourceId", "showToast", "storePicture", "Landroid/view/View;", "view", "onNavigateForwardClicked", "onNavigateBackClicked", "onCloseClicked", "onShareSheetClicked", "<init>", "()V", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1})
public final class HyprMXBrowserActivity extends AppCompatActivity implements g, i, k {
    public final /* synthetic */ j a = new j((Context) null, false, 7);
    public final /* synthetic */ l b = new l();
    public com.hyprmx.android.databinding.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public f f4596d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f4597e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public com.hyprmx.android.sdk.webview.f f4598f;

    @DebugMetadata(c = "com.hyprmx.android.sdk.overlay.HyprMXBrowserActivity$onActivityResult$1", f = "HyprMXBrowserActivity.kt", i = {}, l = {148}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public int a;
        public final /* synthetic */ int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ int f4599d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Intent f4600e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i, int i2, Intent intent, Continuation<? super a> continuation) {
            super(2, continuation);
            this.c = i;
            this.f4599d = i2;
            this.f4600e = intent;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return HyprMXBrowserActivity.this.new a(this.c, this.f4599d, this.f4600e, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                HyprMXBrowserActivity hyprMXBrowserActivity = HyprMXBrowserActivity.this;
                int i2 = this.c;
                int i3 = this.f4599d;
                Intent intent = this.f4600e;
                f fVar = hyprMXBrowserActivity.f4596d;
                Intrinsics.checkNotNull(fVar, "null cannot be cast to non-null type com.hyprmx.android.sdk.core.ImageCaptureInterface");
                w wVar = (w) fVar;
                this.a = 1;
                if (hyprMXBrowserActivity.b.a(hyprMXBrowserActivity, i2, i3, intent, wVar, this) == coroutine_suspended) {
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

    @Override // com.hyprmx.android.sdk.overlay.g
    public final void A() {
        this.f4596d = null;
        this.f4598f = null;
    }

    @Override // com.hyprmx.android.sdk.overlay.g
    public final void N() {
        finish();
    }

    @Override // com.hyprmx.android.sdk.overlay.k
    public final Object a(Context context, int i, int i2, Intent intent, w wVar, Continuation<? super v> continuation) {
        return this.b.a(context, i, i2, intent, wVar, continuation);
    }

    @Override // com.hyprmx.android.sdk.overlay.k
    public final void a(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.b.a(activity);
    }

    @Override // com.hyprmx.android.sdk.overlay.g
    public final void a(String[] permission, int i) {
        Intrinsics.checkNotNullParameter(permission, "permission");
        ActivityCompat.requestPermissions(this, permission, i);
    }

    @Override // com.hyprmx.android.sdk.overlay.i
    public final Object asyncSavePhoto(String str, Continuation<? super v> continuation) {
        return this.a.asyncSavePhoto(str, continuation);
    }

    @Override // com.hyprmx.android.sdk.overlay.g
    public final void captureImage() {
        Intrinsics.checkNotNullParameter(this, "activity");
        this.b.a((Activity) this);
    }

    @Override // com.hyprmx.android.sdk.overlay.i, com.hyprmx.android.sdk.core.a
    @RetainMethodSignature
    public void createCalendarEvent(String data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.a.createCalendarEvent(data);
    }

    @Override // com.hyprmx.android.sdk.overlay.g
    public final void d(boolean z) {
        com.hyprmx.android.databinding.a aVar = this.c;
        Intrinsics.checkNotNull(aVar);
        aVar.b.c.setEnabled(z);
    }

    @Override // com.hyprmx.android.sdk.overlay.g
    public final void e(boolean z) {
        com.hyprmx.android.databinding.a aVar = this.c;
        Intrinsics.checkNotNull(aVar);
        aVar.b.b.setEnabled(z);
    }

    @Override // com.hyprmx.android.sdk.overlay.i
    public final void hyprMXBrowserClosed() {
        this.a.hyprMXBrowserClosed();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new a(i, i2, intent, null), 3, null);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        f fVar = this.f4596d;
        if (fVar != null) {
            fVar.F();
        }
    }

    public final void onCloseClicked(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (isFinishing()) {
            HyprMXLog.d("Activity already finishing.  Ignoring close click.");
            return;
        }
        f fVar = this.f4596d;
        if (fVar != null) {
            fVar.Q();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        f fVar = null;
        com.hyprmx.android.sdk.webview.f fVarA = null;
        fVar = null;
        View viewInflate = getLayoutInflater().inflate(R.layout.hyprmx_browser, (ViewGroup) null, false);
        int i = R.id.hyprmx_browser_footer;
        View viewFindChildViewById = ViewBindings.findChildViewById(viewInflate, i);
        if (viewFindChildViewById != null) {
            int i2 = R.id.hyprmx_navigate_back;
            ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(viewFindChildViewById, i2);
            if (imageButton != null) {
                i2 = R.id.hyprmx_navigate_forward;
                ImageButton imageButton2 = (ImageButton) ViewBindings.findChildViewById(viewFindChildViewById, i2);
                if (imageButton2 != null) {
                    com.hyprmx.android.databinding.b bVar = new com.hyprmx.android.databinding.b((ConstraintLayout) viewFindChildViewById, imageButton, imageButton2);
                    int i3 = R.id.hyprmx_browser_header;
                    View viewFindChildViewById2 = ViewBindings.findChildViewById(viewInflate, i3);
                    if (viewFindChildViewById2 != null) {
                        int i4 = R.id.hyprmx_browser_title;
                        TextView textView = (TextView) ViewBindings.findChildViewById(viewFindChildViewById2, i4);
                        if (textView != null) {
                            i4 = R.id.hyprmx_close_button;
                            ImageButton imageButton3 = (ImageButton) ViewBindings.findChildViewById(viewFindChildViewById2, i4);
                            if (imageButton3 != null) {
                                i4 = R.id.hyprmx_share_sheet;
                                if (((ImageButton) ViewBindings.findChildViewById(viewFindChildViewById2, i4)) != null) {
                                    ConstraintLayout constraintLayout = (ConstraintLayout) viewInflate;
                                    com.hyprmx.android.databinding.a aVar = new com.hyprmx.android.databinding.a(constraintLayout, bVar, new com.hyprmx.android.databinding.c((ConstraintLayout) viewFindChildViewById2, textView, imageButton3));
                                    this.c = aVar;
                                    Intrinsics.checkNotNull(aVar);
                                    setContentView(constraintLayout);
                                    this.a.a = this;
                                    Intent intent = getIntent();
                                    if (intent != null) {
                                        String stringExtra = intent.getStringExtra("baseAdId");
                                        Intrinsics.checkNotNull(stringExtra);
                                        Intrinsics.checkNotNullParameter(stringExtra, "<set-?>");
                                        this.f4597e = stringExtra;
                                    }
                                    q qVar = t.a;
                                    com.hyprmx.android.sdk.core.j jVar = qVar.f4521g;
                                    com.hyprmx.android.sdk.presentation.j jVarT = jVar != null ? jVar.a.t() : null;
                                    if (jVarT != null) {
                                        String str = this.f4597e;
                                        if (str == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("viewModelIdentifier");
                                            str = null;
                                        }
                                        f fVarA2 = jVarT.a((g) this, str);
                                        if (fVarA2 != null) {
                                            String str2 = this.f4597e;
                                            if (str2 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("viewModelIdentifier");
                                                str2 = null;
                                            }
                                            com.hyprmx.android.sdk.core.j jVar2 = qVar.f4521g;
                                            com.hyprmx.android.sdk.presentation.j jVarT2 = jVar2 != null ? jVar2.a.t() : null;
                                            if (jVarT2 != null) {
                                                Context applicationContext = getApplicationContext();
                                                Intrinsics.checkNotNullExpressionValue(applicationContext, "this@HyprMXBrowserActivity.applicationContext");
                                                fVarA = jVarT2.a(applicationContext, str2);
                                            }
                                            this.f4598f = fVarA;
                                            if (fVarA != null) {
                                                fVarA.setId(R.id.hyprmx_webview);
                                            }
                                            com.hyprmx.android.databinding.a aVar2 = this.c;
                                            Intrinsics.checkNotNull(aVar2);
                                            aVar2.a.addView(this.f4598f);
                                            ConstraintSet constraintSet = new ConstraintSet();
                                            com.hyprmx.android.databinding.a aVar3 = this.c;
                                            Intrinsics.checkNotNull(aVar3);
                                            constraintSet.clone(aVar3.a);
                                            int i5 = R.id.hyprmx_webview;
                                            constraintSet.constrainHeight(i5, 0);
                                            constraintSet.constrainWidth(i5, 0);
                                            int i6 = R.id.hyprmx_browser_layout;
                                            constraintSet.connect(i5, 6, i6, 6);
                                            constraintSet.connect(i5, 7, i6, 7);
                                            constraintSet.connect(i5, 4, i, 3);
                                            constraintSet.connect(i5, 3, i3, 4);
                                            com.hyprmx.android.databinding.a aVar4 = this.c;
                                            Intrinsics.checkNotNull(aVar4);
                                            constraintSet.applyTo(aVar4.a);
                                            fVarA2.a(this);
                                            fVarA2.R();
                                            com.hyprmx.android.sdk.webview.f fVar2 = this.f4598f;
                                            if (fVar2 != null) {
                                                fVar2.setContainingActivity(this);
                                            }
                                            fVar = fVarA2;
                                        }
                                    }
                                    this.f4596d = fVar;
                                    return;
                                }
                            }
                        }
                        throw new NullPointerException("Missing required view with ID: ".concat(viewFindChildViewById2.getResources().getResourceName(i4)));
                    }
                    i = i3;
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(viewFindChildViewById.getResources().getResourceName(i2)));
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i)));
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle, PersistableBundle persistableBundle) {
        f fVar = this.f4596d;
        if (fVar != null) {
            fVar.i("onCreate");
        }
        super.onCreate(bundle, persistableBundle);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        this.c = null;
        f fVar = this.f4596d;
        if (fVar != null) {
            fVar.i("onDestroy");
        }
        f fVar2 = this.f4596d;
        if (fVar2 != null) {
            fVar2.L();
        }
        this.f4596d = null;
        com.hyprmx.android.sdk.webview.f fVar3 = this.f4598f;
        if (fVar3 != null) {
            fVar3.c();
        }
        this.f4598f = null;
        super.onDestroy();
    }

    public final void onNavigateBackClicked(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        f fVar = this.f4596d;
        if (fVar != null) {
            fVar.j();
        }
    }

    public final void onNavigateForwardClicked(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        f fVar = this.f4596d;
        if (fVar != null) {
            fVar.l();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        f fVar = this.f4596d;
        if (fVar != null) {
            fVar.i(o2.h.t0);
        }
        super.onPause();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onRequestPermissionsResult(int i, String[] permissions, int[] grantResults) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
        super.onRequestPermissionsResult(i, permissions, grantResults);
        ArrayList arrayList = new ArrayList();
        int length = permissions.length;
        for (int i2 = 0; i2 < length; i2++) {
            arrayList.add(new l0(permissions[i2], grantResults[i2] == 0));
        }
        f fVar = this.f4596d;
        if (fVar != null) {
            fVar.a(arrayList, i);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        f fVar = this.f4596d;
        if (fVar != null) {
            fVar.i(o2.h.u0);
        }
        super.onResume();
    }

    public final void onShareSheetClicked(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        f fVar = this.f4596d;
        if (fVar != null) {
            fVar.i();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStart() {
        f fVar = this.f4596d;
        if (fVar != null) {
            fVar.i("onStart");
        }
        super.onStart();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStop() {
        f fVar = this.f4596d;
        if (fVar != null) {
            fVar.i("onStop");
        }
        super.onStop();
    }

    @Override // com.hyprmx.android.sdk.overlay.i, com.hyprmx.android.sdk.core.a
    @RetainMethodSignature
    public void openOutsideApplication(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.a.openOutsideApplication(url);
    }

    @Override // com.hyprmx.android.sdk.overlay.i, com.hyprmx.android.sdk.core.a
    @RetainMethodSignature
    public void openShareSheet(String data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.a.openShareSheet(data);
    }

    @Override // com.hyprmx.android.sdk.overlay.i
    public final void setOverlayPresented(boolean z) {
        this.a.f4606d = false;
    }

    @Override // com.hyprmx.android.sdk.overlay.g
    public final void setTitleText(String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        com.hyprmx.android.databinding.a aVar = this.c;
        Intrinsics.checkNotNull(aVar);
        aVar.c.b.setText(title);
    }

    @Override // com.hyprmx.android.sdk.overlay.i
    public final void showHyprMXBrowser(String viewModelIdentifier) {
        Intrinsics.checkNotNullParameter(viewModelIdentifier, "viewModelIdentifier");
        this.a.showHyprMXBrowser(viewModelIdentifier);
    }

    @Override // com.hyprmx.android.sdk.overlay.i
    public final void showPlatformBrowser(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.a.showPlatformBrowser(url);
    }

    @Override // com.hyprmx.android.sdk.overlay.i, com.hyprmx.android.sdk.core.a
    @RetainMethodSignature
    public void showToast(int resourceId) {
        this.a.showToast(resourceId);
    }

    @Override // com.hyprmx.android.sdk.overlay.i, com.hyprmx.android.sdk.core.a
    @RetainMethodSignature
    public void storePicture(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.a.getClass();
        Intrinsics.checkNotNullParameter(url, "url");
    }

    @Override // com.hyprmx.android.sdk.overlay.g
    public final void z() {
        com.hyprmx.android.databinding.a aVar = this.c;
        Intrinsics.checkNotNull(aVar);
        aVar.c.c.setEnabled(true);
    }
}
