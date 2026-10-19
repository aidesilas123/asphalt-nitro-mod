package io.didomi.drawable;

import android.app.Dialog;
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
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.C1726c;
import io.didomi.drawable.C1831m4;
import io.didomi.drawable.C1911u4;
import io.didomi.drawable.InterfaceC1931w4;
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
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;
import kotlin.v;

/* JADX INFO: renamed from: io.didomi.sdk.q4, reason: case insensitive filesystem */
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
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 D2\u00020\u0001:\u0001\nB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u001f\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\f\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\f\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\r\u0010\u0003J\u0017\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J+\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u00172\b\u0010\u001a\u001a\u0004\u0018\u00010\u00192\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ!\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001b2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0004H\u0016¢\u0006\u0004\b!\u0010\u0003J\u000f\u0010\"\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\"\u0010\u0003J\u0017\u0010%\u001a\u00020\u00042\u0006\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0004H\u0016¢\u0006\u0004\b'\u0010\u0003J\u000f\u0010(\u001a\u00020\u0004H\u0016¢\u0006\u0004\b(\u0010\u0003R\u001d\u0010-\u001a\u0004\u0018\u00010)8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010*\u001a\u0004\b+\u0010,R\u0014\u00100\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010/R\u0014\u00103\u001a\u0002018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u00102R\"\u00109\u001a\u0002048\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\r\u00105\u001a\u0004\b\f\u00106\"\u0004\b7\u00108R\"\u0010?\u001a\u00020:8\u0016@\u0016X\u0097.¢\u0006\u0012\n\u0004\b\u0005\u0010;\u001a\u0004\b\n\u0010<\"\u0004\b=\u0010>R\u0018\u0010C\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010B¨\u0006E"}, d2 = {"Lio/didomi/sdk/q4;", "Lio/didomi/sdk/I0;", "<init>", "()V", "", "e", "Lio/didomi/sdk/models/InternalPurpose;", "purpose", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "state", "a", "(Lio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/content/Context;", "context", "onAttach", "(Landroid/content/Context;)V", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "view", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", o2.h.u0, o2.h.t0, "Landroid/content/DialogInterface;", "dialog", "onCancel", "(Landroid/content/DialogInterface;)V", "dismiss", "onDestroyView", "Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "Lkotlin/Lazy;", "c", "()Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "selectedCategory", "Lio/didomi/sdk/d4;", "Lio/didomi/sdk/d4;", "dismissHelper", "Lio/didomi/sdk/m4$a;", "Lio/didomi/sdk/m4$a;", "purposeCallback", "Lio/didomi/sdk/a5;", "Lio/didomi/sdk/a5;", "()Lio/didomi/sdk/a5;", "setModel", "(Lio/didomi/sdk/a5;)V", "model", "Lio/didomi/sdk/z8;", "Lio/didomi/sdk/z8;", "()Lio/didomi/sdk/z8;", "setThemeProvider", "(Lio/didomi/sdk/z8;)V", "themeProvider", "Lio/didomi/sdk/S0;", InneractiveMediationDefs.GENDER_FEMALE, "Lio/didomi/sdk/S0;", "binding", "g", "android_release"}, mv = {1, 8, 0})
public final class C1871q4 extends I0 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f8738g = new a(null);
    private final Lazy a = LazyKt__LazyJVMKt.lazy(new e());
    private final C1741d4 b = new C1741d4();
    private final C1831m4.a c = new d();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public C1712a5 f8739d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public C1965z8 f8740e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private S0 f8741f;

    /* JADX INFO: renamed from: io.didomi.sdk.q4$a */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\r¨\u0006\u000f"}, d2 = {"Lio/didomi/sdk/q4$a;", "", "<init>", "()V", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "category", "", "a", "(Landroidx/fragment/app/FragmentManager;Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V", "", "PURPOSE_CATEGORY", "Ljava/lang/String;", "TAG", "android_release"}, mv = {1, 8, 0})
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        public final void a(FragmentManager fragmentManager, PurposeCategory category) {
            Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
            Intrinsics.checkNotNullParameter(category, "category");
            if (fragmentManager.findFragmentByTag("PurposeCategoryFragment") != null) {
                Log.w$default("Fragment with tag 'PurposeCategoryFragment' is already present", null, 2, null);
                return;
            }
            C1871q4 c1871q4 = new C1871q4();
            Bundle bundle = new Bundle();
            bundle.putParcelable("purpose_category", category);
            c1871q4.setArguments(bundle);
            c1871q4.show(fragmentManager, "PurposeCategoryFragment");
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.q4$b */
    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "state", "", "a", "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V"}, mv = {1, 8, 0})
    static final class b extends Lambda implements Function1<DidomiToggle.b, v> {
        final /* synthetic */ C1712a5 a;
        final /* synthetic */ C1871q4 b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(C1712a5 c1712a5, C1871q4 c1871q4) {
            super(1);
            this.a = c1712a5;
            this.b = c1871q4;
        }

        public final void a(DidomiToggle.b bVar) {
            InternalPurpose value = this.a.u0().getValue();
            if (value == null || !this.a.v(value) || bVar == null) {
                return;
            }
            this.b.a(value, bVar);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(DidomiToggle.b bVar) {
            a(bVar);
            return v.a;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.q4$c */
    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "state", "", "a", "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V"}, mv = {1, 8, 0})
    static final class c extends Lambda implements Function1<DidomiToggle.b, v> {
        final /* synthetic */ C1712a5 a;
        final /* synthetic */ C1871q4 b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(C1712a5 c1712a5, C1871q4 c1871q4) {
            super(1);
            this.a = c1712a5;
            this.b = c1871q4;
        }

        public final void a(DidomiToggle.b bVar) {
            InternalPurpose value = this.a.u0().getValue();
            if (value == null || !this.a.w(value) || bVar == null) {
                return;
            }
            this.b.b(value, bVar);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(DidomiToggle.b bVar) {
            a(bVar);
            return v.a;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.q4$d */
    @Metadata(d1 = {"\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J'\u0010\u0005\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u000bJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0005\u0010\u000eJ\u001f\u0010\u0005\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0005\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0012\u0010\u0011J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0011¨\u0006\u0013"}, d2 = {"io/didomi/sdk/q4$d", "Lio/didomi/sdk/m4$a;", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "state", "", "a", "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "Lio/didomi/sdk/w4$a;", "type", "", "id", "(Lio/didomi/sdk/w4$a;Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "Lio/didomi/sdk/o0;", "dataProcessing", "(Lio/didomi/sdk/o0;)V", "(Lio/didomi/sdk/w4$a;Ljava/lang/String;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()V", "c", "android_release"}, mv = {1, 8, 0})
    public static final class d implements C1831m4.a {

        /* JADX INFO: renamed from: io.didomi.sdk.q4$d$a */
        @Metadata(mv = {1, 8, 0}, xi = 48)
        public /* synthetic */ class a {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[InterfaceC1931w4.a.values().length];
                try {
                    iArr[InterfaceC1931w4.a.Category.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[InterfaceC1931w4.a.Purpose.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                a = iArr;
            }
        }

        d() {
        }

        @Override // io.didomi.drawable.C1831m4.a
        public void a() {
        }

        @Override // io.didomi.drawable.C1831m4.a
        public void a(InterfaceC1847o0 dataProcessing) {
            Intrinsics.checkNotNullParameter(dataProcessing, "dataProcessing");
            C1726c.Companion companion = C1726c.INSTANCE;
            FragmentManager supportFragmentManager = C1871q4.this.requireActivity().getSupportFragmentManager();
            Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "requireActivity().supportFragmentManager");
            companion.a(supportFragmentManager, dataProcessing);
        }

        @Override // io.didomi.drawable.C1831m4.a
        public void a(DidomiToggle.b state) throws Throwable {
            RecyclerView recyclerView;
            Intrinsics.checkNotNullParameter(state, "state");
            PurposeCategory purposeCategoryC = C1871q4.this.c();
            if (purposeCategoryC == null) {
                throw new Throwable("Category is invalid");
            }
            C1871q4.this.b().a(purposeCategoryC, state);
            S0 s0 = C1871q4.this.f8741f;
            RecyclerView.Adapter adapter = (s0 == null || (recyclerView = s0.f8368d) == null) ? null : recyclerView.getAdapter();
            C1831m4 c1831m4 = adapter instanceof C1831m4 ? (C1831m4) adapter : null;
            if (c1831m4 != null) {
                c1831m4.a(C1871q4.this.b().a(purposeCategoryC, true));
            }
            C1871q4.this.e();
        }

        @Override // io.didomi.drawable.C1831m4.a
        public void a(InterfaceC1931w4.a type, String id) throws Throwable {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(id, "id");
            int i = a.a[type.ordinal()];
            if (i == 1) {
                Log.e$default("A Purpose Category should not contain other categories.", null, 2, null);
                return;
            }
            if (i != 2) {
                throw new Throwable("Invalid type (" + type + ')');
            }
            InternalPurpose internalPurposeB = C1871q4.this.b().b(id);
            if (internalPurposeB == null) {
                return;
            }
            C1911u4.Companion companion = C1911u4.INSTANCE;
            FragmentManager parentFragmentManager = C1871q4.this.getParentFragmentManager();
            Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "parentFragmentManager");
            companion.a(parentFragmentManager, internalPurposeB);
        }

        @Override // io.didomi.drawable.C1831m4.a
        public void a(InterfaceC1931w4.a type, String id, DidomiToggle.b state) throws Throwable {
            RecyclerView recyclerView;
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(state, "state");
            PurposeCategory purposeCategoryC = C1871q4.this.c();
            if (purposeCategoryC == null) {
                throw new Throwable("Category is invalid");
            }
            InternalPurpose internalPurposeB = C1871q4.this.b().b(id);
            if (internalPurposeB != null) {
                C1871q4 c1871q4 = C1871q4.this;
                c1871q4.b().u(internalPurposeB);
                if (type == InterfaceC1931w4.a.Purpose) {
                    c1871q4.b().e(internalPurposeB, state);
                    S0 s0 = c1871q4.f8741f;
                    RecyclerView.Adapter adapter = (s0 == null || (recyclerView = s0.f8368d) == null) ? null : recyclerView.getAdapter();
                    C1831m4 c1831m4 = adapter instanceof C1831m4 ? (C1831m4) adapter : null;
                    if (c1831m4 != null) {
                        c1831m4.b(id, state, c1871q4.b().f(purposeCategoryC), true);
                    }
                }
            }
            C1871q4.this.e();
        }

        @Override // io.didomi.drawable.C1831m4.a
        public void b() {
        }

        @Override // io.didomi.drawable.C1831m4.a
        public void c() {
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.q4$e */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "a", "()Lio/didomi/sdk/purpose/common/model/PurposeCategory;"}, mv = {1, 8, 0})
    static final class e extends Lambda implements Function0<PurposeCategory> {
        e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PurposeCategory invoke() {
            if (Build.VERSION.SDK_INT >= 33) {
                Bundle arguments = C1871q4.this.getArguments();
                if (arguments != null) {
                    return (PurposeCategory) arguments.getParcelable("purpose_category", PurposeCategory.class);
                }
            } else {
                Bundle arguments2 = C1871q4.this.getArguments();
                if (arguments2 != null) {
                    return (PurposeCategory) arguments2.getParcelable("purpose_category");
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(InternalPurpose internalPurpose, DidomiToggle.b bVar) {
        RecyclerView recyclerView;
        C1712a5 c1712a5B = b();
        PurposeCategory purposeCategoryC = c();
        Intrinsics.checkNotNull(purposeCategoryC, "null cannot be cast to non-null type io.didomi.sdk.purpose.common.model.PurposeCategory");
        DidomiToggle.b bVarF = c1712a5B.f(purposeCategoryC);
        S0 s0 = this.f8741f;
        RecyclerView.Adapter adapter = (s0 == null || (recyclerView = s0.f8368d) == null) ? null : recyclerView.getAdapter();
        C1831m4 c1831m4 = adapter instanceof C1831m4 ? (C1831m4) adapter : null;
        if (c1831m4 != null) {
            C1831m4.b(c1831m4, internalPurpose.getId(), bVar, bVarF, false, 8, null);
        }
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C1871q4 this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.d();
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(final C1871q4 this$0, PurposeCategory selectedCategory, Button this_apply, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(selectedCategory, "$selectedCategory");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this$0.b().j(selectedCategory);
        this_apply.post(new Runnable() { // from class: io.didomi.sdk.jf
            @Override // java.lang.Runnable
            public final void run() {
                C1871q4.d(this.a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(InternalPurpose internalPurpose, DidomiToggle.b bVar) {
        RecyclerView recyclerView;
        C1712a5 c1712a5B = b();
        PurposeCategory purposeCategoryC = c();
        Intrinsics.checkNotNull(purposeCategoryC, "null cannot be cast to non-null type io.didomi.sdk.purpose.common.model.PurposeCategory");
        DidomiToggle.b bVarF = c1712a5B.f(purposeCategoryC);
        S0 s0 = this.f8741f;
        RecyclerView.Adapter adapter = (s0 == null || (recyclerView = s0.f8368d) == null) ? null : recyclerView.getAdapter();
        C1831m4 c1831m4 = adapter instanceof C1831m4 ? (C1831m4) adapter : null;
        if (c1831m4 != null) {
            C1831m4.b(c1831m4, internalPurpose.getId(), bVar, bVarF, false, 8, null);
        }
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PurposeCategory c() {
        return (PurposeCategory) this.a.getValue();
    }

    private final void d() {
        b().Z0();
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(C1871q4 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e() {
        S0 s0 = this.f8741f;
        if (s0 != null) {
            if (b().a(b().s0().getValue())) {
                s0.f8369e.b();
            } else {
                s0.f8369e.a();
            }
        }
    }

    @Override // io.didomi.drawable.I0
    public C1965z8 a() {
        C1965z8 c1965z8 = this.f8740e;
        if (c1965z8 != null) {
            return c1965z8;
        }
        Intrinsics.throwUninitializedPropertyAccessException("themeProvider");
        return null;
    }

    public final C1712a5 b() {
        C1712a5 c1712a5 = this.f8739d;
        if (c1712a5 != null) {
            return c1712a5;
        }
        Intrinsics.throwUninitializedPropertyAccessException("model");
        return null;
    }

    @Override // com.google.android.material.bottomsheet.a, androidx.fragment.app.DialogFragment
    public void dismiss() {
        b().k1();
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

    @Override // com.google.android.material.bottomsheet.a, androidx.appcompat.app.AppCompatDialogFragment, androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(bundle);
        dialogOnCreateDialog.setCancelable(!b().A0());
        Intrinsics.checkNotNullExpressionValue(dialogOnCreateDialog, "super.onCreateDialog(sav…shouldBeCancelable)\n    }");
        return dialogOnCreateDialog;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        S0 s0A = S0.a(inflater, viewGroup, false);
        this.f8741f = s0A;
        ConstraintLayout root = s0A.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "inflate(inflater, contai…g = it\n            }.root");
        return root;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        RecyclerView recyclerView;
        super.onDestroyView();
        C3 c3F0 = b().f0();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "viewLifecycleOwner");
        c3F0.a(viewLifecycleOwner);
        C1712a5 c1712a5B = b();
        c1712a5B.w0().removeObservers(getViewLifecycleOwner());
        c1712a5B.y0().removeObservers(getViewLifecycleOwner());
        S0 s0 = this.f8741f;
        if (s0 != null && (recyclerView = s0.f8368d) != null) {
            recyclerView.setAdapter(null);
            recyclerView.setLayoutManager(null);
        }
        this.f8741f = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        this.b.a();
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.b.a(this, b().G0());
    }

    @Override // io.didomi.drawable.I0, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Throwable {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        final PurposeCategory purposeCategoryC = c();
        if (purposeCategoryC == null) {
            throw new Throwable("Category is invalid");
        }
        b().l(purposeCategoryC);
        S0 s0 = this.f8741f;
        if (s0 != null) {
            AppCompatImageButton onViewCreated$lambda$11$lambda$3 = s0.b;
            String strR = b().r();
            Intrinsics.checkNotNullExpressionValue(onViewCreated$lambda$11$lambda$3, "onViewCreated$lambda$11$lambda$3");
            j9.a(onViewCreated$lambda$11$lambda$3, strR, strR, null, false, null, 0, null, null, 252, null);
            C1820l3.a(onViewCreated$lambda$11$lambda$3, a().j());
            onViewCreated$lambda$11$lambda$3.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.if
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    C1871q4.a(this.a, view2);
                }
            });
            HeaderView onViewCreated$lambda$11$lambda$4 = s0.c;
            if (b().K0()) {
                Intrinsics.checkNotNullExpressionValue(onViewCreated$lambda$11$lambda$4, "onViewCreated$lambda$11$lambda$4");
                HeaderView.a(onViewCreated$lambda$11$lambda$4, b().e(purposeCategoryC), null, 0, 6, null);
            } else {
                Intrinsics.checkNotNullExpressionValue(onViewCreated$lambda$11$lambda$4, "onViewCreated$lambda$11$lambda$4");
                C3 c3F0 = b().f0();
                LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
                Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "viewLifecycleOwner");
                HeaderView.a(onViewCreated$lambda$11$lambda$4, c3F0, viewLifecycleOwner, b().E0(), null, 8, null);
            }
            onViewCreated$lambda$11$lambda$4.a();
            List<InterfaceC1931w4> listC = b().c(purposeCategoryC);
            RecyclerView onViewCreated$lambda$11$lambda$5 = s0.f8368d;
            onViewCreated$lambda$11$lambda$5.setAdapter(new C1831m4(listC, a(), this.c));
            onViewCreated$lambda$11$lambda$5.setLayoutManager(new LinearLayoutManager(onViewCreated$lambda$11$lambda$5.getContext(), 1, false));
            Context context = onViewCreated$lambda$11$lambda$5.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            onViewCreated$lambda$11$lambda$5.addItemDecoration(new J4(context, a(), b().m(purposeCategoryC), false, 8, null));
            Intrinsics.checkNotNullExpressionValue(onViewCreated$lambda$11$lambda$5, "onViewCreated$lambda$11$lambda$5");
            C1792i5.a(onViewCreated$lambda$11$lambda$5, C1950y3.a(listC, PurposeDisplayItem.class));
            HeaderView headerView = s0.c;
            Intrinsics.checkNotNullExpressionValue(headerView, "binding.headerPurposesCategory");
            C1792i5.a(onViewCreated$lambda$11$lambda$5, headerView);
            PurposeSaveView purposeSaveView = s0.f8369e;
            purposeSaveView.setDescriptionText(b().p0());
            final Button saveButton$android_release = purposeSaveView.getSaveButton$android_release();
            if (saveButton$android_release != null) {
                C1955y8.a(saveButton$android_release, a().i().j());
                saveButton$android_release.setText(b().q0());
                saveButton$android_release.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.kf
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        C1871q4.a(this.a, purposeCategoryC, saveButton$android_release, view2);
                    }
                });
            }
            ImageView logoImage$android_release = purposeSaveView.getLogoImage$android_release();
            if (logoImage$android_release != null) {
                logoImage$android_release.setVisibility(b().c(false) ? 4 : 0);
            }
            View onViewCreated$lambda$11$lambda$10 = s0.f8370f;
            Intrinsics.checkNotNullExpressionValue(onViewCreated$lambda$11$lambda$10, "onViewCreated$lambda$11$lambda$10");
            k9.a(onViewCreated$lambda$11$lambda$10, a());
            onViewCreated$lambda$11$lambda$10.setVisibility(b().k(purposeCategoryC) ? 8 : 0);
        }
        C1712a5 c1712a5B = b();
        MutableLiveData<DidomiToggle.b> mutableLiveDataW0 = c1712a5B.w0();
        LifecycleOwner viewLifecycleOwner2 = getViewLifecycleOwner();
        final b bVar = new b(c1712a5B, this);
        mutableLiveDataW0.observe(viewLifecycleOwner2, new Observer() { // from class: io.didomi.sdk.hf
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                C1871q4.a(bVar, obj);
            }
        });
        MutableLiveData<DidomiToggle.b> mutableLiveDataY0 = c1712a5B.y0();
        LifecycleOwner viewLifecycleOwner3 = getViewLifecycleOwner();
        final c cVar = new c(c1712a5B, this);
        mutableLiveDataY0.observe(viewLifecycleOwner3, new Observer() { // from class: io.didomi.sdk.lf
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                C1871q4.b(cVar, obj);
            }
        });
        c1712a5B.a1();
        e();
    }
}
