package io.didomi.drawable;

import android.content.Context;
import android.content.DialogInterface;
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
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.G5;
import io.didomi.drawable.H5;
import io.didomi.drawable.W3;
import io.didomi.drawable.models.InternalPurpose;
import io.didomi.drawable.purpose.common.model.PurposeCategory;
import io.didomi.drawable.purpose.mobile.PurposeSaveView;
import io.didomi.drawable.view.mobile.DidomiToggle;
import io.didomi.drawable.view.mobile.HeaderView;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;
import kotlin.v;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Exception occurred when reading Kotlin metadata
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:108)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    Caused by: kotlin.metadata.internal.protobuf.InvalidProtocolBufferException: Message was missing required fields.  (Lite runtime could not determine which fields were missing).
    	at kotlin.metadata.internal.protobuf.UninitializedMessageException.asInvalidProtocolBufferException(UninitializedMessageException.java:81)
    	at kotlin.metadata.internal.protobuf.AbstractParser.checkMessageInitialized(AbstractParser.java:71)
    	at kotlin.metadata.internal.protobuf.AbstractParser.parseFrom(AbstractParser.java:209)
    	at kotlin.metadata.internal.protobuf.AbstractParser.parseFrom(AbstractParser.java:49)
    	at kotlin.metadata.internal.metadata.ProtoBuf$Class.parseFrom(ProtoBuf.java:10614)
    	at kotlin.metadata.internal.metadata.jvm.deserialization.JvmProtoBufUtil.readClassDataFrom(JvmProtoBufUtil.kt:37)
    	at kotlin.metadata.internal.metadata.jvm.deserialization.JvmProtoBufUtil.readClassDataFrom(JvmProtoBufUtil.kt:32)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readKmClass$kotlin_metadata_jvm(JvmReadUtils.kt:27)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Class.<init>(KotlinClassMetadata.kt:95)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:50)
    	... 5 more
    */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 =2\u00020\u0001:\u0001\bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u0017\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ+\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J!\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001a\u0010\u0003J\u0017\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001f\u0010\u0003J\u000f\u0010 \u001a\u00020\u0004H\u0016¢\u0006\u0004\b \u0010\u0003R\"\u0010'\u001a\u00020!8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\"\u0010-\u001a\u00020(8\u0016@\u0016X\u0097.¢\u0006\u0012\n\u0004\b\u0005\u0010)\u001a\u0004\b\b\u0010*\"\u0004\b+\u0010,R\u0018\u00100\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010/R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0014\u00108\u001a\u0002058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107R\u0014\u0010<\u001a\u0002098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;¨\u0006>"}, d2 = {"Lio/didomi/sdk/L5;", "Lio/didomi/sdk/I0;", "<init>", "()V", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "category", "a", "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V", "Landroid/content/Context;", "context", "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "view", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", o2.h.u0, "Landroid/content/DialogInterface;", "dialog", "onCancel", "(Landroid/content/DialogInterface;)V", o2.h.t0, "onDestroyView", "Lio/didomi/sdk/Q5;", "Lio/didomi/sdk/Q5;", "c", "()Lio/didomi/sdk/Q5;", "setModel", "(Lio/didomi/sdk/Q5;)V", "model", "Lio/didomi/sdk/z8;", "Lio/didomi/sdk/z8;", "()Lio/didomi/sdk/z8;", "setThemeProvider", "(Lio/didomi/sdk/z8;)V", "themeProvider", "Lio/didomi/sdk/V0;", "Lio/didomi/sdk/V0;", "binding", "Lio/didomi/sdk/w2;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lio/didomi/sdk/w2;", "bottomBarBinding", "Lio/didomi/sdk/d4;", "e", "Lio/didomi/sdk/d4;", "dismissHelper", "Lio/didomi/sdk/G5$a;", InneractiveMediationDefs.GENDER_FEMALE, "Lio/didomi/sdk/G5$a;", "spiCallback", "g", "android_release"}, mv = {1, 8, 0})
