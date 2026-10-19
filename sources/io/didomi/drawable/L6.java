package io.didomi.drawable;

import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.J6;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
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
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001fB\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0016\u0010\u0017J-\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\n2\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u0005H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u001f\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001c\u0010\u001eJ\u0015\u0010\u001f\u001a\u00020\u001b2\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u001f\u0010 J\u0015\u0010\u001f\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020!¢\u0006\u0004\b\u001f\u0010#J\u0015\u0010\u001f\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020$¢\u0006\u0004\b\u001f\u0010&J\u001b\u0010\u001f\u001a\u00020\u001b2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020(0'¢\u0006\u0004\b\u001f\u0010*J\u0015\u0010\u001f\u001a\u00020\u001b2\u0006\u0010+\u001a\u00020(¢\u0006\u0004\b\u001f\u0010,J\u001b\u0010/\u001a\u00020\u001b2\f\u0010.\u001a\b\u0012\u0004\u0012\u00020-0'¢\u0006\u0004\b/\u0010*J\u0015\u0010\u001f\u001a\u00020\u001b2\u0006\u00100\u001a\u00020-¢\u0006\u0004\b\u001f\u00101R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u00102R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00103¨\u00064"}, d2 = {"Lio/didomi/sdk/L6;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lio/didomi/sdk/M6;", "Lio/didomi/sdk/L6$a;", "callback", "", "Lio/didomi/sdk/J6;", "list", "<init>", "(Lio/didomi/sdk/L6$a;Ljava/util/List;)V", "", "getItemCount", "()I", o2.h.L, "", "getItemId", "(I)J", "getItemViewType", "(I)I", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "(Landroid/view/ViewGroup;I)Lio/didomi/sdk/M6;", "holder", "", "payloads", "", "onBindViewHolder", "(Lio/didomi/sdk/M6;ILjava/util/List;)V", "(Lio/didomi/sdk/M6;I)V", "a", "(I)V", "Lio/didomi/sdk/J6$c;", "bulk", "(Lio/didomi/sdk/J6$c;)V", "", "isChecked", "(Z)V", "", "Lio/didomi/sdk/J6$d;", "categoryItemList", "(Ljava/util/List;)V", "categoryItem", "(Lio/didomi/sdk/J6$d;)V", "Lio/didomi/sdk/J6$i;", "purposeItemList", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "purposeItem", "(Lio/didomi/sdk/J6$i;)V", "Lio/didomi/sdk/L6$a;", "Ljava/util/List;", "android_release"}, mv = {1, 8, 0})
public final class L6 extends RecyclerView.Adapter<M6> {
    private final a a;
    private final List<J6> b;

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\bf\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H&¢\u0006\u0004\b\u0005\u0010\tJ\u001f\u0010\u0005\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\nJ\u001f\u0010\u0005\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH&¢\u0006\u0004\b\u0005\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H&¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0005\u0010\u0011J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u000bH&¢\u0006\u0004\b\u0005\u0010\u0013¨\u0006\u0014"}, d2 = {"Lio/didomi/sdk/L6$a;", "", "", "isChecked", "", "a", "(Z)V", "Lio/didomi/sdk/J6;", "purposeListItem", "(Lio/didomi/sdk/J6;)V", "(Lio/didomi/sdk/J6;Z)V", "", "index", "Lio/didomi/sdk/o0;", "dataProcessing", "(ILio/didomi/sdk/o0;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()V", o2.h.L, "(I)V", "android_release"}, mv = {1, 8, 0})
    public interface a {
        void a();

        void a(int position);

        void a(int index, InterfaceC1847o0 dataProcessing);

        void a(J6 purposeListItem);

        void a(J6 purposeListItem, boolean isChecked);

        void a(boolean isChecked);

        void b();
    }

    @Metadata(mv = {1, 8, 0}, xi = 48)
    /* synthetic */ class b extends r implements Function1<Boolean, v> {
        b(Object obj) {
            super(1, obj, a.class, "onBulkToggled", "onBulkToggled(Z)V", 0);
        }

        public final void a(boolean z) {
            ((a) this.receiver).a(z);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(Boolean bool) {
            a(bool.booleanValue());
            return v.a;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "isChecked", "", "a", "(Z)V"}, mv = {1, 8, 0})
    static final class c extends Lambda implements Function1<Boolean, v> {
        final /* synthetic */ J6.Category b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(J6.Category category) {
            super(1);
            this.b = category;
        }

        public final void a(boolean z) {
            L6.this.a.a(this.b, z);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(Boolean bool) {
            a(bool.booleanValue());
            return v.a;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "isChecked", "", "a", "(Z)V"}, mv = {1, 8, 0})
    static final class d extends Lambda implements Function1<Boolean, v> {
        final /* synthetic */ J6.Purpose b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(J6.Purpose purpose) {
            super(1);
            this.b = purpose;
        }

        public final void a(boolean z) {
            L6.this.a.a(this.b, z);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(Boolean bool) {
            a(bool.booleanValue());
            return v.a;
        }
    }

    public L6(a callback, List<J6> list) {
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
    public static final void a(L6 this$0, int i, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            this$0.a.a(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(L6 this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.a.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(L6 this$0, J6.AdditionalDataProcessingItem item, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        this$0.a.a(item.getIndex(), item.getDataProcessing());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean a(L6 this$0, View view, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i != 21) {
            return false;
        }
        this$0.a.a();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean a(L6 this$0, View this_apply, View view, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        if (i == 21) {
            this$0.a.a();
            return true;
        }
        if (i != 22 || keyEvent.getAction() != 1) {
            return false;
        }
        this_apply.callOnClick();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean a(L6 this$0, J6.Category item, View view, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        if (i == 21) {
            this$0.a.a();
            return true;
        }
        if (i != 22 || keyEvent.getAction() != 1) {
            return false;
        }
        this$0.a.a(item);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean a(L6 this$0, J6.Purpose item, View view, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        if (i == 21) {
            this$0.a.a();
            return true;
        }
        if (i != 22 || keyEvent.getAction() != 1) {
            return false;
        }
        this$0.a.a(item);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(L6 this$0, int i, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            this$0.a.a(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean b(L6 this$0, View this_apply, View view, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        if (i == 21) {
            this$0.a.a();
            return true;
        }
        if (i != 22 || keyEvent.getAction() != 1) {
            return false;
        }
        this_apply.callOnClick();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(L6 this$0, int i, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            this$0.a.a(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(L6 this$0, int i, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            this$0.a.a(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(L6 this$0, int i, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            this$0.a.a(i);
        }
    }

    public final void a(int i) {
        notifyItemChanged(i, Boolean.TRUE);
    }

    public final void a(J6.Bulk bulk) {
        Intrinsics.checkNotNullParameter(bulk, "bulk");
        Iterator<J6> it = this.b.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            } else if (it.next() instanceof J6.Bulk) {
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

    public final void a(J6.Category categoryItem) {
        Intrinsics.checkNotNullParameter(categoryItem, "categoryItem");
        Iterator<J6> it = this.b.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            }
            J6 next = it.next();
            J6.Category category = next instanceof J6.Category ? (J6.Category) next : null;
            if (Intrinsics.areEqual(category != null ? category.getCategory() : null, categoryItem.getCategory())) {
                break;
            } else {
                i++;
            }
        }
        if (i >= 0) {
            this.b.set(i, categoryItem);
            notifyItemChanged(i);
        }
    }

    public final void a(J6.Purpose purposeItem) {
        Intrinsics.checkNotNullParameter(purposeItem, "purposeItem");
        Iterator<J6> it = this.b.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            }
            J6 next = it.next();
            J6.Purpose purpose = next instanceof J6.Purpose ? (J6.Purpose) next : null;
            if (Intrinsics.areEqual(purpose != null ? purpose.getPurpose() : null, purposeItem.getPurpose())) {
                break;
            } else {
                i++;
            }
        }
        if (i >= 0) {
            this.b.set(i, purposeItem);
            notifyItemChanged(i);
        }
    }

    public final void a(List<J6.Category> categoryItemList) {
        Intrinsics.checkNotNullParameter(categoryItemList, "categoryItemList");
        Iterator<J6> it = this.b.iterator();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                i2 = -1;
                break;
            } else if (it.next() instanceof J6.Category) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 >= 0) {
            for (Object obj : categoryItemList) {
                int i3 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                this.b.set(i + i2, (J6.Category) obj);
                i = i3;
            }
            notifyItemRangeChanged(i2, categoryItemList.size());
        }
    }

    public final void a(boolean z) {
        Iterator<J6> it = this.b.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            } else if (it.next() instanceof J6.Bulk) {
                break;
            } else {
                i++;
            }
        }
        if (i >= 0) {
            J6 j6 = this.b.get(i);
            J6.Bulk bulk = j6 instanceof J6.Bulk ? (J6.Bulk) j6 : null;
            if (bulk != null) {
                bulk.a(z);
            }
            notifyItemChanged(i);
        }
    }

    public final void b(List<J6.Purpose> purposeItemList) {
        Intrinsics.checkNotNullParameter(purposeItemList, "purposeItemList");
        Iterator<J6> it = this.b.iterator();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                i2 = -1;
                break;
            } else if (it.next() instanceof J6.Purpose) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 >= 0) {
            for (Object obj : purposeItemList) {
                int i3 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                this.b.set(i + i2, (J6.Purpose) obj);
                i = i3;
            }
            notifyItemRangeChanged(i2, purposeItemList.size());
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
        onBindViewHolder((M6) viewHolder, i, (List<Object>) list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(M6 holder, final int i) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (holder instanceof P6) {
            J6 j6 = this.b.get(i);
            Intrinsics.checkNotNull(j6, "null cannot be cast to non-null type io.didomi.sdk.purpose.ctv.model.TVPurposeItem.Title");
            ((P6) holder).a((J6.Title) j6);
            return;
        }
        if (holder instanceof D6) {
            J6 j62 = this.b.get(i);
            Intrinsics.checkNotNull(j62, "null cannot be cast to non-null type io.didomi.sdk.purpose.ctv.model.TVPurposeItem.Description");
            ((D6) holder).a((J6.Description) j62);
            return;
        }
        if (holder instanceof O6) {
            J6 j63 = this.b.get(i);
            Intrinsics.checkNotNull(j63, "null cannot be cast to non-null type io.didomi.sdk.purpose.ctv.model.TVPurposeItem.Section");
            ((O6) holder).a((J6.Section) j63);
            return;
        }
        if (holder instanceof A6) {
            View view = holder.itemView;
            view.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: io.didomi.sdk.nb
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view2, boolean z) {
                    L6.d(this.a, i, view2, z);
                }
            });
            view.setOnKeyListener(new View.OnKeyListener() { // from class: io.didomi.sdk.gb
                @Override // android.view.View.OnKeyListener
                public final boolean onKey(View view2, int i2, KeyEvent keyEvent) {
                    return L6.a(this.a, view2, i2, keyEvent);
                }
            });
            J6 j64 = this.b.get(i);
            Intrinsics.checkNotNull(j64, "null cannot be cast to non-null type io.didomi.sdk.purpose.ctv.model.TVPurposeItem.Bulk");
            ((A6) holder).a((J6.Bulk) j64, new b(this.a));
            return;
        }
        if (holder instanceof C1803j6) {
            J6 j65 = this.b.get(i);
            Intrinsics.checkNotNull(j65, "null cannot be cast to non-null type io.didomi.sdk.purpose.ctv.model.TVPurposeItem.Category");
            final J6.Category category = (J6.Category) j65;
            View view2 = holder.itemView;
            view2.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: io.didomi.sdk.jb
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view3, boolean z) {
                    L6.e(this.a, i, view3, z);
                }
            });
            view2.setOnKeyListener(new View.OnKeyListener() { // from class: io.didomi.sdk.qb
                @Override // android.view.View.OnKeyListener
                public final boolean onKey(View view3, int i2, KeyEvent keyEvent) {
                    return L6.a(this.a, category, view3, i2, keyEvent);
                }
            });
            ((C1803j6) holder).a(category, new c(category));
            return;
        }
        if (holder instanceof K6) {
            J6 j66 = this.b.get(i);
            Intrinsics.checkNotNull(j66, "null cannot be cast to non-null type io.didomi.sdk.purpose.ctv.model.TVPurposeItem.Purpose");
            final J6.Purpose purpose = (J6.Purpose) j66;
            View view3 = holder.itemView;
            view3.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: io.didomi.sdk.lb
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view4, boolean z) {
                    L6.a(this.a, i, view4, z);
                }
            });
            view3.setOnKeyListener(new View.OnKeyListener() { // from class: io.didomi.sdk.ib
                @Override // android.view.View.OnKeyListener
                public final boolean onKey(View view4, int i2, KeyEvent keyEvent) {
                    return L6.a(this.a, purpose, view4, i2, keyEvent);
                }
            });
            ((K6) holder).a(purpose, new d(purpose));
            return;
        }
        if (holder instanceof C1923v6) {
            J6 j67 = this.b.get(i);
            Intrinsics.checkNotNull(j67, "null cannot be cast to non-null type io.didomi.sdk.purpose.ctv.model.TVPurposeItem.AdditionalDataProcessingHeader");
            ((C1923v6) holder).a((J6.AdditionalDataProcessingHeader) j67);
            return;
        }
        if (holder instanceof C1933w6) {
            J6 j68 = this.b.get(i);
            Intrinsics.checkNotNull(j68, "null cannot be cast to non-null type io.didomi.sdk.purpose.ctv.model.TVPurposeItem.AdditionalDataProcessingItem");
            final J6.AdditionalDataProcessingItem additionalDataProcessingItem = (J6.AdditionalDataProcessingItem) j68;
            final View view4 = holder.itemView;
            view4.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.mb
                @Override // android.view.View.OnClickListener
                public final void onClick(View view5) {
                    L6.a(this.a, additionalDataProcessingItem, view5);
                }
            });
            view4.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: io.didomi.sdk.ob
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view5, boolean z) {
                    L6.b(this.a, i, view5, z);
                }
            });
            view4.setOnKeyListener(new View.OnKeyListener() { // from class: io.didomi.sdk.rb
                @Override // android.view.View.OnKeyListener
                public final boolean onKey(View view5, int i2, KeyEvent keyEvent) {
                    return L6.a(this.a, view4, view5, i2, keyEvent);
                }
            });
            ((C1933w6) holder).a(additionalDataProcessingItem);
            return;
        }
        if (holder instanceof N6) {
            J6 j69 = this.b.get(i);
            Intrinsics.checkNotNull(j69, "null cannot be cast to non-null type io.didomi.sdk.purpose.ctv.model.TVPurposeItem.SdkStorageDisclosureItem");
            final View view5 = holder.itemView;
            view5.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.hb
                @Override // android.view.View.OnClickListener
                public final void onClick(View view6) {
                    L6.a(this.a, view6);
                }
            });
            view5.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: io.didomi.sdk.sb
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view6, boolean z) {
                    L6.c(this.a, i, view6, z);
                }
            });
            view5.setOnKeyListener(new View.OnKeyListener() { // from class: io.didomi.sdk.pb
                @Override // android.view.View.OnKeyListener
                public final boolean onKey(View view6, int i2, KeyEvent keyEvent) {
                    return L6.b(this.a, view5, view6, i2, keyEvent);
                }
            });
            ((N6) holder).a((J6.SdkStorageDisclosureItem) j69);
        }
    }

    public void onBindViewHolder(M6 holder, int i, List<Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        if (payloads.isEmpty()) {
            onBindViewHolder(holder, i);
        } else {
            final View view = holder.itemView;
            view.post(new Runnable() { // from class: io.didomi.sdk.kb
                @Override // java.lang.Runnable
                public final void run() {
                    L6.a(view);
                }
            });
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public M6 onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        switch (i) {
            case 0:
                M1 m1A = M1.a(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(m1A, "inflate(LayoutInflater.f….context), parent, false)");
                return new G6(m1A);
            case 1:
                N1 n1A = N1.a(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(n1A, "inflate(LayoutInflater.f….context), parent, false)");
                return new I6(n1A);
            case 2:
                R1 r1A = R1.a(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(r1A, "inflate(LayoutInflater.f….context), parent, false)");
                return new P6(r1A);
            case 3:
                L1 l1A = L1.a(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(l1A, "inflate(LayoutInflater.f….context), parent, false)");
                return new D6(l1A);
            case 4:
            default:
                throw new ClassCastException("Unknown viewType " + i);
            case 5:
                Q1 q1A = Q1.a(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(q1A, "inflate(LayoutInflater.f….context), parent, false)");
                return new O6(q1A);
            case 6:
                I1 i1A = I1.a(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(i1A, "inflate(LayoutInflater.f….context), parent, false)");
                return new A6(i1A);
            case 7:
                O1 o1A = O1.a(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(o1A, "inflate(LayoutInflater.f….context), parent, false)");
                return new C1803j6(o1A);
            case 8:
                O1 o1A2 = O1.a(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(o1A2, "inflate(LayoutInflater.f….context), parent, false)");
                return new K6(o1A2);
            case 9:
                J1 j1A = J1.a(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(j1A, "inflate(LayoutInflater.f….context), parent, false)");
                return new C1923v6(j1A);
            case 10:
                K1 k1A = K1.a(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(k1A, "inflate(LayoutInflater.f….context), parent, false)");
                return new C1933w6(k1A);
            case 11:
                P1 p1A = P1.a(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(p1A, "inflate(LayoutInflater.f….context), parent, false)");
                return new N6(p1A);
            case 12:
                C1 c1A = C1.a(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(c1A, "inflate(LayoutInflater.f….context), parent, false)");
                return new H6(c1A);
        }
    }
}
