package io.didomi.drawable;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatDialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.RecyclerView;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import io.didomi.drawable.K7;
import io.didomi.drawable.T7;
import io.didomi.drawable.models.DeviceStorageDisclosures;
import io.didomi.drawable.models.InternalVendor;
import io.didomi.drawable.view.ctv.CenterLayoutManager;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.jvm.internal.r;
import kotlin.v;

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
@Metadata(d1 = {"\u0000\u007f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006*\u00010\u0018\u0000 \u000e2\u00020\u00012\u00020\u0002:\u0001\bB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\r\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000e\u0010\u0004J\u000f\u0010\u000f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000f\u0010\u0004J\u000f\u0010\u0010\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0011\u0010\u0004J\u001f\u0010\b\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\b\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001d\u001a\u00020\u00072\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b \u0010!J\u0019\u0010#\u001a\u00020\"2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b#\u0010$J+\u0010*\u001a\u00020)2\u0006\u0010&\u001a\u00020%2\b\u0010(\u001a\u0004\u0018\u00010'2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b*\u0010+J!\u0010-\u001a\u00020\u00072\u0006\u0010,\u001a\u00020)2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u0007H\u0016¢\u0006\u0004\b/\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\u0004R\u0014\u00102\u001a\u0002008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u00101R\u0018\u00106\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\"\u0010=\u001a\u0002078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b8\u0010:\"\u0004\b;\u0010<R\"\u0010C\u001a\u00020>8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0010\u0010?\u001a\u0004\b4\u0010@\"\u0004\bA\u0010B¨\u0006D"}, d2 = {"Lio/didomi/sdk/T7;", "Landroidx/appcompat/app/AppCompatDialogFragment;", "Lio/didomi/sdk/C8;", "<init>", "()V", "", o2.h.r, "", "a", "(Ljava/lang/Boolean;)V", InneractiveMediationDefs.GENDER_FEMALE, "g", "h", CampaignEx.JSON_KEY_AD_K, "e", "i", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "j", "Landroidx/fragment/app/Fragment;", "fragment", "", "tag", "(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V", "Landroid/content/Context;", "context", "onAttach", "(Landroid/content/Context;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "", "getTheme", "()I", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "parent", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "view", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "io/didomi/sdk/T7$c", "Lio/didomi/sdk/T7$c;", "vendorDetailAdapterCallback", "Lio/didomi/sdk/k1;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/k1;", "binding", "Lio/didomi/sdk/t8;", "c", "Lio/didomi/sdk/t8;", "()Lio/didomi/sdk/t8;", "setModel", "(Lio/didomi/sdk/t8;)V", "model", "Lio/didomi/sdk/o6;", "Lio/didomi/sdk/o6;", "()Lio/didomi/sdk/o6;", "setDisclosuresModel", "(Lio/didomi/sdk/o6;)V", "disclosuresModel", "android_release"}, mv = {1, 8, 0})
public final class T7 extends AppCompatDialogFragment implements C8 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f8377e = new a(null);
    private final c a = new c();
    private C1808k1 b;
    public C1905t8 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public C1853o6 f8378d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lio/didomi/sdk/T7$a;", "", "<init>", "()V", "", "TAG", "Ljava/lang/String;", "android_release"}, mv = {1, 8, 0})
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }
    }

    @Metadata(mv = {1, 8, 0}, xi = 48)
    /* synthetic */ class b extends r implements Function1<Boolean, v> {
        b(Object obj) {
            super(1, obj, T7.class, "handleDeviceStorageDisclosures", "handleDeviceStorageDisclosures(Ljava/lang/Boolean;)V", 0);
        }

        public final void a(Boolean bool) {
            ((T7) this.receiver).a(bool);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(Boolean bool) {
            a(bool);
            return v.a;
        }
    }

    @Metadata(d1 = {"\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0007\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\u0004J\u0017\u0010\f\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\f\u0010\nJ\u000f\u0010\r\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\r\u0010\u0004J\u000f\u0010\f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\f\u0010\u0004J\u0017\u0010\f\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\f\u0010\u0010J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0007\u0010\u0013J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0007\u0010\u0010¨\u0006\u0015"}, d2 = {"io/didomi/sdk/T7$c", "Lio/didomi/sdk/K7$a;", "", "e", "()V", InneractiveMediationDefs.GENDER_FEMALE, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "a", "", "isChecked", "(Z)V", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "g", "", "index", "(I)V", "", "id", "(Ljava/lang/String;)V", o2.h.L, "android_release"}, mv = {1, 8, 0})
    public static final class c implements K7.a {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(T7 this$0, int i) {
            RecyclerView recyclerView;
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            C1808k1 c1808k1 = this$0.b;
            if (c1808k1 == null || (recyclerView = c1808k1.b) == null) {
                return;
            }
            recyclerView.smoothScrollToPosition(i);
        }

        @Override // io.didomi.sdk.K7.a
        public void a() {
            T7.this.e();
        }

        @Override // io.didomi.sdk.K7.a
        public void a(final int i) {
            T7.this.c().d(i);
            FragmentActivity fragmentActivityRequireActivity = T7.this.requireActivity();
            final T7 t7 = T7.this;
            fragmentActivityRequireActivity.runOnUiThread(new Runnable() { // from class: io.didomi.sdk.ad
                @Override // java.lang.Runnable
                public final void run() {
                    T7.c.a(t7, i);
                }
            });
        }

        @Override // io.didomi.sdk.K7.a
        public void a(String id) {
            Intrinsics.checkNotNullParameter(id, "id");
            T7.this.requireActivity().getSupportFragmentManager().beginTransaction().setCustomAnimations(R.anim.didomi_enter_from_right, R.anim.didomi_fade_out, R.anim.didomi_fade_in, R.anim.didomi_exit_to_right_alpha).replace(R.id.container_ctv_preferences_secondary, F7.INSTANCE.a(id)).addToBackStack("TVVendorDataCategoryFragment").commit();
        }

        @Override // io.didomi.sdk.K7.a
        public void a(boolean z) {
            T7.this.c().c(z);
        }

        @Override // io.didomi.sdk.K7.a
        public void b() {
            T7.this.j();
        }

        @Override // io.didomi.sdk.K7.a
        public void b(int i) {
            T7.this.b().b(i);
            T7.this.f();
        }

        @Override // io.didomi.sdk.K7.a
        public void b(boolean z) {
            T7.this.c().d(z);
        }

        @Override // io.didomi.sdk.K7.a
        public void c() {
            T7.this.i();
        }

        @Override // io.didomi.sdk.K7.a
        public void d() {
            T7.this.h();
        }

        @Override // io.didomi.sdk.K7.a
        public void e() {
            T7.this.k();
        }

        @Override // io.didomi.sdk.K7.a
        public void f() {
            T7.this.g();
        }

        @Override // io.didomi.sdk.K7.a
        public void g() {
            T7.this.d();
        }
    }

    private final void a(Fragment fragment, String str) {
        requireActivity().getSupportFragmentManager().beginTransaction().setCustomAnimations(R.anim.didomi_enter_from_right, R.anim.didomi_fade_out, R.anim.didomi_fade_in, R.anim.didomi_exit_to_right_alpha).replace(R.id.container_ctv_preferences_secondary, fragment, str).addToBackStack(str).commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C1808k1 this_apply, T7 this$0) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RecyclerView.Adapter adapter = this_apply.b.getAdapter();
        K7 k7 = adapter instanceof K7 ? (K7) adapter : null;
        if (k7 != null) {
            k7.a(this$0.c().g0());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(Boolean bool) {
        InternalVendor value;
        DeviceStorageDisclosures deviceStorageDisclosures;
        RecyclerView recyclerView;
        if (!Intrinsics.areEqual(bool, Boolean.TRUE) || (value = c().J().getValue()) == null || (deviceStorageDisclosures = value.getDeviceStorageDisclosures()) == null) {
            return;
        }
        b().a(value.getName(), deviceStorageDisclosures);
        C1808k1 c1808k1 = this.b;
        RecyclerView.Adapter adapter = (c1808k1 == null || (recyclerView = c1808k1.b) == null) ? null : recyclerView.getAdapter();
        K7 k7 = adapter instanceof K7 ? (K7) adapter : null;
        if (k7 != null) {
            k7.a(b().a(c().s(), C1870q3.h(value)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d() {
        a(new C1904t7(), "TVVendorAdditionalDataFragment");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e() {
        a(new E7(), "TVVendorConsentDataFragment");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f() {
        a(new Z7(), "io.didomi.dialog.VENDOR_DISCLOSURES_DETAIL");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g() {
        a(new C1755e8(), "TVVendorIabFragment");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h() {
        a(new C1795i8(), "TVVendorLegIntClaimFragment");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i() {
        a(new C1815k8(), "TVVendorLegIntDataFragment");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j() {
        a(new C1725b8(), "TVVendorEssentialDataFragment");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k() {
        a(new C1845n8(), "TVVendorPrivacyFragment");
    }

    @Override // io.didomi.drawable.C8
    public void a() {
        final C1808k1 c1808k1 = this.b;
        if (c1808k1 != null) {
            c1808k1.getRoot().postDelayed(new Runnable() { // from class: io.didomi.sdk.zc
                @Override // java.lang.Runnable
                public final void run() {
                    T7.a(c1808k1, this);
                }
            }, 100L);
        }
    }

    public final C1853o6 b() {
        C1853o6 c1853o6 = this.f8378d;
        if (c1853o6 != null) {
            return c1853o6;
        }
        Intrinsics.throwUninitializedPropertyAccessException("disclosuresModel");
        return null;
    }

    public final C1905t8 c() {
        C1905t8 c1905t8 = this.c;
        if (c1905t8 != null) {
            return c1905t8;
        }
        Intrinsics.throwUninitializedPropertyAccessException("model");
        return null;
    }

    @Override // androidx.fragment.app.DialogFragment
    public int getTheme() {
        return R.style.Didomi_Theme_TVDialog;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Didomi.Companion.getInstance().getComponent$android_release().a(this);
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        c().d(0);
    }

    @Override // androidx.appcompat.app.AppCompatDialogFragment, androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(bundle);
        dialogOnCreateDialog.setCancelable(false);
        dialogOnCreateDialog.setCanceledOnTouchOutside(false);
        Window window = dialogOnCreateDialog.getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new InsetDrawable((Drawable) new ColorDrawable(0), 0, 0, 0, 0));
        }
        Intrinsics.checkNotNullExpressionValue(dialogOnCreateDialog, "super.onCreateDialog(sav…), 0, 0, 0, 0))\n        }");
        return dialogOnCreateDialog;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        C1808k1 c1808k1A = C1808k1.a(inflater, viewGroup, false);
        this.b = c1808k1A;
        FrameLayout root = c1808k1A.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "inflate(inflater, parent…nding = it\n        }.root");
        return root;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        RecyclerView recyclerView;
        super.onDestroyView();
        c().M().removeObservers(getViewLifecycleOwner());
        C1808k1 c1808k1 = this.b;
        if (c1808k1 != null && (recyclerView = c1808k1.b) != null) {
            recyclerView.setAdapter(null);
            recyclerView.setLayoutManager(null);
        }
        this.b = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        RecyclerView recyclerView;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        C1808k1 c1808k1 = this.b;
        if (c1808k1 != null && (recyclerView = c1808k1.b) != null) {
            recyclerView.setAdapter(new K7(this.a, c().u0()));
            recyclerView.setItemAnimator(null);
            Context context = recyclerView.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            recyclerView.setLayoutManager(new CenterLayoutManager(context, 1, false));
            recyclerView.setHasFixedSize(true);
        }
        C1905t8 c1905t8C = c();
        if (c1905t8C.a0()) {
            a(Boolean.TRUE);
            return;
        }
        MutableLiveData<Boolean> mutableLiveDataM = c1905t8C.M();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        final b bVar = new b(this);
        mutableLiveDataM.observe(viewLifecycleOwner, new Observer() { // from class: io.didomi.sdk.bd
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                T7.a(bVar, obj);
            }
        });
        InternalVendor value = c1905t8C.J().getValue();
        Intrinsics.checkNotNull(value, "null cannot be cast to non-null type io.didomi.sdk.models.InternalVendor");
        c1905t8C.C(value);
    }
}
