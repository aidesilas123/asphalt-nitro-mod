package io.didomi.drawable;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.LifecycleOwner;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.G5;
import io.didomi.drawable.W3;
import io.didomi.drawable.models.InternalPurpose;
import io.didomi.drawable.purpose.common.model.PurposeCategory;
import io.didomi.drawable.purpose.mobile.PurposeSaveView;
import io.didomi.drawable.view.mobile.DidomiToggle;
import io.didomi.drawable.view.mobile.HeaderView;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;

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
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 <2\u00020\u0001:\u0001 B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ+\u0010\u0012\u001a\u00020\u00112\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0017\u0010\u0003J\u000f\u0010\u0018\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0018\u0010\u0003J\u0017\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001d\u0010\u0003J\u000f\u0010\u001e\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001e\u0010\u0003R\u001d\u0010$\u001a\u0004\u0018\u00010\u001f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0014\u0010+\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010*R\"\u00101\u001a\u00020,8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0006\u0010-\u001a\u0004\b&\u0010.\"\u0004\b/\u00100R\"\u00107\u001a\u0002028\u0016@\u0016X\u0097.¢\u0006\u0012\n\u0004\b\u0005\u00103\u001a\u0004\b \u00104\"\u0004\b5\u00106R\u0018\u0010;\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:¨\u0006="}, d2 = {"Lio/didomi/sdk/H5;", "Lio/didomi/sdk/I0;", "<init>", "()V", "", "e", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/content/Context;", "context", "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "view", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", o2.h.u0, o2.h.t0, "Landroid/content/DialogInterface;", "dialog", "onCancel", "(Landroid/content/DialogInterface;)V", "dismiss", "onDestroyView", "Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "a", "Lkotlin/Lazy;", "c", "()Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "selectedCategory", "Lio/didomi/sdk/d4;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/d4;", "dismissHelper", "Lio/didomi/sdk/G5$a;", "Lio/didomi/sdk/G5$a;", "personalDataCallback", "Lio/didomi/sdk/Q5;", "Lio/didomi/sdk/Q5;", "()Lio/didomi/sdk/Q5;", "setModel", "(Lio/didomi/sdk/Q5;)V", "model", "Lio/didomi/sdk/z8;", "Lio/didomi/sdk/z8;", "()Lio/didomi/sdk/z8;", "setThemeProvider", "(Lio/didomi/sdk/z8;)V", "themeProvider", "Lio/didomi/sdk/W0;", InneractiveMediationDefs.GENDER_FEMALE, "Lio/didomi/sdk/W0;", "binding", "g", "android_release"}, mv = {1, 8, 0})
public final class H5 extends I0 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f8238g = new a(null);
    private final Lazy a = LazyKt__LazyJVMKt.lazy(new c());
    private final C1741d4 b = new C1741d4();
    private final G5.a c = new b();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Q5 f8239d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public C1965z8 f8240e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private W0 f8241f;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\r¨\u0006\u000f"}, d2 = {"Lio/didomi/sdk/H5$a;", "", "<init>", "()V", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "category", "", "a", "(Landroidx/fragment/app/FragmentManager;Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V", "", "PURPOSE_CATEGORY", "Ljava/lang/String;", "TAG", "android_release"}, mv = {1, 8, 0})
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        public final void a(FragmentManager fragmentManager, PurposeCategory category) {
            Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
            Intrinsics.checkNotNullParameter(category, "category");
            if (fragmentManager.findFragmentByTag("SensitivePersonalInfoCategoryFragment") != null) {
                Log.w$default("Fragment with tag 'SensitivePersonalInfoCategoryFragment' is already present", null, 2, null);
                return;
            }
            H5 h5 = new H5();
            Bundle bundle = new Bundle();
            bundle.putParcelable("purpose_category", category);
            h5.setArguments(bundle);
            h5.show(fragmentManager, "SensitivePersonalInfoCategoryFragment");
        }
    }

    @Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J'\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\t\u0010\u000b¨\u0006\f"}, d2 = {"io/didomi/sdk/H5$b", "Lio/didomi/sdk/G5$a;", "Lio/didomi/sdk/W3$a;", "type", "", "id", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "state", "", "a", "(Lio/didomi/sdk/W3$a;Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "(Lio/didomi/sdk/W3$a;Ljava/lang/String;)V", "android_release"}, mv = {1, 8, 0})
    public static final class b implements G5.a {

        @Metadata(mv = {1, 8, 0}, xi = 48)
        public /* synthetic */ class a {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[W3.a.values().length];
                try {
                    iArr[W3.a.Category.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                a = iArr;
            }
        }

        b() {
        }

        @Override // io.didomi.sdk.G5.a
        public void a(W3.a type, String id) throws Throwable {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(id, "id");
            if (a.a[type.ordinal()] != 1) {
                throw new Throwable("Invalid type (" + type + ')');
            }
            PurposeCategory purposeCategoryA = H5.this.b().a(id);
            if (purposeCategoryA == null) {
                return;
            }
            a aVar = H5.f8238g;
            FragmentManager parentFragmentManager = H5.this.getParentFragmentManager();
            Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "parentFragmentManager");
            aVar.a(parentFragmentManager, purposeCategoryA);
        }

        @Override // io.didomi.sdk.G5.a
        public void a(W3.a type, String id, DidomiToggle.b state) {
            RecyclerView recyclerView;
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(state, "state");
            InternalPurpose internalPurposeB = H5.this.b().b(id);
            if (internalPurposeB != null) {
                H5 h5 = H5.this;
                if (type == W3.a.PersonalData) {
                    h5.b().a(internalPurposeB, state);
                    W0 w0 = h5.f8241f;
                    RecyclerView.Adapter adapter = (w0 == null || (recyclerView = w0.f8433d) == null) ? null : recyclerView.getAdapter();
                    G5 g5 = adapter instanceof G5 ? (G5) adapter : null;
                    if (g5 != null) {
                        g5.b(id, state, true);
                    }
                }
            }
            H5.this.e();
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "a", "()Lio/didomi/sdk/purpose/common/model/PurposeCategory;"}, mv = {1, 8, 0})
    static final class c extends Lambda implements Function0<PurposeCategory> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PurposeCategory invoke() {
            if (Build.VERSION.SDK_INT >= 33) {
                Bundle arguments = H5.this.getArguments();
                if (arguments != null) {
                    return (PurposeCategory) arguments.getParcelable("purpose_category", PurposeCategory.class);
                }
            } else {
                Bundle arguments2 = H5.this.getArguments();
                if (arguments2 != null) {
                    return (PurposeCategory) arguments2.getParcelable("purpose_category");
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(H5 this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.d();
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(final H5 this$0, PurposeCategory selectedCategory, Button this_apply, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(selectedCategory, "$selectedCategory");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this$0.b().i(selectedCategory);
        this_apply.post(new Runnable() { // from class: io.didomi.sdk.la
            @Override // java.lang.Runnable
            public final void run() {
                H5.c(this.a);
            }
        });
    }

    private final PurposeCategory c() {
        return (PurposeCategory) this.a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(H5 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    private final void d() {
        b().t();
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e() {
    }

    @Override // io.didomi.drawable.I0
    public C1965z8 a() {
        C1965z8 c1965z8 = this.f8240e;
        if (c1965z8 != null) {
            return c1965z8;
        }
        Intrinsics.throwUninitializedPropertyAccessException("themeProvider");
        return null;
    }

    public final Q5 b() {
        Q5 q5 = this.f8239d;
        if (q5 != null) {
            return q5;
        }
        Intrinsics.throwUninitializedPropertyAccessException("model");
        return null;
    }

    @Override // com.google.android.material.bottomsheet.a, androidx.fragment.app.DialogFragment
    public void dismiss() {
        super.dismiss();
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

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        d();
        super.onCancel(dialog);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        W0 w0A = W0.a(inflater, viewGroup, false);
        this.f8241f = w0A;
        ConstraintLayout root = w0A.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "inflate(inflater, contai…g = it\n            }.root");
        return root;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        RecyclerView recyclerView;
        super.onDestroyView();
        C3 c3I = b().i();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "viewLifecycleOwner");
        c3I.a(viewLifecycleOwner);
        W0 w0 = this.f8241f;
        if (w0 != null && (recyclerView = w0.f8433d) != null) {
            recyclerView.setAdapter(null);
            recyclerView.setLayoutManager(null);
        }
        this.f8241f = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        this.b.a();
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.b.a(this, b().s());
    }

    @Override // io.didomi.drawable.I0, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Throwable {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        final PurposeCategory purposeCategoryC = c();
        if (purposeCategoryC == null) {
            throw new Throwable("Category is invalid");
        }
        b().j(purposeCategoryC);
        W0 w0 = this.f8241f;
        if (w0 != null) {
            AppCompatImageButton onViewCreated$lambda$9$lambda$2 = w0.b;
            String strD = b().d();
            Intrinsics.checkNotNullExpressionValue(onViewCreated$lambda$9$lambda$2, "onViewCreated$lambda$9$lambda$2");
            j9.a(onViewCreated$lambda$9$lambda$2, strD, strD, null, false, null, 0, null, null, 252, null);
            C1820l3.a(onViewCreated$lambda$9$lambda$2, a().j());
            onViewCreated$lambda$9$lambda$2.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.ja
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    H5.a(this.a, view2);
                }
            });
            HeaderView onViewCreated$lambda$9$lambda$3 = w0.c;
            Intrinsics.checkNotNullExpressionValue(onViewCreated$lambda$9$lambda$3, "onViewCreated$lambda$9$lambda$3");
            HeaderView.a(onViewCreated$lambda$9$lambda$3, b().e(purposeCategoryC), null, 0, 6, null);
            onViewCreated$lambda$9$lambda$3.a();
            List<W3> listA = b().a(purposeCategoryC);
            RecyclerView onViewCreated$lambda$9$lambda$4 = w0.f8433d;
            onViewCreated$lambda$9$lambda$4.setAdapter(new G5(listA, a(), this.c));
            onViewCreated$lambda$9$lambda$4.setLayoutManager(new LinearLayoutManager(onViewCreated$lambda$9$lambda$4.getContext(), 1, false));
            Context context = onViewCreated$lambda$9$lambda$4.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            onViewCreated$lambda$9$lambda$4.addItemDecoration(new J4(context, a(), false, false, 12, null));
            Intrinsics.checkNotNullExpressionValue(onViewCreated$lambda$9$lambda$4, "onViewCreated$lambda$9$lambda$4");
            C1792i5.a(onViewCreated$lambda$9$lambda$4, C1950y3.a(listA, PersonalDataDisplayItem.class));
            HeaderView headerView = w0.c;
            Intrinsics.checkNotNullExpressionValue(headerView, "binding.headerSpiCategory");
            C1792i5.a(onViewCreated$lambda$9$lambda$4, headerView);
            PurposeSaveView purposeSaveView = w0.f8434e;
            final Button saveButton$android_release = purposeSaveView.getSaveButton$android_release();
            if (saveButton$android_release != null) {
                C1955y8.a(saveButton$android_release, a().i().j());
                saveButton$android_release.setText(b().l());
                saveButton$android_release.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.ka
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        H5.a(this.a, purposeCategoryC, saveButton$android_release, view2);
                    }
                });
            }
            ImageView logoImage$android_release = purposeSaveView.getLogoImage$android_release();
            if (logoImage$android_release != null) {
                logoImage$android_release.setVisibility(b().a(false) ? 4 : 0);
            }
            View view2 = w0.f8435f;
            Intrinsics.checkNotNullExpressionValue(view2, "binding.viewSpiCategoryBottomDivider");
            k9.a(view2, a());
        }
        b().u();
        e();
    }
}
