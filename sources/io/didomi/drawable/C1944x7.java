package io.didomi.drawable;

import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.vendors.ctv.model.TVDataProcessingLegalType;
import io.didomi.drawable.view.ctv.CenterLayoutManager;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;

/* JADX INFO: renamed from: io.didomi.sdk.x7, reason: case insensitive filesystem */
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
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 $2\u00020\u0001:\u0001\u0017B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ+\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0015\u0010\u0003R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\"\u0010 \u001a\u00020\u001a8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u0017\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0014\u0010#\u001a\u00020!8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\"¨\u0006%"}, d2 = {"Lio/didomi/sdk/x7;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Landroid/content/Context;", "context", "", "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "parent", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "view", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "Lio/didomi/sdk/h1;", "a", "Lio/didomi/sdk/h1;", "binding", "Lio/didomi/sdk/t8;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/t8;", "()Lio/didomi/sdk/t8;", "setModel", "(Lio/didomi/sdk/t8;)V", "model", "Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;", "()Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;", "vendorLegalType", "c", "android_release"}, mv = {1, 8, 0})
public final class C1944x7 extends Fragment {
    public static final a c = new a(null);
    private C1778h1 a;
    public C1905t8 b;

    /* JADX INFO: renamed from: io.didomi.sdk.x7$a */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\u000b¨\u0006\r"}, d2 = {"Lio/didomi/sdk/x7$a;", "", "<init>", "()V", "Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;", "vendorLegalType", "Lio/didomi/sdk/x7;", "a", "(Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;)Lio/didomi/sdk/x7;", "", "DATA_PROCESSING_TYPE", "Ljava/lang/String;", "TAG", "android_release"}, mv = {1, 8, 0})
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        public final C1944x7 a(TVDataProcessingLegalType vendorLegalType) {
            Intrinsics.checkNotNullParameter(vendorLegalType, "vendorLegalType");
            C1944x7 c1944x7 = new C1944x7();
            Bundle bundle = new Bundle();
            bundle.putString("DATA_PROCESSING_TYPE", vendorLegalType.toString());
            c1944x7.setArguments(bundle);
            return c1944x7;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.x7$b */
    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(I)Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class b extends Lambda implements Function1<Integer, Boolean> {
        final /* synthetic */ RecyclerView a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(RecyclerView recyclerView) {
            super(1);
            this.a = recyclerView;
        }

        public final Boolean a(int i) {
            RecyclerView.Adapter adapter = this.a.getAdapter();
            return Boolean.valueOf(adapter != null && adapter.getItemViewType(i) == 1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(Integer num) {
            return a(num.intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean a(View view, RecyclerView this_apply, View view2, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(view, "$view");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        int dimensionPixelSize = view.getResources().getDimensionPixelSize(R.dimen.didomi_tv_preferences_delta_scroll);
        if (keyEvent.getAction() != 1) {
            return false;
        }
        if (i == 19) {
            this_apply.smoothScrollBy(0, -dimensionPixelSize);
        } else {
            if (i != 20) {
                return false;
            }
            this_apply.smoothScrollBy(0, dimensionPixelSize);
        }
        return true;
    }

    private final TVDataProcessingLegalType b() {
        String string;
        TVDataProcessingLegalType tVDataProcessingLegalTypeValueOf;
        Bundle arguments = getArguments();
        return (arguments == null || (string = arguments.getString("DATA_PROCESSING_TYPE")) == null || (tVDataProcessingLegalTypeValueOf = TVDataProcessingLegalType.valueOf(string)) == null) ? TVDataProcessingLegalType.CONSENT : tVDataProcessingLegalTypeValueOf;
    }

    public final C1905t8 a() {
        C1905t8 c1905t8 = this.b;
        if (c1905t8 != null) {
            return c1905t8;
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
        C1778h1 c1778h1A = C1778h1.a(getLayoutInflater(), viewGroup, false);
        this.a = c1778h1A;
        FrameLayout root = c1778h1A.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "inflate(layoutInflater, …g = it\n            }.root");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        RecyclerView recyclerView;
        super.onDestroyView();
        C1778h1 c1778h1 = this.a;
        if (c1778h1 != null && (recyclerView = c1778h1.b) != null) {
            recyclerView.setAdapter(null);
            recyclerView.setLayoutManager(null);
            recyclerView.setOnKeyListener(null);
        }
        this.a = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(final View view, Bundle bundle) {
        final RecyclerView recyclerView;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        C1778h1 c1778h1 = this.a;
        if (c1778h1 == null || (recyclerView = c1778h1.b) == null) {
            return;
        }
        recyclerView.setAdapter(new C1914u7(a().a(b())));
        recyclerView.setItemAnimator(null);
        Context context = recyclerView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        recyclerView.setLayoutManager(new CenterLayoutManager(context, 1, false));
        recyclerView.addItemDecoration(new R2(recyclerView, false, new b(recyclerView), 2, null));
        recyclerView.setHasFixedSize(true);
        recyclerView.setOnKeyListener(new View.OnKeyListener() { // from class: io.didomi.sdk.xf
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view2, int i, KeyEvent keyEvent) {
                return C1944x7.a(view, recyclerView, view2, i, keyEvent);
            }
        });
    }
}
