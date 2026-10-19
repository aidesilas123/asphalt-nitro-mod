package io.didomi.drawable;

import android.content.Context;
import android.os.Bundle;
import android.text.Spanned;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
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
import io.didomi.drawable.I8;
import io.didomi.drawable.R8;
import io.didomi.drawable.U8;
import io.didomi.drawable.Y8;
import io.didomi.drawable.events.PreferencesClickVendorSaveChoicesEvent;
import io.didomi.drawable.models.InternalVendor;
import io.didomi.drawable.view.mobile.DidomiToggle;
import io.didomi.drawable.view.mobile.HeaderView;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;
import kotlin.text.StringsKt__StringsJVMKt;
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
@Metadata(d1 = {"\u0000\u0081\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005*\u0001?\u0018\u0000 G2\u00020\u0001:\u0001\tB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\f\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\f\u0010\nJ\u0017\u0010\u000f\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J+\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J!\u0010\u001b\u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\u00172\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001d\u0010\u0003J\u000f\u0010\u001e\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001e\u0010\u0003J\u000f\u0010\u001f\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001f\u0010\u0003R\"\u0010%\u001a\u00020 8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\t\u0010!\u001a\u0004\b\f\u0010\"\"\u0004\b#\u0010$R\"\u0010+\u001a\u00020&8\u0016@\u0016X\u0097.¢\u0006\u0012\n\u0004\b\f\u0010'\u001a\u0004\b\t\u0010(\"\u0004\b)\u0010*R\"\u00102\u001a\u00020,8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b-\u0010/\"\u0004\b0\u00101R\u0018\u00106\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0018\u0010:\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0014\u0010>\u001a\u00020;8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010=R\u0014\u0010B\u001a\u00020?8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010AR\u0014\u0010F\u001a\u00020C8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bD\u0010E¨\u0006H"}, d2 = {"Lio/didomi/sdk/a9;", "Lio/didomi/sdk/I0;", "<init>", "()V", "Lio/didomi/sdk/models/InternalVendor;", "vendor", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "consentStatus", "", "a", "(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "legIntState", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/content/Context;", "context", "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "view", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", o2.h.u0, o2.h.t0, "onDestroyView", "Lio/didomi/sdk/h9;", "Lio/didomi/sdk/h9;", "()Lio/didomi/sdk/h9;", "setModel", "(Lio/didomi/sdk/h9;)V", "model", "Lio/didomi/sdk/z8;", "Lio/didomi/sdk/z8;", "()Lio/didomi/sdk/z8;", "setThemeProvider", "(Lio/didomi/sdk/z8;)V", "themeProvider", "Lio/didomi/sdk/D8;", "c", "Lio/didomi/sdk/D8;", "()Lio/didomi/sdk/D8;", "setUiProvider", "(Lio/didomi/sdk/D8;)V", "uiProvider", "Lio/didomi/sdk/o1;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lio/didomi/sdk/o1;", "binding", "Lio/didomi/sdk/G2;", "e", "Lio/didomi/sdk/G2;", "footerBinding", "Landroid/view/View$OnClickListener;", InneractiveMediationDefs.GENDER_FEMALE, "Landroid/view/View$OnClickListener;", "saveClickListener", "io/didomi/sdk/a9$d", "g", "Lio/didomi/sdk/a9$d;", "vendorsCallback", "Lio/didomi/sdk/d4;", "h", "Lio/didomi/sdk/d4;", "dismissHelper", "i", "android_release"}, mv = {1, 8, 0})
public final class a9 extends I0 {
    public static final a i = new a(null);
    public h9 a;
    public C1965z8 b;
    public D8 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private C1848o1 f8493d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private G2 f8494e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final View.OnClickListener f8495f = new View.OnClickListener() { // from class: io.didomi.sdk.td
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            a9.b(this.a, view);
        }
    };

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final d f8496g = new d();
    private final C1741d4 h = new C1741d4();

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lio/didomi/sdk/a9$a;", "", "<init>", "()V", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "", "a", "(Landroidx/fragment/app/FragmentManager;)V", "", "TAG", "Ljava/lang/String;", "android_release"}, mv = {1, 8, 0})
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        public final void a(FragmentManager fragmentManager) {
            Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
            if (fragmentManager.findFragmentByTag("VendorsFragment") == null) {
                new a9().show(fragmentManager, "VendorsFragment");
            } else {
                Log.w$default("Fragment with tag 'VendorsFragment' is already present", null, 2, null);
            }
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "consentState", "", "a", "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V"}, mv = {1, 8, 0})
    static final class b extends Lambda implements Function1<DidomiToggle.b, v> {
        final /* synthetic */ h9 a;
        final /* synthetic */ a9 b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(h9 h9Var, a9 a9Var) {
            super(1);
            this.a = h9Var;
            this.b = a9Var;
        }

        public final void a(DidomiToggle.b bVar) {
            InternalVendor value;
            if (bVar == null || this.a.C() || (value = this.a.J().getValue()) == null || !this.a.G(value)) {
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

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "legIntState", "", "a", "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V"}, mv = {1, 8, 0})
    static final class c extends Lambda implements Function1<DidomiToggle.b, v> {
        final /* synthetic */ h9 a;
        final /* synthetic */ a9 b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(h9 h9Var, a9 a9Var) {
            super(1);
            this.a = h9Var;
            this.b = a9Var;
        }

        public final void a(DidomiToggle.b bVar) {
            InternalVendor value;
            if (bVar == null || this.a.C() || (value = this.a.J().getValue()) == null || !this.a.H(value)) {
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

    @Metadata(d1 = {"\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\u0003\u001a\u00020\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\u0003\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u0003\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0003\u0010\rJ\u001f\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0003\u0010\u000e¨\u0006\u000f"}, d2 = {"io/didomi/sdk/a9$d", "Lio/didomi/sdk/Y8$a;", "", "a", "()V", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "state", "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "Lio/didomi/sdk/models/InternalVendor;", "vendor", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Lio/didomi/sdk/models/InternalVendor;)V", "Lio/didomi/sdk/U8$c$b;", "(Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/U8$c$b;", "(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "android_release"}, mv = {1, 8, 0})
    public static final class d implements Y8.a {
        d() {
        }

        @Override // io.didomi.sdk.Y8.a
        public U8.Vendor.DetailedInfo a(InternalVendor vendor) {
            Intrinsics.checkNotNullParameter(vendor, "vendor");
            return a9.this.b().v(vendor);
        }

        @Override // io.didomi.sdk.Y8.a
        public void a() {
            I8.Companion companion = I8.INSTANCE;
            FragmentManager childFragmentManager = a9.this.getChildFragmentManager();
            Intrinsics.checkNotNullExpressionValue(childFragmentManager, "childFragmentManager");
            companion.a(childFragmentManager);
        }

        @Override // io.didomi.sdk.Y8.a
        public void a(InternalVendor vendor, DidomiToggle.b state) {
            RecyclerView recyclerView;
            Intrinsics.checkNotNullParameter(vendor, "vendor");
            Intrinsics.checkNotNullParameter(state, "state");
            a9.this.b().c(vendor, state);
            a9.this.b().c0();
            C1848o1 c1848o1 = a9.this.f8493d;
            RecyclerView.Adapter adapter = (c1848o1 == null || (recyclerView = c1848o1.f8722e) == null) ? null : recyclerView.getAdapter();
            Y8 y8 = adapter instanceof Y8 ? (Y8) adapter : null;
            if (y8 != null) {
                y8.a(a9.this.b().u(vendor), a9.this.b().W());
            }
        }

        @Override // io.didomi.sdk.Y8.a
        public void a(DidomiToggle.b bVar) {
            RecyclerView recyclerView;
            if (bVar == null) {
                bVar = a9.this.b().b() ? DidomiToggle.b.DISABLED : a9.this.b().a() ? DidomiToggle.b.UNKNOWN : DidomiToggle.b.ENABLED;
            }
            a9.this.b().d(bVar);
            a9.this.b().a(bVar);
            C1848o1 c1848o1 = a9.this.f8493d;
            RecyclerView.Adapter adapter = (c1848o1 == null || (recyclerView = c1848o1.f8722e) == null) ? null : recyclerView.getAdapter();
            Y8 y8 = adapter instanceof Y8 ? (Y8) adapter : null;
            if (y8 != null) {
                y8.a(a9.this.b().X());
            }
        }

        @Override // io.didomi.sdk.Y8.a
        public void b(InternalVendor vendor) {
            Intrinsics.checkNotNullParameter(vendor, "vendor");
            a9.this.b().D(vendor);
            a9.this.b().B(vendor);
            R8.Companion aVar = R8.INSTANCE;
            FragmentManager childFragmentManager = a9.this.getChildFragmentManager();
            Intrinsics.checkNotNullExpressionValue(childFragmentManager, "childFragmentManager");
            aVar.a(childFragmentManager);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(a9 this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(InternalVendor internalVendor, DidomiToggle.b bVar) {
        RecyclerView recyclerView;
        b().a(internalVendor, bVar);
        C1848o1 c1848o1 = this.f8493d;
        RecyclerView.Adapter adapter = (c1848o1 == null || (recyclerView = c1848o1.f8722e) == null) ? null : recyclerView.getAdapter();
        Y8 y8 = adapter instanceof Y8 ? (Y8) adapter : null;
        if (y8 != null) {
            y8.a(b().u(internalVendor), b().W());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(a9 this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.b().a(new PreferencesClickVendorSaveChoicesEvent());
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(InternalVendor internalVendor, DidomiToggle.b bVar) {
        RecyclerView recyclerView;
        b().b(internalVendor, bVar);
        C1848o1 c1848o1 = this.f8493d;
        RecyclerView.Adapter adapter = (c1848o1 == null || (recyclerView = c1848o1.f8722e) == null) ? null : recyclerView.getAdapter();
        Y8 y8 = adapter instanceof Y8 ? (Y8) adapter : null;
        if (y8 != null) {
            y8.a(b().u(internalVendor), b().W());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
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

    public final h9 b() {
        h9 h9Var = this.a;
        if (h9Var != null) {
            return h9Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("model");
        return null;
    }

    public final D8 c() {
        D8 d8 = this.c;
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
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        C1848o1 c1848o1A = C1848o1.a(inflater, viewGroup, false);
        this.f8493d = c1848o1A;
        ConstraintLayout root = c1848o1A.getRoot();
        this.f8494e = G2.a(root);
        Intrinsics.checkNotNullExpressionValue(root, "inflate(inflater, contai…ng.bind(it)\n            }");
        return root;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        RecyclerView recyclerView;
        super.onDestroyView();
        h9 h9VarB = b();
        h9VarB.L().removeObservers(getViewLifecycleOwner());
        h9VarB.O().removeObservers(getViewLifecycleOwner());
        C3 c3E = h9VarB.E();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "viewLifecycleOwner");
        c3E.a(viewLifecycleOwner);
        C1848o1 c1848o1 = this.f8493d;
        if (c1848o1 != null && (recyclerView = c1848o1.f8722e) != null) {
            recyclerView.setAdapter(null);
            recyclerView.setLayoutManager(null);
        }
        this.f8493d = null;
        this.f8494e = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.h.a();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.h.a(this, c());
    }

    @Override // io.didomi.drawable.I0, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        b().d0();
        C1848o1 c1848o1 = this.f8493d;
        int i2 = 0;
        if (c1848o1 != null) {
            HeaderView headerView = c1848o1.f8721d;
            Intrinsics.checkNotNullExpressionValue(headerView, "binding.vendorsHeader");
            C3 c3E = b().E();
            LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
            Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "viewLifecycleOwner");
            HeaderView.a(headerView, c3E, viewLifecycleOwner, b().m(), null, 8, null);
            AppCompatImageButton onViewCreated$lambda$6$lambda$4 = c1848o1.b;
            Intrinsics.checkNotNullExpressionValue(onViewCreated$lambda$6$lambda$4, "onViewCreated$lambda$6$lambda$4");
            j9.a(onViewCreated$lambda$6$lambda$4, b().p());
            C1820l3.a(onViewCreated$lambda$6$lambda$4, a().j());
            onViewCreated$lambda$6$lambda$4.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.sd
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    a9.a(this.a, view2);
                }
            });
            RecyclerView recyclerView = c1848o1.f8722e;
            List<U8> listX = b().X();
            recyclerView.setAdapter(new Y8(listX, a(), this.f8496g));
            recyclerView.setItemAnimator(null);
            recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
            int dimensionPixelSize = recyclerView.getResources().getDimensionPixelSize(R.dimen.didomi_content_max_width);
            int i3 = recyclerView.getResources().getDisplayMetrics().widthPixels;
            if (i3 > dimensionPixelSize) {
                int i4 = (i3 - dimensionPixelSize) / 2;
                recyclerView.setPadding(i4, 0, i4, 0);
            }
            Intrinsics.checkNotNullExpressionValue(recyclerView, "this");
            recyclerView.addItemDecoration(new e9(recyclerView, b().P(), a()));
            C1792i5.a(recyclerView, C1950y3.a(listX, U8.Vendor.class));
            HeaderView headerView2 = c1848o1.f8721d;
            Intrinsics.checkNotNullExpressionValue(headerView2, "binding.vendorsHeader");
            C1792i5.a(recyclerView, headerView2);
            recyclerView.setHasFixedSize(true);
            View view2 = c1848o1.f8723f;
            Intrinsics.checkNotNullExpressionValue(view2, "binding.viewVendorsBottomDivider");
            k9.a(view2, a());
        }
        G2 g2 = this.f8494e;
        if (g2 != null) {
            TextView textView = g2.f8225d;
            textView.setTextColor(a().j());
            textView.setText(b().w());
            Spanned spannedW = b().w();
            textView.setVisibility((spannedW == null || StringsKt__StringsJVMKt.isBlank(spannedW)) ? 8 : 0);
            Button onViewCreated$lambda$10$lambda$8 = g2.b;
            Intrinsics.checkNotNullExpressionValue(onViewCreated$lambda$10$lambda$8, "onViewCreated$lambda$10$lambda$8");
            j9.a(onViewCreated$lambda$10$lambda$8, b().H());
            C1955y8.a(onViewCreated$lambda$10$lambda$8, a().i().j());
            onViewCreated$lambda$10$lambda$8.setText(b().I());
            onViewCreated$lambda$10$lambda$8.setOnClickListener(this.f8495f);
            ImageView onViewCreated$lambda$10$lambda$9 = g2.c;
            if (b().Q()) {
                i2 = 8;
            } else {
                Intrinsics.checkNotNullExpressionValue(onViewCreated$lambda$10$lambda$9, "onViewCreated$lambda$10$lambda$9");
                C1820l3.a(onViewCreated$lambda$10$lambda$9, a().g());
            }
            onViewCreated$lambda$10$lambda$9.setVisibility(i2);
        }
        h9 h9VarB = b();
        MutableLiveData<DidomiToggle.b> mutableLiveDataL = h9VarB.L();
        LifecycleOwner viewLifecycleOwner2 = getViewLifecycleOwner();
        final b bVar = new b(h9VarB, this);
        mutableLiveDataL.observe(viewLifecycleOwner2, new Observer() { // from class: io.didomi.sdk.rd
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                a9.a(bVar, obj);
            }
        });
        MutableLiveData<DidomiToggle.b> mutableLiveDataO = h9VarB.O();
        LifecycleOwner viewLifecycleOwner3 = getViewLifecycleOwner();
        final c cVar = new c(h9VarB, this);
        mutableLiveDataO.observe(viewLifecycleOwner3, new Observer() { // from class: io.didomi.sdk.ud
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                a9.b(cVar, obj);
            }
        });
    }
}
