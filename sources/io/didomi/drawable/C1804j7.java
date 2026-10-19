package io.didomi.drawable;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
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
import androidx.core.view.KeyEventDispatcher;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.RecyclerView;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.C1804j7;
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

/* JADX INFO: renamed from: io.didomi.sdk.j7, reason: case insensitive filesystem */
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
@Metadata(d1 = {"\u0000\u008f\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0006*\u0001E\u0018\u0000 I2\u00020\u00012\u00020\u0002:\u0001\u0010B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0012\u0010\u0004J\u0017\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0010\u0010\tJ\u0017\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0010\u0010\rJ\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\b\u0010\rJ\u000f\u0010\u0013\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0013\u0010\u0004J\u0017\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0019\u0010\u001b\u001a\u00020\u001a2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ+\u0010\"\u001a\u00020!2\u0006\u0010\u001e\u001a\u00020\u001d2\b\u0010 \u001a\u0004\u0018\u00010\u001f2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\"\u0010#J!\u0010%\u001a\u00020\u00072\u0006\u0010$\u001a\u00020!2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0007H\u0016¢\u0006\u0004\b'\u0010\u0004J\u000f\u0010(\u001a\u00020\u0007H\u0016¢\u0006\u0004\b(\u0010\u0004J\u0017\u0010+\u001a\u00020\u00072\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\u0007H\u0016¢\u0006\u0004\b-\u0010\u0004J\u000f\u0010.\u001a\u00020\u0007H\u0016¢\u0006\u0004\b.\u0010\u0004J\u000f\u0010/\u001a\u00020\u0007H\u0016¢\u0006\u0004\b/\u0010\u0004J\u000f\u0010\u0010\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0010\u0010\u0004R\"\u00105\u001a\u0002008\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0010\u00101\u001a\u0004\b\b\u00102\"\u0004\b3\u00104R\"\u0010;\u001a\u0002068\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u00107\u001a\u0004\b\f\u00108\"\u0004\b9\u0010:R\u0018\u0010>\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010=R\u0018\u0010A\u001a\u0004\u0018\u00010?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010@R\u0014\u0010D\u001a\u00020B8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010CR\u0014\u0010H\u001a\u00020E8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bF\u0010G¨\u0006J"}, d2 = {"Lio/didomi/sdk/j7;", "Landroidx/appcompat/app/AppCompatDialogFragment;", "Lio/didomi/sdk/C8;", "<init>", "()V", "Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "category", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V", "Lio/didomi/sdk/models/InternalPurpose;", "purpose", "c", "(Lio/didomi/sdk/models/InternalPurpose;)V", "Lio/didomi/sdk/o0;", "dataProcessing", "a", "(Lio/didomi/sdk/o0;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "e", "Landroid/content/Context;", "context", "onAttach", "(Landroid/content/Context;)V", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "parent", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "view", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", o2.h.u0, o2.h.t0, "Landroid/content/DialogInterface;", "dialog", "onCancel", "(Landroid/content/DialogInterface;)V", "dismiss", "onDetach", "onDestroyView", "Lio/didomi/sdk/l7;", "Lio/didomi/sdk/l7;", "()Lio/didomi/sdk/l7;", "setModel", "(Lio/didomi/sdk/l7;)V", "model", "Lio/didomi/sdk/D8;", "Lio/didomi/sdk/D8;", "()Lio/didomi/sdk/D8;", "setUiProvider", "(Lio/didomi/sdk/D8;)V", "uiProvider", "Lio/didomi/sdk/e1;", "Lio/didomi/sdk/e1;", "binding", "Lio/didomi/sdk/O3;", "Lio/didomi/sdk/O3;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lio/didomi/sdk/d4;", "Lio/didomi/sdk/d4;", "dismissHelper", "io/didomi/sdk/j7$f", InneractiveMediationDefs.GENDER_FEMALE, "Lio/didomi/sdk/j7$f;", "purposeListAdapterCallback", "g", "android_release"}, mv = {1, 8, 0})
public final class C1804j7 extends AppCompatDialogFragment implements C8 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f8602g = new a(null);
    public C1824l7 a;
    public D8 b;
    private C1748e1 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private O3 f8603d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final C1741d4 f8604e = new C1741d4();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final f f8605f = new f();

    /* JADX INFO: renamed from: io.didomi.sdk.j7$a */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lio/didomi/sdk/j7$a;", "", "<init>", "()V", "", "TAG", "Ljava/lang/String;", "android_release"}, mv = {1, 8, 0})
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.j7$b */
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
            Intrinsics.checkNotNull(adapter, "null cannot be cast to non-null type io.didomi.sdk.purpose.ctv.adapter.TVPurposeListAdapter");
            return Boolean.valueOf(((L6) adapter).getItemViewType(i) == 2);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(Integer num) {
            return a(num.intValue());
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.j7$c */
    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "it", "", "a", "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V"}, mv = {1, 8, 0})
    static final class c extends Lambda implements Function1<DidomiToggle.b, v> {
        c() {
            super(1);
        }

        public final void a(DidomiToggle.b bVar) {
            PurposeCategory value = C1804j7.this.b().s0().getValue();
            if (value == null) {
                return;
            }
            C1804j7.this.a(value);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(DidomiToggle.b bVar) {
            a(bVar);
            return v.a;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.j7$d */
    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "it", "", "a", "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V"}, mv = {1, 8, 0})
    static final class d extends Lambda implements Function1<DidomiToggle.b, v> {
        d() {
            super(1);
        }

        public final void a(DidomiToggle.b bVar) {
            InternalPurpose value = C1804j7.this.b().u0().getValue();
            if (value == null) {
                return;
            }
            C1804j7.this.a(value);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(DidomiToggle.b bVar) {
            a(bVar);
            return v.a;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.j7$e */
    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "it", "", "a", "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V"}, mv = {1, 8, 0})
    static final class e extends Lambda implements Function1<DidomiToggle.b, v> {
        e() {
            super(1);
        }

        public final void a(DidomiToggle.b bVar) {
            InternalPurpose value = C1804j7.this.b().u0().getValue();
            if (value != null && C1804j7.this.b().w(value)) {
                C1804j7.this.b(value);
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(DidomiToggle.b bVar) {
            a(bVar);
            return v.a;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.j7$f */
    @Metadata(d1 = {"\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0005\u0010\tJ\u001f\u0010\u0005\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\nJ\u001f\u0010\u0005\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0005\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0011J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0005\u0010\u0013¨\u0006\u0014"}, d2 = {"io/didomi/sdk/j7$f", "Lio/didomi/sdk/L6$a;", "", "isChecked", "", "a", "(Z)V", "Lio/didomi/sdk/J6;", "purposeListItem", "(Lio/didomi/sdk/J6;)V", "(Lio/didomi/sdk/J6;Z)V", "", "index", "Lio/didomi/sdk/o0;", "dataProcessing", "(ILio/didomi/sdk/o0;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()V", o2.h.L, "(I)V", "android_release"}, mv = {1, 8, 0})
    public static final class f implements L6.a {
        f() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(C1804j7 this$0, int i) {
            RecyclerView recyclerView;
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            C1748e1 c1748e1 = this$0.c;
            if (c1748e1 == null || (recyclerView = c1748e1.b) == null) {
                return;
            }
            if (i <= 4) {
                i = 0;
            }
            recyclerView.smoothScrollToPosition(i);
        }

        @Override // io.didomi.sdk.L6.a
        public void a() {
            O3 o3 = C1804j7.this.f8603d;
            if (o3 != null) {
                o3.f();
            }
        }

        @Override // io.didomi.sdk.L6.a
        public void a(final int i) {
            C1804j7.this.b().c(i);
            FragmentActivity fragmentActivityRequireActivity = C1804j7.this.requireActivity();
            final C1804j7 c1804j7 = C1804j7.this;
            fragmentActivityRequireActivity.runOnUiThread(new Runnable() { // from class: io.didomi.sdk.pe
                @Override // java.lang.Runnable
                public final void run() {
                    C1804j7.f.a(c1804j7, i);
                }
            });
        }

        @Override // io.didomi.sdk.L6.a
        public void a(int i, InterfaceC1847o0 dataProcessing) {
            Intrinsics.checkNotNullParameter(dataProcessing, "dataProcessing");
            C1804j7.this.b().b(i);
            C1804j7.this.a(dataProcessing);
        }

        @Override // io.didomi.sdk.L6.a
        public void a(J6 purposeListItem) {
            Intrinsics.checkNotNullParameter(purposeListItem, "purposeListItem");
            if (purposeListItem instanceof J6.Category) {
                C1804j7.this.b(((J6.Category) purposeListItem).getCategory());
                return;
            }
            if (purposeListItem instanceof J6.Purpose) {
                C1804j7.this.c(((J6.Purpose) purposeListItem).getPurpose());
                return;
            }
            Log.e$default("No click callback for purposeListItem: " + purposeListItem, null, 2, null);
        }

        @Override // io.didomi.sdk.L6.a
        public void a(J6 purposeListItem, boolean z) {
            L6 l6;
            RecyclerView recyclerView;
            RecyclerView recyclerView2;
            Intrinsics.checkNotNullParameter(purposeListItem, "purposeListItem");
            if (purposeListItem instanceof J6.Category) {
                J6.Category category = (J6.Category) purposeListItem;
                C1804j7.this.b().a(category.getCategory(), z ? DidomiToggle.b.ENABLED : DidomiToggle.b.DISABLED);
                C1748e1 c1748e1 = C1804j7.this.c;
                RecyclerView.Adapter adapter = (c1748e1 == null || (recyclerView2 = c1748e1.b) == null) ? null : recyclerView2.getAdapter();
                l6 = adapter instanceof L6 ? (L6) adapter : null;
                if (l6 != null) {
                    l6.a(C1804j7.this.b().n(category.getCategory()));
                }
                C1804j7.this.e();
                return;
            }
            if (!(purposeListItem instanceof J6.Purpose)) {
                Log.e$default("No toggle callback for purposeListItem: " + purposeListItem, null, 2, null);
                return;
            }
            J6.Purpose purpose = (J6.Purpose) purposeListItem;
            C1804j7.this.b().a(purpose.getPurpose(), z);
            C1748e1 c1748e12 = C1804j7.this.c;
            RecyclerView.Adapter adapter2 = (c1748e12 == null || (recyclerView = c1748e12.b) == null) ? null : recyclerView.getAdapter();
            l6 = adapter2 instanceof L6 ? (L6) adapter2 : null;
            if (l6 != null) {
                l6.a(C1804j7.this.b().z(purpose.getPurpose()));
            }
            C1804j7.this.e();
        }

        @Override // io.didomi.sdk.L6.a
        public void a(boolean z) {
            RecyclerView recyclerView;
            C1804j7.this.b().e(z);
            C1748e1 c1748e1 = C1804j7.this.c;
            RecyclerView.Adapter adapter = (c1748e1 == null || (recyclerView = c1748e1.b) == null) ? null : recyclerView.getAdapter();
            L6 l6 = adapter instanceof L6 ? (L6) adapter : null;
            if (l6 != null) {
                C1804j7 c1804j7 = C1804j7.this;
                l6.a(z);
                l6.a(c1804j7.b().H1());
                l6.b(c1804j7.b().N1());
            }
        }

        @Override // io.didomi.sdk.L6.a
        public void b() {
            C1804j7.this.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C1748e1 this_apply, C1804j7 this$0) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RecyclerView.Adapter adapter = this_apply.b.getAdapter();
        L6 l6 = adapter instanceof L6 ? (L6) adapter : null;
        if (l6 != null) {
            l6.a(this$0.b().getFocusedPosition());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(InternalPurpose internalPurpose) {
        RecyclerView recyclerView;
        C1748e1 c1748e1 = this.c;
        RecyclerView.Adapter adapter = (c1748e1 == null || (recyclerView = c1748e1.b) == null) ? null : recyclerView.getAdapter();
        L6 l6 = adapter instanceof L6 ? (L6) adapter : null;
        if (l6 != null) {
            l6.a(b().z(internalPurpose));
        }
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(InterfaceC1847o0 interfaceC1847o0) {
        getParentFragmentManager().beginTransaction().setCustomAnimations(R.anim.didomi_enter_from_right, R.anim.didomi_fade_out, R.anim.didomi_fade_in, R.anim.didomi_exit_to_right).add(R.id.container_ctv_preferences_secondary, C1783h6.INSTANCE.a(interfaceC1847o0)).addToBackStack("io.didomi.dialog.ADDITIONAL_DATA_PROCESSING_DETAIL").commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(PurposeCategory purposeCategory) {
        RecyclerView recyclerView;
        C1748e1 c1748e1 = this.c;
        RecyclerView.Adapter adapter = (c1748e1 == null || (recyclerView = c1748e1.b) == null) ? null : recyclerView.getAdapter();
        L6 l6 = adapter instanceof L6 ? (L6) adapter : null;
        if (l6 != null) {
            l6.a(b().n(purposeCategory));
        }
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(InternalPurpose internalPurpose) {
        RecyclerView recyclerView;
        C1748e1 c1748e1 = this.c;
        RecyclerView.Adapter adapter = (c1748e1 == null || (recyclerView = c1748e1.b) == null) ? null : recyclerView.getAdapter();
        L6 l6 = adapter instanceof L6 ? (L6) adapter : null;
        if (l6 != null) {
            l6.a(b().z(internalPurpose));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(PurposeCategory purposeCategory) {
        b().d(0);
        getParentFragmentManager().beginTransaction().setCustomAnimations(R.anim.didomi_enter_from_right, R.anim.didomi_fade_out, R.anim.didomi_fade_in, R.anim.didomi_exit_to_right).add(R.id.container_ctv_preferences_secondary, B6.f8183e.a(purposeCategory)).addToBackStack("TVPurposeCategoryFragment").commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(InternalPurpose internalPurpose) {
        getParentFragmentManager().beginTransaction().setCustomAnimations(R.anim.didomi_enter_from_right, R.anim.didomi_fade_out, R.anim.didomi_fade_in, R.anim.didomi_exit_to_right).add(R.id.container_ctv_preferences_secondary, E6.INSTANCE.a(internalPurpose)).addToBackStack("TVPurposeDetailFragment").commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d() {
        getParentFragmentManager().beginTransaction().setCustomAnimations(R.anim.didomi_enter_from_right, R.anim.didomi_fade_out, R.anim.didomi_fade_in, R.anim.didomi_exit_to_right).add(R.id.container_ctv_preferences_secondary, C1854o7.INSTANCE.a()).addToBackStack("TVSdkStorageDisclosureFragment").commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e() {
        RecyclerView recyclerView;
        C1748e1 c1748e1 = this.c;
        RecyclerView.Adapter adapter = (c1748e1 == null || (recyclerView = c1748e1.b) == null) ? null : recyclerView.getAdapter();
        L6 l6 = adapter instanceof L6 ? (L6) adapter : null;
        if (l6 != null) {
            l6.a(b().M1());
        }
    }

    @Override // io.didomi.drawable.C8
    public void a() {
        final C1748e1 c1748e1 = this.c;
        if (c1748e1 != null) {
            c1748e1.getRoot().postDelayed(new Runnable() { // from class: io.didomi.sdk.me
                @Override // java.lang.Runnable
                public final void run() {
                    C1804j7.a(c1748e1, this);
                }
            }, 100L);
        }
    }

    public final C1824l7 b() {
        C1824l7 c1824l7 = this.a;
        if (c1824l7 != null) {
            return c1824l7;
        }
        Intrinsics.throwUninitializedPropertyAccessException("model");
        return null;
    }

    public final D8 c() {
        D8 d8 = this.b;
        if (d8 != null) {
            return d8;
        }
        Intrinsics.throwUninitializedPropertyAccessException("uiProvider");
        return null;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismiss() {
        super.dismiss();
        O3 o3 = this.f8603d;
        if (o3 != null) {
            o3.c();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Didomi.Companion.getInstance().getComponent$android_release().a(this);
        super.onAttach(context);
        KeyEventDispatcher.Component activity = getActivity();
        this.f8603d = activity instanceof O3 ? (O3) activity : null;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onCancel(dialog);
        b().i1();
    }

    @Override // androidx.appcompat.app.AppCompatDialogFragment, androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = new Dialog(requireContext(), R.style.Didomi_Theme_TVDialog);
        dialog.setCancelable(false);
        dialog.setCanceledOnTouchOutside(false);
        Window window = dialog.getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new InsetDrawable((Drawable) new ColorDrawable(0), 0, 0, 0, 0));
        }
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        C1748e1 c1748e1A = C1748e1.a(inflater, viewGroup, false);
        this.c = c1748e1A;
        FrameLayout root = c1748e1A.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "inflate(inflater, parent…g = it\n            }.root");
        return root;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        RecyclerView recyclerView;
        super.onDestroyView();
        C1748e1 c1748e1 = this.c;
        if (c1748e1 != null && (recyclerView = c1748e1.b) != null) {
            recyclerView.setAdapter(null);
            recyclerView.setLayoutManager(null);
        }
        this.c = null;
        C1824l7 c1824l7B = b();
        c1824l7B.t0().removeObservers(getViewLifecycleOwner());
        c1824l7B.w0().removeObservers(getViewLifecycleOwner());
        c1824l7B.y0().removeObservers(getViewLifecycleOwner());
        c1824l7B.b(-1);
        c1824l7B.c(0);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f8603d = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.f8604e.a();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.f8604e.a(this, c());
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        C1748e1 c1748e1 = this.c;
        if (c1748e1 != null) {
            RecyclerView recyclerView = c1748e1.b;
            recyclerView.setAdapter(new L6(this.f8605f, b().R1()));
            recyclerView.setItemAnimator(null);
            Context context = recyclerView.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            recyclerView.setLayoutManager(new CenterLayoutManager(context, 1, false));
            Intrinsics.checkNotNullExpressionValue(recyclerView, "this");
            recyclerView.addItemDecoration(new R2(recyclerView, false, new b(recyclerView), 2, null));
            recyclerView.setHasFixedSize(true);
        }
        C1824l7 c1824l7B = b();
        c1824l7B.k1();
        MutableLiveData<DidomiToggle.b> mutableLiveDataT0 = c1824l7B.t0();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        final c cVar = new c();
        mutableLiveDataT0.observe(viewLifecycleOwner, new Observer() { // from class: io.didomi.sdk.le
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                C1804j7.a(cVar, obj);
            }
        });
        MutableLiveData<DidomiToggle.b> mutableLiveDataW0 = c1824l7B.w0();
        LifecycleOwner viewLifecycleOwner2 = getViewLifecycleOwner();
        final d dVar = new d();
        mutableLiveDataW0.observe(viewLifecycleOwner2, new Observer() { // from class: io.didomi.sdk.ne
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                C1804j7.b(dVar, obj);
            }
        });
        MutableLiveData<DidomiToggle.b> mutableLiveDataY0 = c1824l7B.y0();
        LifecycleOwner viewLifecycleOwner3 = getViewLifecycleOwner();
        final e eVar = new e();
        mutableLiveDataY0.observe(viewLifecycleOwner3, new Observer() { // from class: io.didomi.sdk.oe
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                C1804j7.c(eVar, obj);
            }
        });
    }
}
