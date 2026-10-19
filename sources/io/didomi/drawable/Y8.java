package io.didomi.drawable;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.U8;
import io.didomi.drawable.models.InternalVendor;
import io.didomi.drawable.view.mobile.DidomiToggle;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;
import kotlin.v;

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
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 +2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001f'B%\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u001f\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u001d\u0010\u001f\u001a\u00020\u001b2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u001eH\u0007¢\u0006\u0004\b\u001f\u0010 J\u001f\u0010\u001f\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020!2\b\u0010$\u001a\u0004\u0018\u00010#¢\u0006\u0004\b\u001f\u0010%R\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010&R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*¨\u0006,"}, d2 = {"Lio/didomi/sdk/Y8;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lio/didomi/sdk/g9;", "", "Lio/didomi/sdk/U8;", "list", "Lio/didomi/sdk/z8;", "themeProvider", "Lio/didomi/sdk/Y8$a;", "callback", "<init>", "(Ljava/util/List;Lio/didomi/sdk/z8;Lio/didomi/sdk/Y8$a;)V", "", "getItemCount", "()I", o2.h.L, "", "getItemId", "(I)J", "getItemViewType", "(I)I", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "(Landroid/view/ViewGroup;I)Lio/didomi/sdk/g9;", "holder", "", "onBindViewHolder", "(Lio/didomi/sdk/g9;I)V", "", "a", "(Ljava/util/List;)V", "Lio/didomi/sdk/U8$c;", "vendor", "Lio/didomi/sdk/U8$a;", "bulk", "(Lio/didomi/sdk/U8$c;Lio/didomi/sdk/U8$a;)V", "Ljava/util/List;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/z8;", "c", "Lio/didomi/sdk/Y8$a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "android_release"}, mv = {1, 8, 0})
public final class Y8 extends RecyclerView.Adapter<g9> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final b f8460d = new b(null);
    private final List<U8> a;
    private final C1965z8 b;
    private final a c;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u001b\u0010\u0003\u001a\u00020\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005H&¢\u0006\u0004\b\u0003\u0010\u0007J\u001f\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u0005H&¢\u0006\u0004\b\u0003\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH&¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u0003\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\bH&¢\u0006\u0004\b\u0003\u0010\u000e¨\u0006\u000f"}, d2 = {"Lio/didomi/sdk/Y8$a;", "", "", "a", "()V", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "state", "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "Lio/didomi/sdk/models/InternalVendor;", "vendor", "(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Lio/didomi/sdk/models/InternalVendor;)V", "Lio/didomi/sdk/U8$c$b;", "(Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/U8$c$b;", "android_release"}, mv = {1, 8, 0})
    public interface a {

        /* JADX INFO: renamed from: io.didomi.sdk.Y8$a$a, reason: collision with other inner class name */
        @Metadata(mv = {1, 8, 0}, xi = 48)
        public static final class C0477a {
            public static /* synthetic */ void a(a aVar, DidomiToggle.b bVar, int i, Object obj) {
                if (obj != null) {
                    throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onVendorBulkToggleChanged");
                }
                if ((i & 1) != 0) {
                    bVar = null;
                }
                aVar.a(bVar);
            }
        }

        U8.Vendor.DetailedInfo a(InternalVendor internalVendor);

        void a();

        void a(InternalVendor internalVendor, DidomiToggle.b bVar);

        void a(DidomiToggle.b bVar);

        void b(InternalVendor internalVendor);
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0006R\u0014\u0010\b\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0006¨\u0006\t"}, d2 = {"Lio/didomi/sdk/Y8$b;", "", "<init>", "()V", "", "BULK_POSITION", "I", "INCREMENT_POSITION_WITHOUT_BULK", "INCREMENT_POSITION_WITH_BULK", "android_release"}, mv = {1, 8, 0})
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(n nVar) {
            this();
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()V"}, mv = {1, 8, 0})
    static final class c extends Lambda implements Function0<v> {
        c() {
            super(0);
        }

        public final void a() {
            Y8.this.c.a();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ v invoke() {
            a();
            return v.a;
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"io/didomi/sdk/Y8$d", "Lio/didomi/sdk/view/mobile/DidomiToggle$a;", "Lio/didomi/sdk/view/mobile/DidomiToggle;", "toggle", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "state", "", "a", "(Lio/didomi/sdk/view/mobile/DidomiToggle;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "android_release"}, mv = {1, 8, 0})
    public static final class d implements DidomiToggle.a {
        final /* synthetic */ Z8 a;
        final /* synthetic */ U8.Bulk b;
        final /* synthetic */ Y8 c;

        d(Z8 z8, U8.Bulk bulk, Y8 y8) {
            this.a = z8;
            this.b = bulk;
            this.c = y8;
        }

        @Override // io.didomi.sdk.view.mobile.DidomiToggle.a
        public void a(DidomiToggle toggle, DidomiToggle.b state) {
            Intrinsics.checkNotNullParameter(toggle, "toggle");
            Intrinsics.checkNotNullParameter(state, "state");
            this.a.a(this.b, state);
            this.c.c.a(state);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"io/didomi/sdk/Y8$e", "Lio/didomi/sdk/view/mobile/DidomiToggle$a;", "Lio/didomi/sdk/view/mobile/DidomiToggle;", "toggle", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "state", "", "a", "(Lio/didomi/sdk/view/mobile/DidomiToggle;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "android_release"}, mv = {1, 8, 0})
    public static final class e implements DidomiToggle.a {
        final /* synthetic */ f9 a;
        final /* synthetic */ U8.Vendor b;
        final /* synthetic */ Y8 c;

        e(f9 f9Var, U8.Vendor vendor, Y8 y8) {
            this.a = f9Var;
            this.b = vendor;
            this.c = y8;
        }

        @Override // io.didomi.sdk.view.mobile.DidomiToggle.a
        public void a(DidomiToggle toggle, DidomiToggle.b state) {
            Intrinsics.checkNotNullParameter(toggle, "toggle");
            Intrinsics.checkNotNullParameter(state, "state");
            this.a.a(this.b, state);
            this.c.c.a(this.b.getVendor(), state);
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/U8$c$b;", "a", "()Lio/didomi/sdk/U8$c$b;"}, mv = {1, 8, 0})
    static final class f extends Lambda implements Function0<U8.Vendor.DetailedInfo> {
        final /* synthetic */ U8.Vendor b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(U8.Vendor vendor) {
            super(0);
            this.b = vendor;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final U8.Vendor.DetailedInfo invoke() {
            return Y8.this.c.a(this.b.getVendor());
        }
    }

    public Y8(List<U8> list, C1965z8 themeProvider, a callback) {
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(themeProvider, "themeProvider");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.a = list;
        this.b = themeProvider;
        this.c = callback;
        setHasStableIds(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Z8 this_apply, U8.Bulk data, Y8 this$0, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(data, "$data");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this_apply.a(data, this_apply.c());
        a.C0477a.a(this$0.c, null, 1, null);
    }

    public final void a(U8.Vendor vendor, U8.Bulk bulk) {
        int position;
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        if (bulk == null) {
            position = vendor.getPosition() + 1;
        } else {
            this.a.set(1, bulk);
            notifyItemChanged(1);
            position = vendor.getPosition() + 2;
        }
        this.a.set(position, vendor);
        notifyItemChanged(position);
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void a(List<? extends U8> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        List<U8> list2 = this.a;
        list2.clear();
        list2.addAll(list);
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return this.a.get(i).a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return this.a.get(i).getTypeId();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(g9 holder, int i) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (holder instanceof c9) {
            U8 u8 = this.a.get(i);
            Intrinsics.checkNotNull(u8, "null cannot be cast to non-null type io.didomi.sdk.vendors.mobile.model.VendorItem.Header");
            ((c9) holder).a((U8.Header) u8, new c());
            return;
        }
        if (holder instanceof Z8) {
            final Z8 z8 = (Z8) holder;
            U8 u82 = this.a.get(i);
            Intrinsics.checkNotNull(u82, "null cannot be cast to non-null type io.didomi.sdk.vendors.mobile.model.VendorItem.Bulk");
            final U8.Bulk bulk = (U8.Bulk) u82;
            z8.a(bulk, new d(z8, bulk, this));
            z8.itemView.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.md
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    Y8.a(z8, bulk, this, view);
                }
            });
            return;
        }
        if (holder instanceof f9) {
            U8 u83 = this.a.get(i);
            Intrinsics.checkNotNull(u83, "null cannot be cast to non-null type io.didomi.sdk.vendors.mobile.model.VendorItem.Vendor");
            U8.Vendor vendor = (U8.Vendor) u83;
            f9 f9Var = (f9) holder;
            f9Var.a(vendor, new e(f9Var, vendor, this), new f(vendor));
            Context context = f9Var.itemView.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "itemView.context");
            if (C1707a0.a(context).isEnabled()) {
                f9Var.a(vendor, this.c);
            } else {
                f9Var.b(vendor, this.c);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public g9 onCreateViewHolder(ViewGroup parent, int i) throws Throwable {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (i == 0) {
            C1965z8 c1965z8 = this.b;
            C1829m2 c1829m2A = C1829m2.a(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(c1829m2A, "inflate(LayoutInflater.f….context), parent, false)");
            return new c9(c1965z8, c1829m2A);
        }
        if (i == 1) {
            C1965z8 c1965z82 = this.b;
            C1819l2 c1819l2A = C1819l2.a(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(c1819l2A, "inflate(LayoutInflater.f….context), parent, false)");
            return new Z8(c1965z82, c1819l2A);
        }
        if (i == 2) {
            C1965z8 c1965z83 = this.b;
            C1839n2 c1839n2A = C1839n2.a(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(c1839n2A, "inflate(LayoutInflater.f….context), parent, false)");
            return new f9(c1965z83, c1839n2A);
        }
        throw new Throwable("viewType '" + i + "' is unknown");
    }
}
