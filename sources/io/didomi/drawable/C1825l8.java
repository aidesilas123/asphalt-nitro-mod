package io.didomi.drawable;

import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.AbstractC1775g8;
import io.didomi.drawable.models.InternalVendor;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.v;

/* JADX INFO: renamed from: io.didomi.sdk.l8, reason: case insensitive filesystem */
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
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001fB\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0016\u0010\u0017J-\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\n2\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u0005H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u001f\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001c\u0010\u001eJ\u0015\u0010\u001f\u001a\u00020\u001b2\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u001f\u0010 J\u0015\u0010\u001f\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020!¢\u0006\u0004\b\u001f\u0010#J\u0015\u0010\u001f\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020$¢\u0006\u0004\b\u001f\u0010&J\u001b\u0010\u001f\u001a\u00020\u001b2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020$0'¢\u0006\u0004\b\u001f\u0010)R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010*R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,¨\u0006-"}, d2 = {"Lio/didomi/sdk/l8;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lio/didomi/sdk/m8;", "Lio/didomi/sdk/l8$a;", "callback", "", "Lio/didomi/sdk/g8;", "list", "<init>", "(Lio/didomi/sdk/l8$a;Ljava/util/List;)V", "", "getItemCount", "()I", o2.h.L, "", "getItemId", "(I)J", "getItemViewType", "(I)I", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "(Landroid/view/ViewGroup;I)Lio/didomi/sdk/m8;", "holder", "", "payloads", "", "onBindViewHolder", "(Lio/didomi/sdk/m8;ILjava/util/List;)V", "(Lio/didomi/sdk/m8;I)V", "a", "(I)V", "Lio/didomi/sdk/g8$a;", "bulk", "(Lio/didomi/sdk/g8$a;)V", "Lio/didomi/sdk/g8$g;", "vendorItem", "(Lio/didomi/sdk/g8$g;)V", "", "vendorItemList", "(Ljava/util/List;)V", "Lio/didomi/sdk/l8$a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/util/List;", "android_release"}, mv = {1, 8, 0})
public final class C1825l8 extends RecyclerView.Adapter<AbstractC1835m8> {
    private final a a;
    private final List<AbstractC1775g8> b;

    /* JADX INFO: renamed from: io.didomi.sdk.l8$a */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H&¢\u0006\u0004\b\u0005\u0010\tJ\u001f\u0010\u0005\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\nJ\u000f\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0005\u0010\u000bJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH&¢\u0006\u0004\b\u0005\u0010\u000e¨\u0006\u000f"}, d2 = {"Lio/didomi/sdk/l8$a;", "", "", "isChecked", "", "a", "(Z)V", "Lio/didomi/sdk/models/InternalVendor;", "vendor", "(Lio/didomi/sdk/models/InternalVendor;)V", "(Lio/didomi/sdk/models/InternalVendor;Z)V", "()V", "", o2.h.L, "(I)V", "android_release"}, mv = {1, 8, 0})
    public interface a {
        void a();

        void a(int position);

        void a(InternalVendor vendor);

        void a(InternalVendor vendor, boolean isChecked);

        void a(boolean isChecked);
    }

