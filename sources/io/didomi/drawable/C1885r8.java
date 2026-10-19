package io.didomi.drawable;

import android.app.Dialog;
import android.content.Context;
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
import io.didomi.drawable.C1825l8;
import io.didomi.drawable.C1885r8;
import io.didomi.drawable.models.InternalVendor;
import io.didomi.drawable.view.ctv.CenterLayoutManager;
import io.didomi.drawable.view.mobile.DidomiToggle;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;
import kotlin.v;
import kotlinx.coroutines.Job;

/* JADX INFO: renamed from: io.didomi.sdk.r8, reason: case insensitive filesystem */
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
@Metadata(d1 = {"\u0000\u0085\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005*\u0001+\u0018\u0000 E2\u00020\u00012\u00020\u0002:\u0001\nB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\r\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\r\u0010\u000bJ\u000f\u0010\u000e\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000e\u0010\u0004J\u0017\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0019\u001a\u00020\u00182\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ+\u0010 \u001a\u00020\u001f2\u0006\u0010\u001c\u001a\u00020\u001b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\b \u0010!J!\u0010#\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\u001f2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\tH\u0016¢\u0006\u0004\b%\u0010\u0004J\u000f\u0010&\u001a\u00020\tH\u0016¢\u0006\u0004\b&\u0010\u0004J\u000f\u0010'\u001a\u00020\tH\u0016¢\u0006\u0004\b'\u0010\u0004J\u000f\u0010(\u001a\u00020\tH\u0016¢\u0006\u0004\b(\u0010\u0004J\u000f\u0010)\u001a\u00020\tH\u0016¢\u0006\u0004\b)\u0010\u0004J\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u0004J\r\u0010*\u001a\u00020\t¢\u0006\u0004\b*\u0010\u0004R\u0014\u0010-\u001a\u00020+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010,R\"\u00103\u001a\u00020.8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\r\u0010/\u001a\u0004\b\r\u00100\"\u0004\b1\u00102R\"\u0010:\u001a\u0002048\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b5\u00106\u001a\u0004\b5\u00107\"\u0004\b8\u00109R\u0018\u0010=\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010<R\u0018\u0010@\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010?R\u0018\u0010D\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010C¨\u0006F"}, d2 = {"Lio/didomi/sdk/r8;", "Landroidx/appcompat/app/AppCompatDialogFragment;", "Lio/didomi/sdk/C8;", "<init>", "()V", "Lio/didomi/sdk/models/InternalVendor;", "vendor", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "consentStatus", "", "a", "(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "legIntState", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "e", "Landroid/content/Context;", "context", "onAttach", "(Landroid/content/Context;)V", "", "getTheme", "()I", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "parent", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "view", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", o2.h.u0, o2.h.t0, "dismiss", "onDetach", "onDestroyView", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "io/didomi/sdk/r8$f", "Lio/didomi/sdk/r8$f;", "vendorListCallback", "Lio/didomi/sdk/t8;", "Lio/didomi/sdk/t8;", "()Lio/didomi/sdk/t8;", "setModel", "(Lio/didomi/sdk/t8;)V", "model", "Lio/didomi/sdk/D8;", "c", "Lio/didomi/sdk/D8;", "()Lio/didomi/sdk/D8;", "setUiProvider", "(Lio/didomi/sdk/D8;)V", "uiProvider", "Lio/didomi/sdk/l1;", "Lio/didomi/sdk/l1;", "binding", "Lio/didomi/sdk/s6;", "Lio/didomi/sdk/s6;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lkotlinx/coroutines/Job;", InneractiveMediationDefs.GENDER_FEMALE, "Lkotlinx/coroutines/Job;", "job", "g", "android_release"}, mv = {1, 8, 0})
public final class C1885r8 extends AppCompatDialogFragment implements C8 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f8750g = new a(null);
    private final f a = new f();
    public C1905t8 b;
    public D8 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private C1818l1 f8751d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private InterfaceC1893s6 f8752e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Job f8753f;

    /* JADX INFO: renamed from: io.didomi.sdk.r8$a */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lio/didomi/sdk/r8$a;", "", "<init>", "()V", "", "TAG", "Ljava/lang/String;", "android_release"}, mv = {1, 8, 0})
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.r8$b */
    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(Z)V"}, mv = {1, 8, 0})
    static final class b extends Lambda implements Function1<Boolean, v> {
        b() {
            super(1);
        }

        public final void a(boolean z) {
            if (z) {
                return;
            }
            C1885r8.this.dismiss();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(Boolean bool) {
            a(bool.booleanValue());
            return v.a;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.r8$c */
    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(I)Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class c extends Lambda implements Function1<Integer, Boolean> {
        final /* synthetic */ RecyclerView a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(RecyclerView recyclerView) {
            super(1);
            this.a = recyclerView;
        }

        public final Boolean a(int i) {
            RecyclerView.Adapter adapter = this.a.getAdapter();
            return Boolean.valueOf(adapter != null && adapter.getItemViewType(i) == 2);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(Integer num) {
            return a(num.intValue());
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.r8$d */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "kotlin.jvm.PlatformType", "consentState", "", "a", "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V"}, mv = {1, 8, 0})
    static final class d extends Lambda implements Function1<DidomiToggle.b, v> {
        d() {
            super(1);
        }

        public final void a(DidomiToggle.b bVar) {
            InternalVendor value;
            if (C1885r8.this.b().C() || (value = C1885r8.this.b().J().getValue()) == null || !C1885r8.this.b().G(value) || bVar == null) {
                return;
            }
            C1885r8.this.a(value, bVar);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(DidomiToggle.b bVar) {
            a(bVar);
            return v.a;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.r8$e */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "kotlin.jvm.PlatformType", "legIntState", "", "a", "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V"}, mv = {1, 8, 0})
    static final class e extends Lambda implements Function1<DidomiToggle.b, v> {
        e() {
            super(1);
        }

        public final void a(DidomiToggle.b bVar) {
            InternalVendor value;
            if (C1885r8.this.b().C() || (value = C1885r8.this.b().J().getValue()) == null || !C1885r8.this.b().H(value) || bVar == null) {
                return;
            }
            C1885r8.this.b(value, bVar);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(DidomiToggle.b bVar) {
            a(bVar);
            return v.a;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.r8$f */
    @Metadata(d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0005\u0010\tJ\u001f\u0010\u0005\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\nJ\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u000bJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0005\u0010\u000e¨\u0006\u000f"}, d2 = {"io/didomi/sdk/r8$f", "Lio/didomi/sdk/l8$a;", "", "isChecked", "", "a", "(Z)V", "Lio/didomi/sdk/models/InternalVendor;", "vendor", "(Lio/didomi/sdk/models/InternalVendor;)V", "(Lio/didomi/sdk/models/InternalVendor;Z)V", "()V", "", o2.h.L, "(I)V", "android_release"}, mv = {1, 8, 0})
    public static final class f implements C1825l8.a {
        f() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(C1885r8 this$0, int i) {
            RecyclerView recyclerView;
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            C1818l1 c1818l1 = this$0.f8751d;
            if (c1818l1 == null || (recyclerView = c1818l1.b) == null) {
                return;
            }
            if (i <= 4) {
                i = 0;
            }
            recyclerView.smoothScrollToPosition(i);
        }

        @Override // io.didomi.drawable.C1825l8.a
        public void a() {
            InterfaceC1893s6 interfaceC1893s6 = C1885r8.this.f8752e;
            if (interfaceC1893s6 != null) {
                interfaceC1893s6.d();
            }
        }

        @Override // io.didomi.drawable.C1825l8.a
        public void a(final int i) {
            C1885r8.this.b().e(i);
            FragmentActivity fragmentActivityRequireActivity = C1885r8.this.requireActivity();
            final C1885r8 c1885r8 = C1885r8.this;
            fragmentActivityRequireActivity.runOnUiThread(new Runnable() { // from class: io.didomi.sdk.pf
                @Override // java.lang.Runnable
                public final void run() {
                    C1885r8.f.a(c1885r8, i);
                }
            });
        }

        @Override // io.didomi.drawable.C1825l8.a
        public void a(InternalVendor vendor) {
            Intrinsics.checkNotNullParameter(vendor, "vendor");
            C1905t8 c1905t8B = C1885r8.this.b();
            c1905t8B.D(vendor);
            c1905t8B.B(vendor);
            C1885r8.this.d();
        }

        @Override // io.didomi.drawable.C1825l8.a
        public void a(InternalVendor vendor, boolean z) {
            RecyclerView recyclerView;
            Intrinsics.checkNotNullParameter(vendor, "vendor");
            C1885r8.this.b().c(vendor, z ? DidomiToggle.b.ENABLED : DidomiToggle.b.DISABLED);
            C1818l1 c1818l1 = C1885r8.this.f8751d;
            RecyclerView.Adapter adapter = (c1818l1 == null || (recyclerView = c1818l1.b) == null) ? null : recyclerView.getAdapter();
            C1825l8 c1825l8 = adapter instanceof C1825l8 ? (C1825l8) adapter : null;
            if (c1825l8 != null) {
                c1825l8.a(C1885r8.this.b().M(vendor));
            }
            C1885r8.this.e();
        }

        @Override // io.didomi.drawable.C1825l8.a
        public void a(boolean z) {
            RecyclerView recyclerView;
            C1885r8.this.b().b(z);
            C1818l1 c1818l1 = C1885r8.this.f8751d;
            RecyclerView.Adapter adapter = (c1818l1 == null || (recyclerView = c1818l1.b) == null) ? null : recyclerView.getAdapter();
            C1825l8 c1825l8 = adapter instanceof C1825l8 ? (C1825l8) adapter : null;
            if (c1825l8 != null) {
                c1825l8.a(C1885r8.this.b().z0());
            }
            C1885r8.this.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C1818l1 this_apply, C1885r8 this$0) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RecyclerView.Adapter adapter = this_apply.b.getAdapter();
        C1825l8 c1825l8 = adapter instanceof C1825l8 ? (C1825l8) adapter : null;
        if (c1825l8 != null) {
            c1825l8.a(this$0.b().i0());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(InternalVendor internalVendor, DidomiToggle.b bVar) {
        RecyclerView recyclerView;
        b().a(internalVendor, bVar);
        C1818l1 c1818l1 = this.f8751d;
        RecyclerView.Adapter adapter = (c1818l1 == null || (recyclerView = c1818l1.b) == null) ? null : recyclerView.getAdapter();
        C1825l8 c1825l8 = adapter instanceof C1825l8 ? (C1825l8) adapter : null;
        if (c1825l8 != null) {
            c1825l8.a(b().M(internalVendor));
        }
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(InternalVendor internalVendor, DidomiToggle.b bVar) {
        RecyclerView recyclerView;
        b().b(internalVendor, bVar);
        C1818l1 c1818l1 = this.f8751d;
        RecyclerView.Adapter adapter = (c1818l1 == null || (recyclerView = c1818l1.b) == null) ? null : recyclerView.getAdapter();
        C1825l8 c1825l8 = adapter instanceof C1825l8 ? (C1825l8) adapter : null;
        if (c1825l8 != null) {
            c1825l8.a(b().M(internalVendor));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e() {
        RecyclerView recyclerView;
        C1818l1 c1818l1 = this.f8751d;
        RecyclerView.Adapter adapter = (c1818l1 == null || (recyclerView = c1818l1.b) == null) ? null : recyclerView.getAdapter();
        C1825l8 c1825l8 = adapter instanceof C1825l8 ? (C1825l8) adapter : null;
        if (c1825l8 != null) {
            c1825l8.a(b().A0());
        }
    }

    @Override // io.didomi.drawable.C8
    public void a() {
        final C1818l1 c1818l1 = this.f8751d;
        if (c1818l1 != null) {
            c1818l1.getRoot().postDelayed(new Runnable() { // from class: io.didomi.sdk.mf
                @Override // java.lang.Runnable
                public final void run() {
                    C1885r8.a(c1818l1, this);
                }
            }, 100L);
        }
    }

    public final C1905t8 b() {
        C1905t8 c1905t8 = this.b;
        if (c1905t8 != null) {
            return c1905t8;
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

    public final void d() {
        requireActivity().getSupportFragmentManager().beginTransaction().setCustomAnimations(R.anim.didomi_enter_from_right, R.anim.didomi_fade_out, R.anim.didomi_fade_in, R.anim.didomi_exit_to_right).add(R.id.container_ctv_preferences_secondary, new T7()).addToBackStack("TVVendorDetailFragment").commit();
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismiss() {
        super.dismiss();
        InterfaceC1893s6 interfaceC1893s6 = this.f8752e;
        if (interfaceC1893s6 != null) {
            interfaceC1893s6.e();
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public int getTheme() {
        return R.style.Didomi_Theme_TVDialog;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Didomi.Companion.getInstance().getComponent$android_release().a(this);
        super.onAttach(context);
        KeyEventDispatcher.Component activity = getActivity();
        this.f8752e = activity instanceof InterfaceC1893s6 ? (InterfaceC1893s6) activity : null;
    }

    @Override // androidx.appcompat.app.AppCompatDialogFragment, androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(bundle);
        dialogOnCreateDialog.setCancelable(false);
        dialogOnCreateDialog.setCanceledOnTouchOutside(false);
        Window window = dialogOnCreateDialog.getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new InsetDrawable((Drawable) new ColorDrawable(0), 0, 0, 0, 0));
        }
        Intrinsics.checkNotNullExpressionValue(dialogOnCreateDialog, "super.onCreateDialog(sav…), 0, 0, 0, 0))\n        }");
        return dialogOnCreateDialog;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        C1818l1 c1818l1A = C1818l1.a(inflater, viewGroup, false);
        this.f8751d = c1818l1A;
        FrameLayout root = c1818l1A.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "inflate(inflater, parent…g = it\n            }.root");
        return root;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        RecyclerView recyclerView;
        super.onDestroyView();
        C1818l1 c1818l1 = this.f8751d;
        if (c1818l1 != null && (recyclerView = c1818l1.b) != null) {
            recyclerView.setAdapter(null);
            recyclerView.setLayoutManager(null);
        }
        this.f8751d = null;
        C1905t8 c1905t8B = b();
        c1905t8B.L().removeObservers(getViewLifecycleOwner());
        c1905t8B.O().removeObservers(getViewLifecycleOwner());
        c1905t8B.d(0);
        c1905t8B.e(0);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f8752e = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        Job job = this.f8753f;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.f8753f = N2.a(this, c().a(), new b());
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        RecyclerView recyclerView;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        C1818l1 c1818l1 = this.f8751d;
        if (c1818l1 != null && (recyclerView = c1818l1.b) != null) {
            recyclerView.setAdapter(new C1825l8(this.a, b().L0()));
            recyclerView.setItemAnimator(null);
            Context context = view.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "view.context");
            recyclerView.setLayoutManager(new CenterLayoutManager(context, 1, false));
            recyclerView.addItemDecoration(new R2(recyclerView, false, new c(recyclerView), 2, null));
            recyclerView.setHasFixedSize(true);
        }
        C1905t8 c1905t8B = b();
        b().U0();
        MutableLiveData<DidomiToggle.b> mutableLiveDataL = c1905t8B.L();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        final d dVar = new d();
        mutableLiveDataL.observe(viewLifecycleOwner, new Observer() { // from class: io.didomi.sdk.nf
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                C1885r8.a(dVar, obj);
            }
        });
        MutableLiveData<DidomiToggle.b> mutableLiveDataO = c1905t8B.O();
        LifecycleOwner viewLifecycleOwner2 = getViewLifecycleOwner();
        final e eVar = new e();
        mutableLiveDataO.observe(viewLifecycleOwner2, new Observer() { // from class: io.didomi.sdk.of
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                C1885r8.b(eVar, obj);
            }
        });
    }
}
