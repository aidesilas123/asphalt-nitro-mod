package io.didomi.drawable;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.LifecycleOwner;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.C1726c;
import io.didomi.drawable.C1831m4;
import io.didomi.drawable.C1871q4;
import io.didomi.drawable.C1911u4;
import io.didomi.drawable.InterfaceC1931w4;
import io.didomi.drawable.events.PreferencesClickViewSPIPurposesEvent;
import io.didomi.drawable.events.PreferencesClickViewVendorsEvent;
import io.didomi.drawable.models.InternalPurpose;
import io.didomi.drawable.purpose.common.model.PurposeCategory;
import io.didomi.drawable.purpose.mobile.PurposeSaveView;
import io.didomi.drawable.view.mobile.DidomiToggle;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
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
@Metadata(d1 = {"\u0000\u009b\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0004*\u0001Q\u0018\u0000 \u000e2\u00020\u0001:\u0001\u0007B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\t\u0010\bJ\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0007\u0010\fJ\u000f\u0010\r\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000e\u0010\u0003J\u000f\u0010\u000f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000f\u0010\u0003J\u000f\u0010\u0010\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0010\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0011\u0010\u0003J\u000f\u0010\u0012\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0012\u0010\u0003J\u0017\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u001a\u001a\u00020\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ+\u0010!\u001a\u00020 2\u0006\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0004\b!\u0010\"J!\u0010$\u001a\u00020\u00062\u0006\u0010#\u001a\u00020 2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0006H\u0016¢\u0006\u0004\b&\u0010\u0003J\u0017\u0010)\u001a\u00020\u00062\u0006\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\b)\u0010*J\u000f\u0010+\u001a\u00020\u0006H\u0016¢\u0006\u0004\b+\u0010\u0003J\u000f\u0010,\u001a\u00020\u0006H\u0016¢\u0006\u0004\b,\u0010\u0003R\"\u00103\u001a\u00020-8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0007\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\"\u00109\u001a\u0002048\u0016@\u0016X\u0097.¢\u0006\u0012\n\u0004\b\t\u00105\u001a\u0004\b\u0007\u00106\"\u0004\b7\u00108R\"\u0010@\u001a\u00020:8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b/\u0010;\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R\u0018\u0010C\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010BR\u0018\u0010F\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010ER\u0014\u0010I\u001a\u00020G8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010HR\u001b\u0010M\u001a\u00020J8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010K\u001a\u0004\b\t\u0010LR\u0014\u0010P\u001a\u00020N8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010OR\u0014\u0010S\u001a\u00020Q8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010R¨\u0006T"}, d2 = {"Lio/didomi/sdk/V4;", "Lio/didomi/sdk/I0;", "<init>", "()V", "Lio/didomi/sdk/models/InternalPurpose;", "purpose", "", "a", "(Lio/didomi/sdk/models/InternalPurpose;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "category", "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V", InneractiveMediationDefs.GENDER_FEMALE, "j", "h", "i", "e", "g", "Landroid/content/Context;", "context", "onAttach", "(Landroid/content/Context;)V", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "view", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", o2.h.u0, "Landroid/content/DialogInterface;", "dialog", "onCancel", "(Landroid/content/DialogInterface;)V", o2.h.t0, "onDestroyView", "Lio/didomi/sdk/a5;", "Lio/didomi/sdk/a5;", "c", "()Lio/didomi/sdk/a5;", "setModel", "(Lio/didomi/sdk/a5;)V", "model", "Lio/didomi/sdk/z8;", "Lio/didomi/sdk/z8;", "()Lio/didomi/sdk/z8;", "setThemeProvider", "(Lio/didomi/sdk/z8;)V", "themeProvider", "Lio/didomi/sdk/I3;", "Lio/didomi/sdk/I3;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Lio/didomi/sdk/I3;", "setNavigationManager", "(Lio/didomi/sdk/I3;)V", "navigationManager", "Lio/didomi/sdk/R0;", "Lio/didomi/sdk/R0;", "binding", "Lio/didomi/sdk/w2;", "Lio/didomi/sdk/w2;", "bottomBarBinding", "Lio/didomi/sdk/d4;", "Lio/didomi/sdk/d4;", "dismissHelper", "", "Lkotlin/Lazy;", "()Z", "allowDismiss", "Lio/didomi/sdk/m4$a;", "Lio/didomi/sdk/m4$a;", "purposeCallback", "io/didomi/sdk/V4$g", "Lio/didomi/sdk/V4$g;", "scrollListener", "android_release"}, mv = {1, 8, 0})
public final class V4 extends I0 {
    public static final a j = new a(null);
    public C1712a5 a;
    public C1965z8 b;
    public I3 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private R0 f8410d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private C1929w2 f8411e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final C1741d4 f8412f = new C1741d4();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f8413g = LazyKt__LazyJVMKt.lazy(new b());
    private final C1831m4.a h = new f();
    private final g i = new g();

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\f\u001a\u00020\u000b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\r¨\u0006\u000f"}, d2 = {"Lio/didomi/sdk/V4$a;", "", "<init>", "()V", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "Lio/didomi/sdk/Y5;", "subScreenType", "", "a", "(Landroidx/fragment/app/FragmentManager;Lio/didomi/sdk/Y5;)V", "", "OPEN_SUBSCREEN", "Ljava/lang/String;", "TAG", "android_release"}, mv = {1, 8, 0})
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        public final void a(FragmentManager fragmentManager, Y5 subScreenType) {
            Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
            Intrinsics.checkNotNullParameter(subScreenType, "subScreenType");
            if (fragmentManager.findFragmentByTag("PurposesFragment") != null) {
                Log.w$default("Fragment with tag 'PurposesFragment' is already present", null, 2, null);
                return;
            }
            V4 v4 = new V4();
            Bundle bundle = new Bundle();
            bundle.putSerializable("OPEN_SUBSCREEN", subScreenType);
            v4.setArguments(bundle);
            v4.show(fragmentManager, "PurposesFragment");
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class b extends Lambda implements Function0<Boolean> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(V4.this.c().q1());
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "it", "", "a", "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V"}, mv = {1, 8, 0})
    static final class c extends Lambda implements Function1<DidomiToggle.b, v> {
        c() {
            super(1);
        }

        public final void a(DidomiToggle.b bVar) {
            InternalPurpose value = V4.this.c().u0().getValue();
            if (value == null) {
                return;
            }
            V4.this.a(value);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(DidomiToggle.b bVar) {
            a(bVar);
            return v.a;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "it", "", "a", "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V"}, mv = {1, 8, 0})
    static final class d extends Lambda implements Function1<DidomiToggle.b, v> {
        d() {
            super(1);
        }

        public final void a(DidomiToggle.b bVar) {
            InternalPurpose value = V4.this.c().u0().getValue();
            if (value != null && V4.this.c().w(value)) {
                V4.this.b(value);
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(DidomiToggle.b bVar) {
            a(bVar);
            return v.a;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "it", "", "a", "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V"}, mv = {1, 8, 0})
    static final class e extends Lambda implements Function1<DidomiToggle.b, v> {
        e() {
            super(1);
        }

        public final void a(DidomiToggle.b bVar) {
            PurposeCategory value = V4.this.c().s0().getValue();
            if (value == null) {
                return;
            }
            V4.this.a(value);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(DidomiToggle.b bVar) {
            a(bVar);
            return v.a;
        }
    }

    @Metadata(d1 = {"\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J'\u0010\u0005\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u000bJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0005\u0010\u000eJ\u001f\u0010\u0005\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0005\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0012\u0010\u0011J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0011¨\u0006\u0013"}, d2 = {"io/didomi/sdk/V4$f", "Lio/didomi/sdk/m4$a;", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "state", "", "a", "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "Lio/didomi/sdk/w4$a;", "type", "", "id", "(Lio/didomi/sdk/w4$a;Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "Lio/didomi/sdk/o0;", "dataProcessing", "(Lio/didomi/sdk/o0;)V", "(Lio/didomi/sdk/w4$a;Ljava/lang/String;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()V", "c", "android_release"}, mv = {1, 8, 0})
    public static final class f implements C1831m4.a {

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

        f() {
        }

        @Override // io.didomi.drawable.C1831m4.a
        public void a() {
            I3 i3D = V4.this.d();
            FragmentManager parentFragmentManager = V4.this.getParentFragmentManager();
            Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "parentFragmentManager");
            i3D.a(parentFragmentManager);
        }

        @Override // io.didomi.drawable.C1831m4.a
        public void a(InterfaceC1847o0 dataProcessing) {
            Intrinsics.checkNotNullParameter(dataProcessing, "dataProcessing");
            C1726c.Companion companion = C1726c.INSTANCE;
            FragmentManager supportFragmentManager = V4.this.requireActivity().getSupportFragmentManager();
            Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "requireActivity().supportFragmentManager");
            companion.a(supportFragmentManager, dataProcessing);
        }

        @Override // io.didomi.drawable.C1831m4.a
        public void a(DidomiToggle.b state) {
            RecyclerView recyclerView;
            Intrinsics.checkNotNullParameter(state, "state");
            V4.this.c().a(state);
            R0 r0 = V4.this.f8410d;
            RecyclerView.Adapter adapter = (r0 == null || (recyclerView = r0.f8353f) == null) ? null : recyclerView.getAdapter();
            C1831m4 c1831m4 = adapter instanceof C1831m4 ? (C1831m4) adapter : null;
            if (c1831m4 != null) {
                c1831m4.a(V4.this.c().d(true));
            }
            V4.this.f();
        }

        @Override // io.didomi.drawable.C1831m4.a
        public void a(InterfaceC1931w4.a type, String id) throws Throwable {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(id, "id");
            int i = a.a[type.ordinal()];
            if (i == 1) {
                PurposeCategory purposeCategoryA = V4.this.c().a(id);
                if (purposeCategoryA == null) {
                    return;
                }
                C1871q4.a aVar = C1871q4.f8738g;
                FragmentManager parentFragmentManager = V4.this.getParentFragmentManager();
                Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "parentFragmentManager");
                aVar.a(parentFragmentManager, purposeCategoryA);
                return;
            }
            if (i != 2) {
                throw new Throwable("Invalid type (" + type + ')');
            }
            InternalPurpose internalPurposeB = V4.this.c().b(id);
            if (internalPurposeB == null) {
                return;
            }
            C1911u4.Companion companion = C1911u4.INSTANCE;
            FragmentManager parentFragmentManager2 = V4.this.getParentFragmentManager();
            Intrinsics.checkNotNullExpressionValue(parentFragmentManager2, "parentFragmentManager");
            companion.a(parentFragmentManager2, internalPurposeB);
        }

        @Override // io.didomi.drawable.C1831m4.a
        public void a(InterfaceC1931w4.a type, String id, DidomiToggle.b state) {
            PurposeCategory purposeCategoryA;
            RecyclerView recyclerView;
            RecyclerView recyclerView2;
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(state, "state");
            InternalPurpose internalPurposeB = V4.this.c().b(id);
            if (internalPurposeB != null) {
                V4 v4 = V4.this;
                v4.c().u(internalPurposeB);
                if (type == InterfaceC1931w4.a.Purpose) {
                    v4.c().e(internalPurposeB, state);
                    R0 r0 = v4.f8410d;
                    RecyclerView.Adapter adapter = (r0 == null || (recyclerView2 = r0.f8353f) == null) ? null : recyclerView2.getAdapter();
                    C1831m4 c1831m4 = adapter instanceof C1831m4 ? (C1831m4) adapter : null;
                    if (c1831m4 != null) {
                        c1831m4.b(id, state, v4.c().F(), true);
                    }
                }
            }
            if (type == InterfaceC1931w4.a.Category && (purposeCategoryA = V4.this.c().a(id)) != null) {
                V4 v42 = V4.this;
                v42.c().a(purposeCategoryA, state);
                DidomiToggle.b bVarF = v42.c().f(purposeCategoryA);
                R0 r02 = v42.f8410d;
                RecyclerView.Adapter adapter2 = (r02 == null || (recyclerView = r02.f8353f) == null) ? null : recyclerView.getAdapter();
                C1831m4 c1831m42 = adapter2 instanceof C1831m4 ? (C1831m4) adapter2 : null;
                if (c1831m42 != null) {
                    c1831m42.a(id, bVarF, v42.c().F(), true);
                }
            }
            V4.this.f();
        }

        @Override // io.didomi.drawable.C1831m4.a
        public void b() {
            V4.this.c().a(new PreferencesClickViewSPIPurposesEvent());
            I3 i3D = V4.this.d();
            FragmentManager parentFragmentManager = V4.this.getParentFragmentManager();
            Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "parentFragmentManager");
            i3D.b(parentFragmentManager);
        }

        @Override // io.didomi.drawable.C1831m4.a
        public void c() {
            V4.this.c().a(new PreferencesClickViewVendorsEvent());
            I3 i3D = V4.this.d();
            FragmentManager parentFragmentManager = V4.this.getParentFragmentManager();
            Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "parentFragmentManager");
            i3D.c(parentFragmentManager);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"io/didomi/sdk/V4$g", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "", "newState", "", "onScrollStateChanged", "(Landroidx/recyclerview/widget/RecyclerView;I)V", "android_release"}, mv = {1, 8, 0})
    public static final class g extends RecyclerView.OnScrollListener {
        g() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            if (V4.this.c().w1() && i == 0) {
                V4.this.g();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(V4 this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.c().h1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(InternalPurpose internalPurpose) {
        RecyclerView recyclerView;
        R0 r0 = this.f8410d;
        RecyclerView.Adapter adapter = (r0 == null || (recyclerView = r0.f8353f) == null) ? null : recyclerView.getAdapter();
        C1831m4 c1831m4 = adapter instanceof C1831m4 ? (C1831m4) adapter : null;
        if (c1831m4 != null) {
            C1831m4.b(c1831m4, internalPurpose.getId(), c().l(internalPurpose), c().F(), false, 8, null);
        }
        f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(PurposeCategory purposeCategory) {
        RecyclerView recyclerView;
        R0 r0 = this.f8410d;
        RecyclerView.Adapter adapter = (r0 == null || (recyclerView = r0.f8353f) == null) ? null : recyclerView.getAdapter();
        C1831m4 c1831m4 = adapter instanceof C1831m4 ? (C1831m4) adapter : null;
        if (c1831m4 != null) {
            C1831m4.a(c1831m4, purposeCategory.getId(), c().f(purposeCategory), c().F(), false, 8, null);
        }
        f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(V4 this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.c().c1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(InternalPurpose internalPurpose) {
        RecyclerView recyclerView;
        R0 r0 = this.f8410d;
        RecyclerView.Adapter adapter = (r0 == null || (recyclerView = r0.f8353f) == null) ? null : recyclerView.getAdapter();
        C1831m4 c1831m4 = adapter instanceof C1831m4 ? (C1831m4) adapter : null;
        if (c1831m4 != null) {
            C1831m4.b(c1831m4, internalPurpose.getId(), c().l(internalPurpose), c().F(), false, 8, null);
        }
        f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    private final boolean b() {
        return ((Boolean) this.f8413g.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(V4 this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.c().Y0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(V4 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(V4 this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.c().b1();
    }

    private final void e() {
        R0 r0;
        TextView textView;
        if (c().B0() && c().L()) {
            if (c().w1() || (r0 = this.f8410d) == null || (textView = r0.h) == null) {
                return;
            }
            k9.a(textView, 1000L, 0, null, 6, null);
            return;
        }
        R0 r02 = this.f8410d;
        TextView textView2 = r02 != null ? r02.h : null;
        if (textView2 == null) {
            return;
        }
        textView2.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f() {
        e();
        if (c().Z()) {
            i();
            return;
        }
        if (c().w1()) {
            j();
        } else if (c().X0()) {
            h();
        } else {
            i();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g() {
        RecyclerView recyclerView;
        R0 r0 = this.f8410d;
        if (r0 == null || (recyclerView = r0.f8353f) == null) {
            return;
        }
        C1712a5 c1712a5C = c();
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
        c1712a5C.b(Intrinsics.areEqual(linearLayoutManager != null ? Integer.valueOf(linearLayoutManager.findLastVisibleItemPosition()) : null, recyclerView.getAdapter() != null ? Integer.valueOf(r0.getItemCount() - 1) : null));
        f();
    }

    private final void h() {
        C1929w2 c1929w2 = this.f8411e;
        if (c1929w2 != null) {
            AppCompatButton buttonPurposeBottomBarAgree = c1929w2.b;
            Intrinsics.checkNotNullExpressionValue(buttonPurposeBottomBarAgree, "buttonPurposeBottomBarAgree");
            k9.b(buttonPurposeBottomBarAgree);
            AppCompatButton buttonPurposeBottomBarDisagree = c1929w2.c;
            Intrinsics.checkNotNullExpressionValue(buttonPurposeBottomBarDisagree, "buttonPurposeBottomBarDisagree");
            k9.b(buttonPurposeBottomBarDisagree);
        }
        R0 r0 = this.f8410d;
        if (r0 != null) {
            ConstraintLayout root = r0.f8351d.getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "layoutPurposesAgreeDisagree.root");
            root.setVisibility(0);
            PurposeSaveView savePurposes = r0.f8354g;
            Intrinsics.checkNotNullExpressionValue(savePurposes, "savePurposes");
            savePurposes.setVisibility(8);
        }
    }

    private final void i() {
        R0 r0 = this.f8410d;
        if (r0 != null) {
            ConstraintLayout root = r0.f8351d.getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "layoutPurposesAgreeDisagree.root");
            root.setVisibility(8);
            PurposeSaveView updateButtonsToSave$lambda$30$lambda$29 = r0.f8354g;
            Intrinsics.checkNotNullExpressionValue(updateButtonsToSave$lambda$30$lambda$29, "updateButtonsToSave$lambda$30$lambda$29");
            updateButtonsToSave$lambda$30$lambda$29.setVisibility(0);
            if (c().Q0()) {
                updateButtonsToSave$lambda$30$lambda$29.b();
            } else {
                updateButtonsToSave$lambda$30$lambda$29.a();
            }
        }
    }

    private final void j() {
        C1929w2 c1929w2 = this.f8411e;
        if (c1929w2 != null) {
            AppCompatButton buttonPurposeBottomBarAgree = c1929w2.b;
            Intrinsics.checkNotNullExpressionValue(buttonPurposeBottomBarAgree, "buttonPurposeBottomBarAgree");
            k9.a(buttonPurposeBottomBarAgree);
            AppCompatButton buttonPurposeBottomBarDisagree = c1929w2.c;
            Intrinsics.checkNotNullExpressionValue(buttonPurposeBottomBarDisagree, "buttonPurposeBottomBarDisagree");
            k9.a(buttonPurposeBottomBarDisagree);
        }
        R0 r0 = this.f8410d;
        if (r0 != null) {
            ConstraintLayout root = r0.f8351d.getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "layoutPurposesAgreeDisagree.root");
            root.setVisibility(0);
            PurposeSaveView savePurposes = r0.f8354g;
            Intrinsics.checkNotNullExpressionValue(savePurposes, "savePurposes");
            savePurposes.setVisibility(8);
        }
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

    public final C1712a5 c() {
        C1712a5 c1712a5 = this.a;
        if (c1712a5 != null) {
            return c1712a5;
        }
        Intrinsics.throwUninitializedPropertyAccessException("model");
        return null;
    }

    public final I3 d() {
        I3 i3 = this.c;
        if (i3 != null) {
            return i3;
        }
        Intrinsics.throwUninitializedPropertyAccessException("navigationManager");
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
        super.onCancel(dialog);
        c().i1();
    }

    @Override // com.google.android.material.bottomsheet.a, androidx.appcompat.app.AppCompatDialogFragment, androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(bundle);
        dialogOnCreateDialog.setCancelable(!c().A0());
        Intrinsics.checkNotNullExpressionValue(dialogOnCreateDialog, "super.onCreateDialog(sav…shouldBeCancelable)\n    }");
        return dialogOnCreateDialog;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        R0 r0A = R0.a(inflater, viewGroup, false);
        this.f8410d = r0A;
        ConstraintLayout root = r0A.getRoot();
        this.f8411e = C1929w2.a(root);
        Intrinsics.checkNotNullExpressionValue(root, "inflate(inflater, contai…ng.bind(it)\n            }");
        return root;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        RecyclerView recyclerView;
        C1712a5 c1712a5C = c();
        c1712a5C.w0().removeObservers(getViewLifecycleOwner());
        c1712a5C.y0().removeObservers(getViewLifecycleOwner());
        c1712a5C.t0().removeObservers(getViewLifecycleOwner());
        C3 c3F0 = c1712a5C.f0();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "viewLifecycleOwner");
        c3F0.a(viewLifecycleOwner);
        this.f8411e = null;
        R0 r0 = this.f8410d;
        if (r0 != null && (recyclerView = r0.f8353f) != null) {
            recyclerView.setAdapter(null);
            recyclerView.setLayoutManager(null);
            recyclerView.removeOnScrollListener(this.i);
        }
        this.f8410d = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        this.f8412f.a();
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.f8412f.a(this, c().G0());
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x02d9  */
    @Override // io.didomi.drawable.I0, androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onViewCreated(android.view.View r29, android.os.Bundle r30) {
        /*
            Method dump skipped, instruction units count: 770
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.didomi.drawable.V4.onViewCreated(android.view.View, android.os.Bundle):void");
    }
}