    /* JADX INFO: renamed from: io.didomi.sdk.l8$b */
    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "isChecked", "", "a", "(Z)V"}, mv = {1, 8, 0})
    static final class b extends Lambda implements Function1<Boolean, v> {
        b() {
            super(1);
        }

        public final void a(boolean z) {
            C1825l8.this.a.a(z);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(Boolean bool) {
            a(bool.booleanValue());
            return v.a;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.l8$c */
    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "isChecked", "", "a", "(Z)V"}, mv = {1, 8, 0})
    static final class c extends Lambda implements Function1<Boolean, v> {
        final /* synthetic */ AbstractC1775g8.Vendor b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(AbstractC1775g8.Vendor vendor) {
            super(1);
            this.b = vendor;
        }

        public final void a(boolean z) {
            C1825l8.this.a.a(this.b.getVendor(), z);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(Boolean bool) {
            a(bool.booleanValue());
            return v.a;
        }
    }

    public C1825l8(a callback, List<AbstractC1775g8> list) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(list, "list");
        this.a = callback;
        this.b = list;
        setHasStableIds(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(View this_apply) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C1825l8 this$0, int i, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            this$0.a.a(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean a(C1825l8 this$0, View view, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i != 21) {
            return false;
        }
        this$0.a.a();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean a(C1825l8 this$0, AbstractC1775g8.Vendor item, View view, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        if (i == 21) {
            this$0.a.a();
            return true;
        }
        if (i != 22 || keyEvent.getAction() != 1) {
            return false;
        }
        this$0.a.a(item.getVendor());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(C1825l8 this$0, int i, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            this$0.a.a(i);
        }
    }

    public final void a(int i) {
        notifyItemChanged(i, Boolean.TRUE);
    }

    public final void a(AbstractC1775g8.Bulk bulk) {
        Intrinsics.checkNotNullParameter(bulk, "bulk");
        Iterator<AbstractC1775g8> it = this.b.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            } else if (it.next() instanceof AbstractC1775g8.Bulk) {
                break;
            } else {
                i++;
            }
        }
        if (i >= 0) {
            this.b.set(i, bulk);
            notifyItemChanged(i);
        }
    }

    public final void a(AbstractC1775g8.Vendor vendorItem) {
        Intrinsics.checkNotNullParameter(vendorItem, "vendorItem");
        Iterator<AbstractC1775g8> it = this.b.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            }
            AbstractC1775g8 next = it.next();
            AbstractC1775g8.Vendor vendor = next instanceof AbstractC1775g8.Vendor ? (AbstractC1775g8.Vendor) next : null;
            if (Intrinsics.areEqual(vendor != null ? vendor.getVendor() : null, vendorItem.getVendor())) {
                break;
            } else {
                i++;
            }
        }
        if (i >= 0) {
            this.b.set(i, vendorItem);
            notifyItemChanged(i);
        }
    }

    public final void a(List<AbstractC1775g8.Vendor> vendorItemList) {
        Intrinsics.checkNotNullParameter(vendorItemList, "vendorItemList");
        Iterator<AbstractC1775g8> it = this.b.iterator();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                i2 = -1;
                break;
            } else if (it.next() instanceof AbstractC1775g8.Vendor) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 >= 0) {
            for (Object obj : vendorItemList) {
                int i3 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                this.b.set(i + i2, (AbstractC1775g8.Vendor) obj);
                i = i3;
            }
            notifyItemRangeChanged(i2, vendorItemList.size());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return this.b.get(i).a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return this.b.get(i).getTypeId();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i, List list) {
        onBindViewHolder((AbstractC1835m8) viewHolder, i, (List<Object>) list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(AbstractC1835m8 holder, final int i) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (holder instanceof C1875q8) {
            AbstractC1775g8 abstractC1775g8 = this.b.get(i);
            Intrinsics.checkNotNull(abstractC1775g8, "null cannot be cast to non-null type io.didomi.sdk.vendors.ctv.model.TVVendorItem.Title");
            ((C1875q8) holder).a((AbstractC1775g8.Title) abstractC1775g8);
            return;
        }
        if (holder instanceof J7) {
            AbstractC1775g8 abstractC1775g82 = this.b.get(i);
            Intrinsics.checkNotNull(abstractC1775g82, "null cannot be cast to non-null type io.didomi.sdk.vendors.ctv.model.TVVendorItem.Description");
            ((J7) holder).a((AbstractC1775g8.Description) abstractC1775g82);
            return;
        }
        if (holder instanceof C1865p8) {
            AbstractC1775g8 abstractC1775g83 = this.b.get(i);
            Intrinsics.checkNotNull(abstractC1775g83, "null cannot be cast to non-null type io.didomi.sdk.vendors.ctv.model.TVVendorItem.Section");
            ((C1865p8) holder).a((AbstractC1775g8.Section) abstractC1775g83);
            return;
        }
        if (holder instanceof D7) {
            View view = holder.itemView;
            view.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: io.didomi.sdk.af
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view2, boolean z) {
                    C1825l8.a(this.a, i, view2, z);
                }
            });
            view.setOnKeyListener(new View.OnKeyListener() { // from class: io.didomi.sdk.bf
                @Override // android.view.View.OnKeyListener
                public final boolean onKey(View view2, int i2, KeyEvent keyEvent) {
                    return C1825l8.a(this.a, view2, i2, keyEvent);
                }
            });
            AbstractC1775g8 abstractC1775g84 = this.b.get(i);
            Intrinsics.checkNotNull(abstractC1775g84, "null cannot be cast to non-null type io.didomi.sdk.vendors.ctv.model.TVVendorItem.Bulk");
            ((D7) holder).a((AbstractC1775g8.Bulk) abstractC1775g84, new b());
            return;
        }
        if (holder instanceof C1785h8) {
            AbstractC1775g8 abstractC1775g85 = this.b.get(i);
            Intrinsics.checkNotNull(abstractC1775g85, "null cannot be cast to non-null type io.didomi.sdk.vendors.ctv.model.TVVendorItem.Vendor");
            final AbstractC1775g8.Vendor vendor = (AbstractC1775g8.Vendor) abstractC1775g85;
            View view2 = holder.itemView;
            view2.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: io.didomi.sdk.xe
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view3, boolean z) {
                    C1825l8.b(this.a, i, view3, z);
                }
            });
            view2.setOnKeyListener(new View.OnKeyListener() { // from class: io.didomi.sdk.ze
                @Override // android.view.View.OnKeyListener
                public final boolean onKey(View view3, int i2, KeyEvent keyEvent) {
                    return C1825l8.a(this.a, vendor, view3, i2, keyEvent);
                }
            });
            ((C1785h8) holder).a(vendor, new c(vendor));
        }
    }

    public void onBindViewHolder(AbstractC1835m8 holder, int i, List<Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        if (payloads.isEmpty()) {
            onBindViewHolder(holder, i);
        } else {
            final View view = holder.itemView;
            view.post(new Runnable() { // from class: io.didomi.sdk.ye
                @Override // java.lang.Runnable
                public final void run() {
                    C1825l8.a(view);
                }
            });
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public AbstractC1835m8 onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        switch (i) {
            case 1:
                C1779h2 c1779h2A = C1779h2.a(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(c1779h2A, "inflate(LayoutInflater.f….context), parent, false)");
                return new C1745d8(c1779h2A);
            case 2:
                C1809k2 c1809k2A = C1809k2.a(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(c1809k2A, "inflate(LayoutInflater.f….context), parent, false)");
                return new C1875q8(c1809k2A);
            case 3:
                C1709a2 c1709a2A = C1709a2.a(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(c1709a2A, "inflate(LayoutInflater.f….context), parent, false)");
                return new J7(c1709a2A);
            case 4:
                C1799j2 c1799j2A = C1799j2.a(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(c1799j2A, "inflate(LayoutInflater.f….context), parent, false)");
                return new C1865p8(c1799j2A);
            case 5:
                Z1 z1A = Z1.a(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(z1A, "inflate(LayoutInflater.f….context), parent, false)");
                return new D7(z1A);
            case 6:
                C1789i2 c1789i2A = C1789i2.a(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(c1789i2A, "inflate(LayoutInflater.f….context), parent, false)");
                return new C1785h8(c1789i2A);
            case 7:
                C1 c1A = C1.a(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(c1A, "inflate(LayoutInflater.f….context), parent, false)");
                return new C1735c8(c1A);
            default:
                throw new ClassCastException("Unknown viewType " + i);
        }
    }
}
