package io.didomi.drawable;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.A0;
import io.didomi.drawable.C1927w0;
import io.didomi.drawable.models.DeviceStorageDisclosures;
import io.didomi.drawable.models.InternalVendor;
import io.didomi.drawable.view.mobile.DidomiToggle;
import io.didomi.drawable.view.mobile.HeaderView;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0087\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004*\u0001$\u0018\u0000 L2\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u0017\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\n\u0010\tJ\u0017\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000b\u0010\tJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0005\u0010\tJ\u0017\u0010\f\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\f\u0010\tJ\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\r\u0010\tJ\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000e\u0010\tJ\u0017\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000f\u0010\tJ\u0017\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0010\u0010\tJ\u000f\u0010\f\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\f\u0010\u0003J\u000f\u0010\u000f\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000f\u0010\u0003J\u0017\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J+\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\u00152\b\u0010\u0018\u001a\u0004\u0018\u00010\u00172\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ!\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001b2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0004H\u0016¢\u0006\u0004\b!\u0010\u0003J\u000f\u0010\"\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\"\u0010\u0003J\u000f\u0010#\u001a\u00020\u0004H\u0016¢\u0006\u0004\b#\u0010\u0003R\u0014\u0010&\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010%R\u0014\u0010)\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010(R\"\u0010/\u001a\u00020*8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u0010+\u001a\u0004\b\u0010\u0010,\"\u0004\b-\u0010.R\"\u00105\u001a\u0002008\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000e\u00101\u001a\u0004\b\b\u00102\"\u0004\b3\u00104R\"\u0010;\u001a\u0002068\u0016@\u0016X\u0097.¢\u0006\u0012\n\u0004\b\f\u00107\u001a\u0004\b\u000b\u00108\"\u0004\b9\u0010:R\"\u0010A\u001a\u00020<8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000f\u0010=\u001a\u0004\b\u000e\u0010>\"\u0004\b?\u0010@R\u0018\u0010D\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010CR\u0018\u0010G\u001a\u0004\u0018\u00010E8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010FR \u0010K\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010I\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010J¨\u0006M"}, d2 = {"Lio/didomi/sdk/R8;", "Lio/didomi/sdk/I0;", "<init>", "()V", "", "g", "Lio/didomi/sdk/models/InternalVendor;", "vendor", "c", "(Lio/didomi/sdk/models/InternalVendor;)V", "h", "a", "e", "i", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, InneractiveMediationDefs.GENDER_FEMALE, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/content/Context;", "context", "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "view", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", o2.h.u0, o2.h.t0, "onDestroyView", "io/didomi/sdk/R8$b", "Lio/didomi/sdk/R8$b;", "deviceStorageDisclosuresAdapterCallback", "Lio/didomi/sdk/d4;", "Lio/didomi/sdk/d4;", "dismissHelper", "Lio/didomi/sdk/C0;", "Lio/didomi/sdk/C0;", "()Lio/didomi/sdk/C0;", "setDisclosuresModel", "(Lio/didomi/sdk/C0;)V", "disclosuresModel", "Lio/didomi/sdk/h9;", "Lio/didomi/sdk/h9;", "()Lio/didomi/sdk/h9;", "setModel", "(Lio/didomi/sdk/h9;)V", "model", "Lio/didomi/sdk/z8;", "Lio/didomi/sdk/z8;", "()Lio/didomi/sdk/z8;", "setThemeProvider", "(Lio/didomi/sdk/z8;)V", "themeProvider", "Lio/didomi/sdk/D8;", "Lio/didomi/sdk/D8;", "()Lio/didomi/sdk/D8;", "setUiProvider", "(Lio/didomi/sdk/D8;)V", "uiProvider", "Lio/didomi/sdk/n1;", "Lio/didomi/sdk/n1;", "binding", "Lio/didomi/sdk/G2;", "Lio/didomi/sdk/G2;", "footerBinding", "Landroidx/lifecycle/Observer;", "", "Landroidx/lifecycle/Observer;", "deviceStorageDisclosuresLoadingObserver", "j", "android_release"}, mv = {1, 8, 0})
public final class R8 extends I0 {

    /* JADX INFO: renamed from: j, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final b deviceStorageDisclosuresAdapterCallback = new b();

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final C1741d4 dismissHelper = new C1741d4();

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    public C0 disclosuresModel;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    public h9 model;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    public C1965z8 themeProvider;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    public D8 uiProvider;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private C1838n1 binding;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata */
    private G2 footerBinding;

    /* JADX INFO: renamed from: i, reason: from kotlin metadata */
    private Observer<Boolean> deviceStorageDisclosuresLoadingObserver;

    /* JADX INFO: renamed from: io.didomi.sdk.R8$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lio/didomi/sdk/R8$a;", "", "<init>", "()V", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "", "a", "(Landroidx/fragment/app/FragmentManager;)V", "", "TAG", "Ljava/lang/String;", "android_release"}, mv = {1, 8, 0})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        public final void a(FragmentManager fragmentManager) {
            Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
            if (fragmentManager.findFragmentByTag("VendorDetailFragment") == null) {
                new R8().show(fragmentManager, "VendorDetailFragment");
            } else {
                Log.w$default("Fragment with tag 'VendorDetailFragment' is already present", null, 2, null);
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"io/didomi/sdk/R8$b", "Lio/didomi/sdk/A0$a;", "", "index", "", "a", "(I)V", "android_release"}, mv = {1, 8, 0})
    public static final class b implements A0.a {
        b() {
        }

        @Override // io.didomi.sdk.A0.a
        public void a(int index) {
            R8.this.b().b(index);
            C1927w0.Companion companion = C1927w0.INSTANCE;
            FragmentManager childFragmentManager = R8.this.getChildFragmentManager();
            Intrinsics.checkNotNullExpressionValue(childFragmentManager, "childFragmentManager");
            companion.a(childFragmentManager);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"io/didomi/sdk/R8$c", "Lio/didomi/sdk/view/mobile/DidomiToggle$a;", "Lio/didomi/sdk/view/mobile/DidomiToggle;", "toggle", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "state", "", "a", "(Lio/didomi/sdk/view/mobile/DidomiToggle;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "android_release"}, mv = {1, 8, 0})
    public static final class c implements DidomiToggle.a {
        final /* synthetic */ DidomiToggle b;

        c(DidomiToggle didomiToggle) {
            this.b = didomiToggle;
        }

        @Override // io.didomi.sdk.view.mobile.DidomiToggle.a
        public void a(DidomiToggle toggle, DidomiToggle.b state) {
            Intrinsics.checkNotNullParameter(toggle, "toggle");
            Intrinsics.checkNotNullParameter(state, "state");
            R8.this.c().b(state);
            R8.this.c().c0();
            DidomiToggle onStateChange = this.b;
            Intrinsics.checkNotNullExpressionValue(onStateChange, "onStateChange");
            j9.b(onStateChange, R8.this.c().K());
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"io/didomi/sdk/R8$d", "Lio/didomi/sdk/view/mobile/DidomiToggle$a;", "Lio/didomi/sdk/view/mobile/DidomiToggle;", "toggle", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "state", "", "a", "(Lio/didomi/sdk/view/mobile/DidomiToggle;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "android_release"}, mv = {1, 8, 0})
    public static final class d implements DidomiToggle.a {
        final /* synthetic */ DidomiToggle b;

        d(DidomiToggle didomiToggle) {
            this.b = didomiToggle;
        }

        @Override // io.didomi.sdk.view.mobile.DidomiToggle.a
        public void a(DidomiToggle toggle, DidomiToggle.b state) {
            Intrinsics.checkNotNullParameter(toggle, "toggle");
            Intrinsics.checkNotNullParameter(state, "state");
            R8.this.c().c(state);
            R8.this.c().c0();
            DidomiToggle onStateChange = this.b;
            Intrinsics.checkNotNullExpressionValue(onStateChange, "onStateChange");
            j9.b(onStateChange, R8.this.c().N());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(R8 this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(R8 this$0, AppCompatButton this_apply, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this$0.c().B())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(R8 this$0, InternalVendor vendor, Boolean bool) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(vendor, "$vendor");
        if (bool == null || !bool.booleanValue()) {
            this$0.f();
        } else {
            this$0.e();
            this$0.b(vendor);
        }
    }

    private final void a(InternalVendor vendor) {
        C1838n1 c1838n1 = this.binding;
        if (c1838n1 != null) {
            Pair<String, List<DataProcessingDisplay>> pairF = c().f(vendor);
            if (pairF == null) {
                TextView textView = c1838n1.f8707e;
                Intrinsics.checkNotNullExpressionValue(textView, "binding.vendorAdditionalDataprocessingTitle");
                textView.setVisibility(8);
                LinearLayout linearLayout = c1838n1.c;
                Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.vendorAdditionalDataprocessingList");
                linearLayout.setVisibility(8);
                View view = c1838n1.f8706d;
                Intrinsics.checkNotNullExpressionValue(view, "binding.vendorAdditionalDataprocessingSeparator");
                view.setVisibility(8);
                return;
            }
            TextView setupAdditionalDataProcessing$lambda$25$lambda$21 = c1838n1.f8707e;
            Intrinsics.checkNotNullExpressionValue(setupAdditionalDataProcessing$lambda$25$lambda$21, "setupAdditionalDataProcessing$lambda$25$lambda$21");
            C1955y8.a(setupAdditionalDataProcessing$lambda$25$lambda$21, a().i().n());
            setupAdditionalDataProcessing$lambda$25$lambda$21.setText(pairF.f());
            LinearLayout linearLayout2 = c1838n1.c;
            linearLayout2.removeAllViews();
            for (DataProcessingDisplay dataProcessingDisplay : pairF.g()) {
                Context context = linearLayout2.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "context");
                C1897t0 c1897t0 = new C1897t0(context, null, 0, 6, null);
                c1897t0.a(dataProcessingDisplay);
                linearLayout2.addView(c1897t0);
            }
            View view2 = c1838n1.f8706d;
            Intrinsics.checkNotNullExpressionValue(view2, "binding.vendorAdditionalDataprocessingSeparator");
            k9.a(view2, a(), false, 2, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(String str, AppCompatButton this_apply, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
    }

    private final void b(InternalVendor vendor) {
        C1838n1 c1838n1 = this.binding;
        if (c1838n1 != null) {
            ProgressBar progressBar = c1838n1.s;
            Intrinsics.checkNotNullExpressionValue(progressBar, "binding.vendorDeviceStorageDisclosuresLoader");
            progressBar.setVisibility(8);
            if (c().F(vendor)) {
                TextView textView = c1838n1.q;
                Intrinsics.checkNotNullExpressionValue(textView, "binding.vendorDeviceStorageDisclosuresLink");
                textView.setVisibility(8);
                C0 c0B = b();
                String name = vendor.getName();
                DeviceStorageDisclosures deviceStorageDisclosures = vendor.getDeviceStorageDisclosures();
                Intrinsics.checkNotNull(deviceStorageDisclosures, "null cannot be cast to non-null type io.didomi.sdk.models.DeviceStorageDisclosures");
                c0B.a(name, deviceStorageDisclosures);
                RecyclerView recyclerView = c1838n1.r;
                recyclerView.setAdapter(new A0(this.deviceStorageDisclosuresAdapterCallback, b().c(), a()));
                recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
                recyclerView.addItemDecoration(new C1957z0(new ColorDrawable(ContextCompat.getColor(recyclerView.getContext(), a().t() ? R.color.didomi_dark_divider : R.color.didomi_light_divider))));
                Intrinsics.checkNotNullExpressionValue(recyclerView, "setupCompletedDeviceStor…sList$lambda$51$lambda$50");
                recyclerView.setVisibility(0);
                return;
            }
            RecyclerView recyclerView2 = c1838n1.r;
            Intrinsics.checkNotNullExpressionValue(recyclerView2, "binding.vendorDeviceStorageDisclosuresList");
            recyclerView2.setVisibility(8);
            if (!c().E(vendor)) {
                TextView textView2 = c1838n1.q;
                Intrinsics.checkNotNullExpressionValue(textView2, "binding.vendorDeviceStorageDisclosuresLink");
                textView2.setVisibility(8);
                f();
                return;
            }
            TextView textView3 = c1838n1.q;
            textView3.setTextColor(a().j());
            textView3.setText(c().k(vendor));
            textView3.setMovementMethod(LinkMovementMethod.getInstance());
            if (a().v()) {
                textView3.setLinkTextColor(a().f());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(String str, AppCompatButton this_apply, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
    }

    private final void c(InternalVendor vendor) {
        C1838n1 c1838n1 = this.binding;
        if (c1838n1 != null) {
            Pair<String, List<DataProcessingDisplay>> pairG = c().g(vendor);
            if (pairG == null) {
                Group group = c1838n1.f8708f;
                Intrinsics.checkNotNullExpressionValue(group, "binding.vendorConsentDataprocessingHeader");
                group.setVisibility(8);
                LinearLayout linearLayout = c1838n1.f8709g;
                Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.vendorConsentDataprocessingList");
                linearLayout.setVisibility(8);
                View view = c1838n1.j;
                Intrinsics.checkNotNullExpressionValue(view, "binding.vendorConsentSeparator");
                view.setVisibility(8);
                return;
            }
            TextView textView = c1838n1.i;
            Intrinsics.checkNotNullExpressionValue(textView, "setupConsentBasedDataPro…ssing$lambda$15$lambda$11");
            C1955y8.a(textView, a().i().n());
            textView.setText(pairG.f());
            LinearLayout linearLayout2 = c1838n1.f8709g;
            linearLayout2.removeAllViews();
            for (DataProcessingDisplay dataProcessingDisplay : pairG.g()) {
                Context context = linearLayout2.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "context");
                C1897t0 c1897t0 = new C1897t0(context, null, 0, 6, null);
                c1897t0.a(dataProcessingDisplay);
                linearLayout2.addView(c1897t0);
            }
            View view2 = c1838n1.j;
            Intrinsics.checkNotNullExpressionValue(view2, "binding.vendorConsentSeparator");
            k9.a(view2, a(), false, 2, (Object) null);
        }
    }

    private final void d(InternalVendor vendor) {
        C1838n1 c1838n1 = this.binding;
        if (c1838n1 != null) {
            if (!C1870q3.i(vendor)) {
                TextView textView = c1838n1.l;
                Intrinsics.checkNotNullExpressionValue(textView, "binding.vendorCookiesSectionTitle");
                textView.setVisibility(8);
                TextView textView2 = c1838n1.k;
                Intrinsics.checkNotNullExpressionValue(textView2, "binding.vendorCookiesSectionDisclaimer");
                textView2.setVisibility(8);
                return;
            }
            TextView setupCookiesSection$lambda$45$lambda$43 = c1838n1.l;
            Intrinsics.checkNotNullExpressionValue(setupCookiesSection$lambda$45$lambda$43, "setupCookiesSection$lambda$45$lambda$43");
            C1955y8.a(setupCookiesSection$lambda$45$lambda$43, a().i().n());
            setupCookiesSection$lambda$45$lambda$43.setText(c().s());
            TextView setupCookiesSection$lambda$45$lambda$44 = c1838n1.k;
            if (!C1870q3.h(vendor)) {
                Intrinsics.checkNotNullExpressionValue(setupCookiesSection$lambda$45$lambda$44, "setupCookiesSection$lambda$45$lambda$44");
                setupCookiesSection$lambda$45$lambda$44.setVisibility(8);
            } else {
                Intrinsics.checkNotNullExpressionValue(setupCookiesSection$lambda$45$lambda$44, "setupCookiesSection$lambda$45$lambda$44");
                C1955y8.a(setupCookiesSection$lambda$45$lambda$44, a().i().c());
                setupCookiesSection$lambda$45$lambda$44.setText(c().i(vendor));
            }
        }
    }

    private final void e() {
        Observer<Boolean> observer = this.deviceStorageDisclosuresLoadingObserver;
        if (observer != null) {
            c().M().removeObserver(observer);
            this.deviceStorageDisclosuresLoadingObserver = null;
        }
    }

    private final void e(InternalVendor vendor) {
        C1838n1 c1838n1 = this.binding;
        if (c1838n1 != null) {
            Pair<String, List<DataCategoryDisplay>> pairJ = c().j(vendor);
            if (pairJ == null) {
                TextView textView = c1838n1.o;
                Intrinsics.checkNotNullExpressionValue(textView, "binding.vendorDataCategoriesTitle");
                textView.setVisibility(8);
                LinearLayout linearLayout = c1838n1.m;
                Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.vendorDataCategoriesList");
                linearLayout.setVisibility(8);
                View view = c1838n1.n;
                Intrinsics.checkNotNullExpressionValue(view, "binding.vendorDataCategoriesSeparator");
                view.setVisibility(8);
                return;
            }
            TextView setupDataCategories$lambda$35$lambda$31 = c1838n1.o;
            Intrinsics.checkNotNullExpressionValue(setupDataCategories$lambda$35$lambda$31, "setupDataCategories$lambda$35$lambda$31");
            C1955y8.a(setupDataCategories$lambda$35$lambda$31, a().i().n());
            setupDataCategories$lambda$35$lambda$31.setText(pairJ.f());
            LinearLayout linearLayout2 = c1838n1.m;
            linearLayout2.removeAllViews();
            for (DataCategoryDisplay dataCategoryDisplay : pairJ.g()) {
                Context context = linearLayout2.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "context");
                C1837n0 c1837n0 = new C1837n0(context, null, 0, 6, null);
                c1837n0.a(dataCategoryDisplay, a().i().c());
                linearLayout2.addView(c1837n0);
            }
            View view2 = c1838n1.n;
            Intrinsics.checkNotNullExpressionValue(view2, "binding.vendorDataCategoriesSeparator");
            k9.a(view2, a(), false, 2, (Object) null);
        }
    }

    private final void f() {
        C1838n1 c1838n1 = this.binding;
        if (c1838n1 != null) {
            c1838n1.l.setVisibility(c1838n1.k.getVisibility());
        }
    }

    private final void f(final InternalVendor vendor) {
        ProgressBar progressBar;
        if (c().a0()) {
            b(vendor);
            return;
        }
        C1838n1 c1838n1 = this.binding;
        if (c1838n1 != null && (progressBar = c1838n1.s) != null) {
            if (Build.VERSION.SDK_INT >= 21) {
                progressBar.setIndeterminateTintList(ColorStateList.valueOf(a().r()));
            } else {
                progressBar.getIndeterminateDrawable().setColorFilter(new PorterDuffColorFilter(a().r(), PorterDuff.Mode.SRC_IN));
            }
            progressBar.setVisibility(0);
        }
        Observer<Boolean> observer = new Observer() { // from class: io.didomi.sdk.tc
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                R8.a(this.a, vendor, (Boolean) obj);
            }
        };
        c().M().observe(this, observer);
        this.deviceStorageDisclosuresLoadingObserver = observer;
        c().C(vendor);
    }

    private final void g() {
        View view;
        C1838n1 c1838n1 = this.binding;
        if (c1838n1 != null && (view = c1838n1.I) != null) {
            k9.a(view, a());
        }
        G2 g2 = this.footerBinding;
        if (g2 != null) {
            TextView textView = g2.f8225d;
            Intrinsics.checkNotNullExpressionValue(textView, "footerBinding.vendorsSubtext");
            textView.setVisibility(8);
            Button button = g2.b;
            Intrinsics.checkNotNullExpressionValue(button, "footerBinding.buttonSave");
            int i = 4;
            button.setVisibility(4);
            ImageView setupFooterView$lambda$10$lambda$9 = g2.c;
            if (!c().Q()) {
                Intrinsics.checkNotNullExpressionValue(setupFooterView$lambda$10$lambda$9, "setupFooterView$lambda$10$lambda$9");
                C1820l3.a(setupFooterView$lambda$10$lambda$9, a().g());
                i = 0;
            }
            setupFooterView$lambda$10$lambda$9.setVisibility(i);
        }
    }

    private final void g(InternalVendor vendor) {
        C1838n1 c1838n1 = this.binding;
        if (c1838n1 != null) {
            Pair<String, List<DataProcessingDisplay>> pairL = c().l(vendor);
            if (pairL == null) {
                TextView textView = c1838n1.v;
                Intrinsics.checkNotNullExpressionValue(textView, "binding.vendorEssentialPurposesTitle");
                textView.setVisibility(8);
                LinearLayout linearLayout = c1838n1.t;
                Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.vendorEssentialPurposesList");
                linearLayout.setVisibility(8);
                View view = c1838n1.u;
                Intrinsics.checkNotNullExpressionValue(view, "binding.vendorEssentialPurposesSeparator");
                view.setVisibility(8);
                return;
            }
            TextView setupEssentialPurposes$lambda$30$lambda$26 = c1838n1.v;
            Intrinsics.checkNotNullExpressionValue(setupEssentialPurposes$lambda$30$lambda$26, "setupEssentialPurposes$lambda$30$lambda$26");
            C1955y8.a(setupEssentialPurposes$lambda$30$lambda$26, a().i().n());
            setupEssentialPurposes$lambda$30$lambda$26.setText(pairL.f());
            LinearLayout linearLayout2 = c1838n1.t;
            linearLayout2.removeAllViews();
            for (DataProcessingDisplay dataProcessingDisplay : pairL.g()) {
                Context context = linearLayout2.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "context");
                C1897t0 c1897t0 = new C1897t0(context, null, 0, 6, null);
                c1897t0.a(dataProcessingDisplay);
                linearLayout2.addView(c1897t0);
            }
            View view2 = c1838n1.u;
            Intrinsics.checkNotNullExpressionValue(view2, "binding.vendorEssentialPurposesSeparator");
            k9.a(view2, a(), false, 2, (Object) null);
        }
    }

    private final void h(InternalVendor vendor) {
        C1838n1 c1838n1 = this.binding;
        if (c1838n1 != null) {
            Pair<String, List<DataProcessingDisplay>> pairO = c().o(vendor);
            if (pairO == null) {
                Group group = c1838n1.y;
                Intrinsics.checkNotNullExpressionValue(group, "binding.vendorLiDataprocessingHeader");
                group.setVisibility(8);
                LinearLayout linearLayout = c1838n1.z;
                Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.vendorLiDataprocessingList");
                linearLayout.setVisibility(8);
                View view = c1838n1.C;
                Intrinsics.checkNotNullExpressionValue(view, "binding.vendorLiSeparator");
                view.setVisibility(8);
                return;
            }
            TextView textView = c1838n1.B;
            Intrinsics.checkNotNullExpressionValue(textView, "setupLegitimateInterestB…ssing$lambda$20$lambda$16");
            C1955y8.a(textView, a().i().n());
            textView.setText(pairO.f());
            LinearLayout linearLayout2 = c1838n1.z;
            linearLayout2.removeAllViews();
            for (DataProcessingDisplay dataProcessingDisplay : pairO.g()) {
                Context context = linearLayout2.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "context");
                C1897t0 c1897t0 = new C1897t0(context, null, 0, 6, null);
                c1897t0.a(dataProcessingDisplay);
                linearLayout2.addView(c1897t0);
            }
            View view2 = c1838n1.C;
            Intrinsics.checkNotNullExpressionValue(view2, "binding.vendorLiSeparator");
            k9.a(view2, a(), false, 2, (Object) null);
        }
    }

    private final void i(InternalVendor vendor) {
        final AppCompatButton appCompatButton;
        final AppCompatButton appCompatButton2;
        final AppCompatButton appCompatButton3;
        TextView textView;
        final String strR = c().r(vendor);
        C1838n1 c1838n1 = this.binding;
        if (c1838n1 != null && (textView = c1838n1.E) != null) {
            if (strR == null) {
                textView.setVisibility(8);
            } else {
                textView.setText(c().p(vendor));
                C1955y8.a(textView, a().i().d());
            }
        }
        C1838n1 c1838n12 = this.binding;
        if (c1838n12 != null && (appCompatButton3 = c1838n12.w) != null) {
            if (c().z(vendor)) {
                C1955y8.a(appCompatButton3, a().i().h());
                SpannableString spannableStringS = c().S();
                ColorStateList textColors = appCompatButton3.getTextColors();
                Intrinsics.checkNotNullExpressionValue(textColors, "textColors");
                appCompatButton3.setText(T5.a(spannableStringS, appCompatButton3, textColors));
                j9.a(appCompatButton3, null, c().z(), null, false, null, 0, null, null, 253, null);
                appCompatButton3.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.xc
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        R8.a(this.a, appCompatButton3, view);
                    }
                });
            } else {
                appCompatButton3.setVisibility(8);
            }
        }
        C1838n1 c1838n13 = this.binding;
        if (c1838n13 != null && (appCompatButton2 = c1838n13.D) != null) {
            if (strR == null) {
                appCompatButton2.setVisibility(8);
            } else {
                C1955y8.a(appCompatButton2, a().i().h());
                SpannableString spannableStringS2 = c().s(vendor);
                ColorStateList textColors2 = appCompatButton2.getTextColors();
                Intrinsics.checkNotNullExpressionValue(textColors2, "textColors");
                appCompatButton2.setText(T5.a(spannableStringS2, appCompatButton2, textColors2));
                j9.a(appCompatButton2, null, c().Z(), null, false, null, 0, null, null, 253, null);
                appCompatButton2.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.vc
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        R8.a(strR, appCompatButton2, view);
                    }
                });
            }
        }
        C1838n1 c1838n14 = this.binding;
        if (c1838n14 == null || (appCompatButton = c1838n14.x) == null) {
            return;
        }
        final String strM = c().m(vendor);
        if (strM == null) {
            appCompatButton.setVisibility(8);
            return;
        }
        C1955y8.a(appCompatButton, a().i().h());
        j9.a(appCompatButton, null, c().Z(), null, false, null, 0, null, null, 253, null);
        appCompatButton.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.wc
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                R8.b(strM, appCompatButton, view);
            }
        });
        SpannableString spannableStringT = c().T();
        ColorStateList textColors3 = appCompatButton.getTextColors();
        Intrinsics.checkNotNullExpressionValue(textColors3, "textColors");
        appCompatButton.setText(T5.a(spannableStringT, appCompatButton, textColors3));
    }

    @Override // io.didomi.drawable.I0
    public C1965z8 a() {
        C1965z8 c1965z8 = this.themeProvider;
        if (c1965z8 != null) {
            return c1965z8;
        }
        Intrinsics.throwUninitializedPropertyAccessException("themeProvider");
        return null;
    }

    public final C0 b() {
        C0 c0 = this.disclosuresModel;
        if (c0 != null) {
            return c0;
        }
        Intrinsics.throwUninitializedPropertyAccessException("disclosuresModel");
        return null;
    }

    public final h9 c() {
        h9 h9Var = this.model;
        if (h9Var != null) {
            return h9Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("model");
        return null;
    }

    public final D8 d() {
        D8 d8 = this.uiProvider;
        if (d8 != null) {
            return d8;
        }
        Intrinsics.throwUninitializedPropertyAccessException("uiProvider");
        return null;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        J0 j0A = F0.a(this);
        if (j0A != null) {
            j0A.a(this);
        }
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        C1838n1 c1838n1A = C1838n1.a(inflater, container, false);
        this.binding = c1838n1A;
        ConstraintLayout constraintLayoutA = c1838n1A.getRoot();
        this.footerBinding = G2.a(constraintLayoutA);
        Intrinsics.checkNotNullExpressionValue(constraintLayoutA, "inflate(inflater, contai…ng.bind(it)\n            }");
        return constraintLayoutA;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        RecyclerView recyclerView;
        super.onDestroyView();
        e();
        C3 c3E = c().E();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "viewLifecycleOwner");
        c3E.a(viewLifecycleOwner);
        C1838n1 c1838n1 = this.binding;
        if (c1838n1 != null && (recyclerView = c1838n1.r) != null) {
            recyclerView.setAdapter(null);
            recyclerView.setLayoutManager(null);
        }
        this.binding = null;
        this.footerBinding = null;
        c().a(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.dismissHelper.a();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.dismissHelper.a(this, d());
    }

    @Override // io.didomi.drawable.I0, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        InternalVendor value = c().J().getValue();
        if (value == null) {
            Log.e$default("Vendor not initialized, abort", null, 2, null);
            dismiss();
            return;
        }
        C1838n1 c1838n1 = this.binding;
        if (c1838n1 != null) {
            HeaderView headerView = c1838n1.p;
            Intrinsics.checkNotNullExpressionValue(headerView, "binding.vendorDetailHeader");
            C3 c3E = c().E();
            LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
            Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "viewLifecycleOwner");
            HeaderView.a(headerView, c3E, viewLifecycleOwner, c().m(), null, 8, null);
            AppCompatImageButton onViewCreated$lambda$7$lambda$3 = c1838n1.b;
            Intrinsics.checkNotNullExpressionValue(onViewCreated$lambda$7$lambda$3, "onViewCreated$lambda$7$lambda$3");
            j9.a(onViewCreated$lambda$7$lambda$3, c().q());
            C1820l3.a(onViewCreated$lambda$7$lambda$3, a().j());
            onViewCreated$lambda$7$lambda$3.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.uc
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    R8.a(this.a, view2);
                }
            });
            TextView onViewCreated$lambda$7$lambda$4 = c1838n1.G;
            Intrinsics.checkNotNullExpressionValue(onViewCreated$lambda$7$lambda$4, "onViewCreated$lambda$7$lambda$4");
            C1955y8.a(onViewCreated$lambda$7$lambda$4, a().i().n());
            onViewCreated$lambda$7$lambda$4.setText(c().w(value));
            DidomiToggle onViewCreated$lambda$7$lambda$5 = c1838n1.h;
            Intrinsics.checkNotNullExpressionValue(onViewCreated$lambda$7$lambda$5, "onViewCreated$lambda$7$lambda$5");
            j9.a(onViewCreated$lambda$7$lambda$5, c().K());
            DidomiToggle.b value2 = c().L().getValue();
            if (value2 == null) {
                value2 = DidomiToggle.b.UNKNOWN;
            } else {
                Intrinsics.checkNotNullExpressionValue(value2, "model.selectedVendorCons…idomiToggle.State.UNKNOWN");
            }
            onViewCreated$lambda$7$lambda$5.setState(value2);
            onViewCreated$lambda$7$lambda$5.setCallback(new c(onViewCreated$lambda$7$lambda$5));
            DidomiToggle onViewCreated$lambda$7$lambda$6 = c1838n1.A;
            Intrinsics.checkNotNullExpressionValue(onViewCreated$lambda$7$lambda$6, "onViewCreated$lambda$7$lambda$6");
            j9.a(onViewCreated$lambda$7$lambda$6, c().N());
            DidomiToggle.b value3 = c().O().getValue();
            if (value3 != null) {
                onViewCreated$lambda$7$lambda$6.setState(value3);
            }
            onViewCreated$lambda$7$lambda$6.setCallback(new d(onViewCreated$lambda$7$lambda$6));
            c(value);
            h(value);
            a(value);
            g(value);
            e(value);
            i(value);
            d(value);
            f(value);
            g();
        }
    }
}