public final class L5 extends I0 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f8282g = new a(null);
    public Q5 a;
    public C1965z8 b;
    private V0 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private C1929w2 f8283d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final C1741d4 f8284e = new C1741d4();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final G5.a f8285f = new c();

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lio/didomi/sdk/L5$a;", "", "<init>", "()V", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "", "a", "(Landroidx/fragment/app/FragmentManager;)V", "", "TAG", "Ljava/lang/String;", "android_release"}, mv = {1, 8, 0})
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        public final void a(FragmentManager fragmentManager) {
            Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
            if (fragmentManager.findFragmentByTag("SensitivePersonalInfoFragment") == null) {
                new L5().show(fragmentManager, "SensitivePersonalInfoFragment");
            } else {
                Log.w$default("Fragment with tag 'SensitivePersonalInfoFragment' is already present", null, 2, null);
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "kotlin.jvm.PlatformType", "it", "", "a", "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V"}, mv = {1, 8, 0})
    static final class b extends Lambda implements Function1<DidomiToggle.b, v> {
        b() {
            super(1);
        }

        public final void a(DidomiToggle.b bVar) {
            PurposeCategory value = L5.this.c().m().getValue();
            if (value == null) {
                return;
            }
            L5.this.a(value);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(DidomiToggle.b bVar) {
            a(bVar);
            return v.a;
        }
    }

    @Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J'\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\t\u0010\u000b¨\u0006\f"}, d2 = {"io/didomi/sdk/L5$c", "Lio/didomi/sdk/G5$a;", "Lio/didomi/sdk/W3$a;", "type", "", "id", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "state", "", "a", "(Lio/didomi/sdk/W3$a;Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "(Lio/didomi/sdk/W3$a;Ljava/lang/String;)V", "android_release"}, mv = {1, 8, 0})
    public static final class c implements G5.a {

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

        c() {
        }

        @Override // io.didomi.sdk.G5.a
        public void a(W3.a type, String id) throws Throwable {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(id, "id");
            if (a.a[type.ordinal()] != 1) {
                throw new Throwable("Invalid type (" + type + ')');
            }
            PurposeCategory purposeCategoryA = L5.this.c().a(id);
            if (purposeCategoryA == null) {
                return;
            }
            H5.a aVar = H5.f8238g;
            FragmentManager parentFragmentManager = L5.this.getParentFragmentManager();
            Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "parentFragmentManager");
            aVar.a(parentFragmentManager, purposeCategoryA);
        }

        @Override // io.didomi.sdk.G5.a
        public void a(W3.a type, String id, DidomiToggle.b state) {
            PurposeCategory purposeCategoryA;
            RecyclerView recyclerView;
            RecyclerView recyclerView2;
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(state, "state");
            InternalPurpose internalPurposeB = L5.this.c().b(id);
            if (internalPurposeB != null) {
                L5 l5 = L5.this;
                if (type == W3.a.PersonalData) {
                    l5.c().a(internalPurposeB, state);
                    V0 v0 = l5.c;
                    RecyclerView.Adapter adapter = (v0 == null || (recyclerView2 = v0.f8405d) == null) ? null : recyclerView2.getAdapter();
                    G5 g5 = adapter instanceof G5 ? (G5) adapter : null;
                    if (g5 != null) {
                        g5.b(id, state, true);
                    }
                }
            }
            if (type != W3.a.Category || (purposeCategoryA = L5.this.c().a(id)) == null) {
                return;
            }
            L5 l52 = L5.this;
            l52.c().a(purposeCategoryA, state);
            DidomiToggle.b bVarD = l52.c().d(purposeCategoryA);
            V0 v02 = l52.c;
            RecyclerView.Adapter adapter2 = (v02 == null || (recyclerView = v02.f8405d) == null) ? null : recyclerView.getAdapter();
            G5 g52 = adapter2 instanceof G5 ? (G5) adapter2 : null;
            if (g52 != null) {
                g52.a(id, bVarD, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(L5 this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(PurposeCategory purposeCategory) {
        RecyclerView recyclerView;
        V0 v0 = this.c;
        RecyclerView.Adapter adapter = (v0 == null || (recyclerView = v0.f8405d) == null) ? null : recyclerView.getAdapter();
        G5 g5 = adapter instanceof G5 ? (G5) adapter : null;
        if (g5 != null) {
            G5.a(g5, purposeCategory.getId(), c().d(purposeCategory), false, 4, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    private final void b() {
        c().x();
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(L5 this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.c().v();
        this$0.dismiss();
    }

    @Override // io.didomi.drawable.I0
    public C1965z8 a() {
        C1965z8 c1965z8 = this.b;
        if (c1965z8 != null) {
            return c1965z8;
        }
        Intrinsics.throwUninitializedPropertyAccessException("themeProvider");
        return null;
    }

    public final Q5 c() {
        Q5 q5 = this.a;
        if (q5 != null) {
            return q5;
        }
        Intrinsics.throwUninitializedPropertyAccessException("model");
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

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        b();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        V0 v0A = V0.a(inflater, viewGroup, false);
        this.c = v0A;
        ConstraintLayout constraintLayoutA = v0A.getRoot();
        Intrinsics.checkNotNullExpressionValue(constraintLayoutA, "inflate(inflater, contai…g = it\n            }.root");
        return constraintLayoutA;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        RecyclerView recyclerView;
        Q5 q5C = c();
        q5C.n().removeObservers(getViewLifecycleOwner());
        C3 c3I = q5C.i();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "viewLifecycleOwner");
        c3I.a(viewLifecycleOwner);
        this.f8283d = null;
        V0 v0 = this.c;
        if (v0 != null && (recyclerView = v0.f8405d) != null) {
            recyclerView.setAdapter(null);
            recyclerView.setLayoutManager(null);
        }
        this.c = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        this.f8284e.a();
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.f8284e.a(this, c().s());
    }

    @Override // io.didomi.drawable.I0, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        int i;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        Q5 q5C = c();
        q5C.C();
        q5C.w();
        q5C.A();
        q5C.y();
        V0 v0 = this.c;
        if (v0 != null) {
            AppCompatImageButton onViewCreated$lambda$11$lambda$3 = v0.b;
            Intrinsics.checkNotNullExpressionValue(onViewCreated$lambda$11$lambda$3, "onViewCreated$lambda$11$lambda$3");
            j9.a(onViewCreated$lambda$11$lambda$3, c().d(), c().e(), null, false, null, 0, null, null, 252, null);
            C1820l3.a(onViewCreated$lambda$11$lambda$3, a().j());
            onViewCreated$lambda$11$lambda$3.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.db
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    L5.a(this.a, view2);
                }
            });
            HeaderView onViewCreated$lambda$11$lambda$4 = v0.c;
            Intrinsics.checkNotNullExpressionValue(onViewCreated$lambda$11$lambda$4, "onViewCreated$lambda$11$lambda$4");
            HeaderView.a(onViewCreated$lambda$11$lambda$4, c().q(), null, 0, 6, null);
            onViewCreated$lambda$11$lambda$4.a();
            View view2 = v0.f8407f;
            Intrinsics.checkNotNullExpressionValue(view2, "binding.viewSpiBottomDivider");
            k9.a(view2, a());
            RecyclerView onViewCreated$lambda$11$lambda$5 = v0.f8405d;
            List<W3> listB = c().b();
            onViewCreated$lambda$11$lambda$5.setAdapter(new G5(listB, a(), this.f8285f));
            onViewCreated$lambda$11$lambda$5.setLayoutManager(new LinearLayoutManager(onViewCreated$lambda$11$lambda$5.getContext(), 1, false));
            Context context = onViewCreated$lambda$11$lambda$5.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            onViewCreated$lambda$11$lambda$5.addItemDecoration(new J4(context, a(), false, false, 12, null));
            int dimensionPixelSize = onViewCreated$lambda$11$lambda$5.getResources().getDimensionPixelSize(R.dimen.didomi_content_max_width);
            int i2 = onViewCreated$lambda$11$lambda$5.getResources().getDisplayMetrics().widthPixels;
            if (i2 > dimensionPixelSize) {
                int i3 = (i2 - dimensionPixelSize) / 2;
                onViewCreated$lambda$11$lambda$5.setPadding(i3, 0, i3, onViewCreated$lambda$11$lambda$5.getResources().getDimensionPixelSize(R.dimen.didomi_purpose_list_padding_bottom));
            }
            Intrinsics.checkNotNullExpressionValue(onViewCreated$lambda$11$lambda$5, "onViewCreated$lambda$11$lambda$5");
            C1792i5.a(onViewCreated$lambda$11$lambda$5, C1950y3.a(listB, PersonalDataDisplayItem.class));
            HeaderView headerView = v0.c;
            Intrinsics.checkNotNullExpressionValue(headerView, "binding.headerSpi");
            C1792i5.a(onViewCreated$lambda$11$lambda$5, headerView);
            PurposeSaveView purposeSaveView = v0.f8406e;
            Button saveButton$android_release = purposeSaveView.getSaveButton$android_release();
            if (saveButton$android_release != null) {
                C1955y8.a(saveButton$android_release, purposeSaveView.getThemeProvider().i().j());
                saveButton$android_release.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.fb
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        L5.b(this.a, view3);
                    }
                });
                saveButton$android_release.setText(c().k());
            }
            ImageView logoImage$android_release = purposeSaveView.getLogoImage$android_release();
            if (logoImage$android_release != null) {
                logoImage$android_release.setVisibility(c().a(true) ? 4 : 0);
            }
            PurposeSaveView purposeSaveView2 = v0.f8406e;
            purposeSaveView2.setVisibility(0);
            purposeSaveView2.b();
            MutableLiveData<DidomiToggle.b> mutableLiveDataN = c().n();
            LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
            final b bVar = new b();
            mutableLiveDataN.observe(viewLifecycleOwner, new Observer() { // from class: io.didomi.sdk.eb
                @Override // androidx.lifecycle.Observer
                public final void onChanged(Object obj) {
                    L5.a(bVar, obj);
                }
            });
        }
        C1929w2 c1929w2 = this.f8283d;
        if (c1929w2 != null) {
            ImageView onViewCreated$lambda$13$lambda$12 = c1929w2.f8793e;
            if (c().a(true)) {
                i = 4;
            } else {
                Intrinsics.checkNotNullExpressionValue(onViewCreated$lambda$13$lambda$12, "onViewCreated$lambda$13$lambda$12");
                C1820l3.a(onViewCreated$lambda$13$lambda$12, a().g());
                i = 0;
            }
            onViewCreated$lambda$13$lambda$12.setVisibility(i);
        }
    }
}
