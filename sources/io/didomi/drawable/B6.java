package io.didomi.drawable;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.RecyclerView;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.B6;
import io.didomi.drawable.J6;
import io.didomi.drawable.L6;
import io.didomi.drawable.models.InternalPurpose;
import io.didomi.drawable.purpose.common.model.PurposeCategory;
import io.didomi.drawable.view.ctv.CenterLayoutManager;
import io.didomi.drawable.view.mobile.DidomiToggle;
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
@Metadata(d1 = {"\u0000g\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001.\u0018\u0000 42\u00020\u00012\u00020\u0002:\u0001\nB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\n\u0010\tJ\u0017\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000b\u0010\tJ\u000f\u0010\f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u0017\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J+\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J!\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00172\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001d\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u0004R\"\u0010#\u001a\u00020\u001e8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\n\u0010\u001f\u001a\u0004\b\b\u0010 \"\u0004\b!\u0010\"R\"\u0010*\u001a\u00020$8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000b\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u0018\u0010-\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010,R\u0014\u00100\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010/R\u0014\u00103\u001a\u0002018BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u00102¨\u00065"}, d2 = {"Lio/didomi/sdk/B6;", "Landroidx/fragment/app/Fragment;", "Lio/didomi/sdk/C8;", "<init>", "()V", "Lio/didomi/sdk/models/InternalPurpose;", "purpose", "", "c", "(Lio/didomi/sdk/models/InternalPurpose;)V", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/content/Context;", "context", "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "parent", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "view", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "Lio/didomi/sdk/l7;", "Lio/didomi/sdk/l7;", "()Lio/didomi/sdk/l7;", "setModel", "(Lio/didomi/sdk/l7;)V", "model", "Lio/didomi/sdk/D8;", "Lio/didomi/sdk/D8;", "getUiProvider", "()Lio/didomi/sdk/D8;", "setUiProvider", "(Lio/didomi/sdk/D8;)V", "uiProvider", "Lio/didomi/sdk/b1;", "Lio/didomi/sdk/b1;", "binding", "io/didomi/sdk/B6$e", "Lio/didomi/sdk/B6$e;", "purposeListAdapterCallback", "Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "()Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "category", "e", "android_release"}, mv = {1, 8, 0})
public final class B6 extends Fragment implements C8 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f8183e = new a(null);
    public C1824l7 a;
    public D8 b;
    private C1718b1 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e f8184d = new e();

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\u000b¨\u0006\r"}, d2 = {"Lio/didomi/sdk/B6$a;", "", "<init>", "()V", "Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "category", "Lio/didomi/sdk/B6;", "a", "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/B6;", "", "CATEGORY", "Ljava/lang/String;", "TAG", "android_release"}, mv = {1, 8, 0})
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        public final B6 a(PurposeCategory category) {
            Intrinsics.checkNotNullParameter(category, "category");
            B6 b6 = new B6();
            Bundle bundle = new Bundle();
            bundle.putParcelable("category", category);
            b6.setArguments(bundle);
            return b6;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "it", "", "a", "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V"}, mv = {1, 8, 0})
    static final class b extends Lambda implements Function1<DidomiToggle.b, v> {
        b() {
            super(1);
        }

        public final void a(DidomiToggle.b bVar) {
            InternalPurpose value = B6.this.c().u0().getValue();
            if (value == null) {
                return;
            }
            B6.this.a(value);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(DidomiToggle.b bVar) {
            a(bVar);
            return v.a;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "it", "", "a", "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V"}, mv = {1, 8, 0})
    static final class c extends Lambda implements Function1<DidomiToggle.b, v> {
        c() {
            super(1);
        }

        public final void a(DidomiToggle.b bVar) {
            InternalPurpose value = B6.this.c().u0().getValue();
            if (value != null && B6.this.c().w(value)) {
                B6.this.b(value);
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(DidomiToggle.b bVar) {
            a(bVar);
            return v.a;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(I)Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class d extends Lambda implements Function1<Integer, Boolean> {
        final /* synthetic */ RecyclerView a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(RecyclerView recyclerView) {
            super(1);
            this.a = recyclerView;
        }

        public final Boolean a(int i) {
            RecyclerView.Adapter adapter = this.a.getAdapter();
            Intrinsics.checkNotNull(adapter, "null cannot be cast to non-null type io.didomi.sdk.purpose.ctv.adapter.TVPurposeListAdapter");
            return Boolean.valueOf(((L6) adapter).getItemViewType(i) == 2);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(Integer num) {
            return a(num.intValue());
        }
    }

    @Metadata(d1 = {"\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0005\u0010\tJ\u001f\u0010\u0005\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\nJ\u001f\u0010\u0005\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0005\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0011J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0005\u0010\u0013¨\u0006\u0014"}, d2 = {"io/didomi/sdk/B6$e", "Lio/didomi/sdk/L6$a;", "", "isChecked", "", "a", "(Z)V", "Lio/didomi/sdk/J6;", "purposeListItem", "(Lio/didomi/sdk/J6;)V", "(Lio/didomi/sdk/J6;Z)V", "", "index", "Lio/didomi/sdk/o0;", "dataProcessing", "(ILio/didomi/sdk/o0;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()V", o2.h.L, "(I)V", "android_release"}, mv = {1, 8, 0})
    public static final class e implements L6.a {
        e() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(B6 this$0, int i) {
            RecyclerView recyclerView;
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            C1718b1 c1718b1 = this$0.c;
            if (c1718b1 == null || (recyclerView = c1718b1.c) == null) {
                return;
            }
            if (i <= 4) {
                i = 0;
            }
            recyclerView.smoothScrollToPosition(i);
        }

        @Override // io.didomi.sdk.L6.a
        public void a() {
        }

        @Override // io.didomi.sdk.L6.a
        public void a(final int i) {
            B6.this.c().d(i);
            FragmentActivity fragmentActivityRequireActivity = B6.this.requireActivity();
            final B6 b6 = B6.this;
            fragmentActivityRequireActivity.runOnUiThread(new Runnable() { // from class: io.didomi.sdk.r9
                @Override // java.lang.Runnable
                public final void run() {
                    B6.e.a(b6, i);
                }
            });
        }

        @Override // io.didomi.sdk.L6.a
        public void a(int i, InterfaceC1847o0 dataProcessing) {
            Intrinsics.checkNotNullParameter(dataProcessing, "dataProcessing");
        }

        @Override // io.didomi.sdk.L6.a
        public void a(J6 purposeListItem) {
            Intrinsics.checkNotNullParameter(purposeListItem, "purposeListItem");
            if (purposeListItem instanceof J6.Purpose) {
                B6.this.c(((J6.Purpose) purposeListItem).getPurpose());
                return;
            }
            Log.e$default("No click callback for purposeListItem: " + purposeListItem, null, 2, null);
        }

        @Override // io.didomi.sdk.L6.a
        public void a(J6 purposeListItem, boolean z) {
            RecyclerView recyclerView;
            Intrinsics.checkNotNullParameter(purposeListItem, "purposeListItem");
            if (!(purposeListItem instanceof J6.Purpose)) {
                Log.e$default("No toggle callback for purposeListItem: " + purposeListItem, null, 2, null);
                return;
            }
            J6.Purpose purpose = (J6.Purpose) purposeListItem;
            B6.this.c().a(purpose.getPurpose(), z);
            C1718b1 c1718b1 = B6.this.c;
            RecyclerView.Adapter adapter = (c1718b1 == null || (recyclerView = c1718b1.c) == null) ? null : recyclerView.getAdapter();
            L6 l6 = adapter instanceof L6 ? (L6) adapter : null;
            if (l6 != null) {
                l6.a(B6.this.c().z(purpose.getPurpose()));
            }
            B6.this.d();
        }

        @Override // io.didomi.sdk.L6.a
        public void a(boolean z) {
            RecyclerView recyclerView;
            B6.this.c().a(B6.this.b(), z ? DidomiToggle.b.ENABLED : DidomiToggle.b.DISABLED);
            C1718b1 c1718b1 = B6.this.c;
            RecyclerView.Adapter adapter = (c1718b1 == null || (recyclerView = c1718b1.c) == null) ? null : recyclerView.getAdapter();
            L6 l6 = adapter instanceof L6 ? (L6) adapter : null;
            if (l6 != null) {
                B6 b6 = B6.this;
                l6.a(z);
                l6.b(b6.c().O1());
            }
        }

        @Override // io.didomi.sdk.L6.a
        public void b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C1718b1 this_apply, B6 this$0) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RecyclerView.Adapter adapter = this_apply.c.getAdapter();
        L6 l6 = adapter instanceof L6 ? (L6) adapter : null;
        if (l6 != null) {
            l6.a(this$0.c().getFocusedPositionForCategory());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(InternalPurpose internalPurpose) {
        RecyclerView recyclerView;
        C1718b1 c1718b1 = this.c;
        RecyclerView.Adapter adapter = (c1718b1 == null || (recyclerView = c1718b1.c) == null) ? null : recyclerView.getAdapter();
        L6 l6 = adapter instanceof L6 ? (L6) adapter : null;
        if (l6 != null) {
            l6.a(c().z(internalPurpose));
        }
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PurposeCategory b() {
        if (Build.VERSION.SDK_INT < 33) {
            Parcelable parcelable = requireArguments().getParcelable("category");
            Intrinsics.checkNotNull(parcelable);
            return (PurposeCategory) parcelable;
        }
        Object parcelable2 = requireArguments().getParcelable("category", PurposeCategory.class);
        Intrinsics.checkNotNull(parcelable2);
        Intrinsics.checkNotNullExpressionValue(parcelable2, "{\n            requireArg…::class.java)!!\n        }");
        return (PurposeCategory) parcelable2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(InternalPurpose internalPurpose) {
        RecyclerView recyclerView;
        C1718b1 c1718b1 = this.c;
        RecyclerView.Adapter adapter = (c1718b1 == null || (recyclerView = c1718b1.c) == null) ? null : recyclerView.getAdapter();
        L6 l6 = adapter instanceof L6 ? (L6) adapter : null;
        if (l6 != null) {
            l6.a(c().z(internalPurpose));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(InternalPurpose internalPurpose) {
        getParentFragmentManager().beginTransaction().setCustomAnimations(R.anim.didomi_enter_from_right, R.anim.didomi_fade_out, R.anim.didomi_fade_in, R.anim.didomi_exit_to_right).replace(R.id.container_ctv_preferences_secondary, E6.INSTANCE.a(internalPurpose)).addToBackStack("TVPurposeDetailFragment").commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d() {
        RecyclerView recyclerView;
        C1718b1 c1718b1 = this.c;
        RecyclerView.Adapter adapter = (c1718b1 == null || (recyclerView = c1718b1.c) == null) ? null : recyclerView.getAdapter();
        L6 l6 = adapter instanceof L6 ? (L6) adapter : null;
        if (l6 != null) {
            l6.a(c().G1());
        }
    }

    @Override // io.didomi.drawable.C8
    public void a() {
        final C1718b1 c1718b1 = this.c;
        if (c1718b1 != null) {
            c1718b1.getRoot().postDelayed(new Runnable() { // from class: io.didomi.sdk.t9
                @Override // java.lang.Runnable
                public final void run() {
                    B6.a(c1718b1, this);
                }
            }, 100L);
        }
    }

    public final C1824l7 c() {
        C1824l7 c1824l7 = this.a;
        if (c1824l7 != null) {
            return c1824l7;
        }
        Intrinsics.throwUninitializedPropertyAccessException("model");
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Didomi.Companion.getInstance().getComponent$android_release().a(this);
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        C1718b1 c1718b1A = C1718b1.a(inflater, viewGroup, false);
        this.c = c1718b1A;
        ConstraintLayout root = c1718b1A.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "inflate(inflater, parent…g = it\n            }.root");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        RecyclerView recyclerView;
        super.onDestroyView();
        C1718b1 c1718b1 = this.c;
        if (c1718b1 != null && (recyclerView = c1718b1.c) != null) {
            recyclerView.setAdapter(null);
            recyclerView.setLayoutManager(null);
        }
        this.c = null;
        C1824l7 c1824l7C = c();
        c1824l7C.j(b());
        c1824l7C.w0().removeObservers(getViewLifecycleOwner());
        c1824l7C.y0().removeObservers(getViewLifecycleOwner());
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        RecyclerView recyclerView;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        C1824l7 c1824l7C = c();
        c1824l7C.k1();
        c1824l7C.l(b());
        c1824l7C.j(b());
        MutableLiveData<DidomiToggle.b> mutableLiveDataW0 = c1824l7C.w0();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        final b bVar = new b();
        mutableLiveDataW0.observe(viewLifecycleOwner, new Observer() { // from class: io.didomi.sdk.s9
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                B6.a(bVar, obj);
            }
        });
        MutableLiveData<DidomiToggle.b> mutableLiveDataY0 = c1824l7C.y0();
        LifecycleOwner viewLifecycleOwner2 = getViewLifecycleOwner();
        final c cVar = new c();
        mutableLiveDataY0.observe(viewLifecycleOwner2, new Observer() { // from class: io.didomi.sdk.q9
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                B6.b(cVar, obj);
            }
        });
        C1718b1 c1718b1 = this.c;
        if (c1718b1 == null || (recyclerView = c1718b1.c) == null) {
            return;
        }
        recyclerView.setAdapter(new L6(this.f8184d, c().S1()));
        recyclerView.setItemAnimator(null);
        Context context = recyclerView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        recyclerView.setLayoutManager(new CenterLayoutManager(context, 1, false));
        recyclerView.addItemDecoration(new R2(recyclerView, false, new d(recyclerView), 2, null));
        recyclerView.setHasFixedSize(true);
    }
}
