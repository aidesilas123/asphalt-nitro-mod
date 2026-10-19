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
import io.didomi.drawable.models.InternalPurpose;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;

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
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 !2\u00020\u0001:\u0001\u0017B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ+\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0015\u0010\u0003R\"\u0010\u001c\u001a\u00020\u00168\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0017\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u0018\u0010 \u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006\""}, d2 = {"Lio/didomi/sdk/T6;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Landroid/content/Context;", "context", "", "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "parent", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "view", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "Lio/didomi/sdk/Z6;", "a", "Lio/didomi/sdk/Z6;", "()Lio/didomi/sdk/Z6;", "setModel", "(Lio/didomi/sdk/Z6;)V", "model", "Lio/didomi/sdk/d1;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/d1;", "binding", "c", "android_release"}, mv = {1, 8, 0})
public final class T6 extends Fragment {
    public static final a c = new a(null);
    public Z6 a;
    private C1738d1 b;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000e\u0010\rR\u0014\u0010\u000f\u001a\u00020\u000b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\r¨\u0006\u0010"}, d2 = {"Lio/didomi/sdk/T6$a;", "", "<init>", "()V", "Lio/didomi/sdk/models/InternalPurpose;", "purpose", "Lio/didomi/sdk/d9;", "listType", "Lio/didomi/sdk/T6;", "a", "(Lio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/d9;)Lio/didomi/sdk/T6;", "", "KEY_INFO_TYPE", "Ljava/lang/String;", "KEY_PURPOSE", "TAG", "android_release"}, mv = {1, 8, 0})
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        public final T6 a(InternalPurpose purpose, d9 listType) {
            Intrinsics.checkNotNullParameter(purpose, "purpose");
            Intrinsics.checkNotNullParameter(listType, "listType");
            T6 t6 = new T6();
            Bundle bundle = new Bundle();
            bundle.putParcelable("purpose", purpose);
            bundle.putInt("info_type", listType.ordinal());
            t6.setArguments(bundle);
            return t6;
        }
    }

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
    public static final boolean a(RecyclerView this_apply, View view, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        int dimensionPixelSize = this_apply.getResources().getDimensionPixelSize(R.dimen.didomi_tv_preferences_delta_scroll);
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

    public final Z6 a() {
        Z6 z6 = this.a;
        if (z6 != null) {
            return z6;
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
        C1738d1 c1738d1A = C1738d1.a(inflater, viewGroup, false);
        this.b = c1738d1A;
        FrameLayout root = c1738d1A.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "inflate(inflater, parent…g = it\n            }.root");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        RecyclerView recyclerView;
        super.onDestroyView();
        C1738d1 c1738d1 = this.b;
        if (c1738d1 != null && (recyclerView = c1738d1.b) != null) {
            recyclerView.setAdapter(null);
            recyclerView.setLayoutManager(null);
            recyclerView.setOnKeyListener(null);
        }
        this.b = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    @Override // androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onViewCreated(android.view.View r9, android.os.Bundle r10) {
        /*
            r8 = this;
            java.lang.String r0 = "view"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            super.onViewCreated(r9, r10)
            int r9 = android.os.Build.VERSION.SDK_INT
            java.lang.String r10 = "purpose"
            r0 = 0
            r1 = 33
            if (r9 < r1) goto L20
            android.os.Bundle r9 = r8.getArguments()
            if (r9 == 0) goto L2d
            java.lang.Class<io.didomi.sdk.models.InternalPurpose> r1 = io.didomi.drawable.models.InternalPurpose.class
            java.lang.Object r9 = r9.getParcelable(r10, r1)
            io.didomi.sdk.models.InternalPurpose r9 = (io.didomi.drawable.models.InternalPurpose) r9
            goto L2e
        L20:
            android.os.Bundle r9 = r8.getArguments()
            if (r9 == 0) goto L2d
            android.os.Parcelable r9 = r9.getParcelable(r10)
            io.didomi.sdk.models.InternalPurpose r9 = (io.didomi.drawable.models.InternalPurpose) r9
            goto L2e
        L2d:
            r9 = r0
        L2e:
            android.os.Bundle r10 = r8.getArguments()
            if (r10 == 0) goto L48
            java.lang.String r1 = "info_type"
            int r10 = r10.getInt(r1)
            io.didomi.sdk.d9[] r1 = io.didomi.drawable.d9.values()
            int r1 = r1.length
            if (r10 >= r1) goto L48
            io.didomi.sdk.d9[] r1 = io.didomi.drawable.d9.values()
            r10 = r1[r10]
            goto L49
        L48:
            r10 = r0
        L49:
            if (r9 == 0) goto La4
            if (r10 == 0) goto La4
            io.didomi.sdk.Z6 r1 = r8.a()
            r1.a(r9, r10)
            io.didomi.sdk.d1 r9 = r8.b
            if (r9 == 0) goto La3
            androidx.recyclerview.widget.RecyclerView r9 = r9.b
            if (r9 == 0) goto La3
            io.didomi.sdk.Q6 r10 = new io.didomi.sdk.Q6
            io.didomi.sdk.Z6 r1 = r8.a()
            android.content.Context r2 = r9.getContext()
            java.lang.String r3 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            java.util.List r1 = r1.b(r2)
            r10.<init>(r1)
            r9.setAdapter(r10)
            r9.setItemAnimator(r0)
            androidx.recyclerview.widget.LinearLayoutManager r10 = new androidx.recyclerview.widget.LinearLayoutManager
            android.content.Context r0 = r9.getContext()
            r1 = 0
            r7 = 1
            r10.<init>(r0, r7, r1)
            r9.setLayoutManager(r10)
            io.didomi.sdk.R2 r10 = new io.didomi.sdk.R2
            io.didomi.sdk.T6$b r4 = new io.didomi.sdk.T6$b
            r4.<init>(r9)
            r3 = 0
            r5 = 2
            r6 = 0
            r1 = r10
            r2 = r9
            r1.<init>(r2, r3, r4, r5, r6)
            r9.addItemDecoration(r10)
            r9.setHasFixedSize(r7)
            io.didomi.sdk.yc r10 = new io.didomi.sdk.yc
            r10.<init>()
            r9.setOnKeyListener(r10)
        La3:
            return
        La4:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.String r10 = "Missing purpose or info_type parameter"
            r9.<init>(r10)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.didomi.drawable.T6.onViewCreated(android.view.View, android.os.Bundle):void");
    }
}
