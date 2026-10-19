package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.json.o2;
import io.didomi.drawable.A7;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.u7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0018\u0010\u0019R\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lio/didomi/sdk/u7;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lio/didomi/sdk/C7;", "", "Lio/didomi/sdk/A7;", "list", "<init>", "(Ljava/util/List;)V", "", "getItemCount", "()I", o2.h.L, "", "getItemId", "(I)J", "getItemViewType", "(I)I", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "(Landroid/view/ViewGroup;I)Lio/didomi/sdk/C7;", "holder", "", "onBindViewHolder", "(Lio/didomi/sdk/C7;I)V", "a", "Ljava/util/List;", "android_release"}, mv = {1, 8, 0})
public final class C1914u7 extends RecyclerView.Adapter<C7> {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final List<A7> list;

    /* JADX WARN: Multi-variable type inference failed */
    public C1914u7(List<? extends A7> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.list = list;
        setHasStableIds(true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int position) {
        return this.list.get(position).a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        return this.list.get(position).getTypeId();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(C7 holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (holder instanceof B7) {
            A7 a7 = this.list.get(position);
            Intrinsics.checkNotNull(a7, "null cannot be cast to non-null type io.didomi.sdk.vendors.ctv.model.TVVendorAdditionalInfoItem.Title");
            ((B7) holder).a((A7.Title) a7);
        } else if (holder instanceof C1924v7) {
            A7 a72 = this.list.get(position);
            Intrinsics.checkNotNull(a72, "null cannot be cast to non-null type io.didomi.sdk.vendors.ctv.model.TVVendorAdditionalInfoItem.Description");
            ((C1924v7) holder).a((A7.Description) a72);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public C7 onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (viewType == 1) {
            X1 x1A = X1.a(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(x1A, "inflate(LayoutInflater.f….context), parent, false)");
            return new C1964z7(x1A);
        }
        if (viewType == 2) {
            Y1 y1A = Y1.a(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(y1A, "inflate(LayoutInflater.f….context), parent, false)");
            return new B7(y1A);
        }
        if (viewType == 3) {
            V1 v1A = V1.a(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(v1A, "inflate(LayoutInflater.f….context), parent, false)");
            return new C1924v7(v1A);
        }
        if (viewType == 4) {
            W1 w1A = W1.a(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(w1A, "inflate(LayoutInflater.f….context), parent, false)");
            return new C1934w7(w1A);
        }
        throw new ClassCastException("Unknown viewType " + viewType);
    }
}
