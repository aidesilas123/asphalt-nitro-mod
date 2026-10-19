package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.json.o2;
import io.didomi.drawable.W6;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0018\u0010\u0019R\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lio/didomi/sdk/Q6;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lio/didomi/sdk/Y6;", "", "Lio/didomi/sdk/W6;", "list", "<init>", "(Ljava/util/List;)V", "", "getItemCount", "()I", o2.h.L, "", "getItemId", "(I)J", "getItemViewType", "(I)I", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "(Landroid/view/ViewGroup;I)Lio/didomi/sdk/Y6;", "holder", "", "onBindViewHolder", "(Lio/didomi/sdk/Y6;I)V", "a", "Ljava/util/List;", "android_release"}, mv = {1, 8, 0})
public final class Q6 extends RecyclerView.Adapter<Y6> {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final List<W6> list;

    /* JADX WARN: Multi-variable type inference failed */
    public Q6(List<? extends W6> list) {
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
    public void onBindViewHolder(Y6 holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (holder instanceof R6) {
            W6 w6 = this.list.get(position);
            Intrinsics.checkNotNull(w6, "null cannot be cast to non-null type io.didomi.sdk.purpose.ctv.model.TVPurposeVendorsList.Content");
            ((R6) holder).a((W6.Content) w6);
        } else if (holder instanceof X6) {
            W6 w62 = this.list.get(position);
            Intrinsics.checkNotNull(w62, "null cannot be cast to non-null type io.didomi.sdk.purpose.ctv.model.TVPurposeVendorsList.Title");
            ((X6) holder).a((W6.Title) w62);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public Y6 onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (viewType == 0) {
            T1 t1A = T1.a(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(t1A, "inflate(LayoutInflater.f….context), parent, false)");
            return new V6(t1A);
        }
        if (viewType == 1) {
            U1 u1A = U1.a(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(u1A, "inflate(LayoutInflater.f….context), parent, false)");
            return new X6(u1A);
        }
        if (viewType == 2) {
            S1 s1A = S1.a(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(s1A, "inflate(LayoutInflater.f….context), parent, false)");
            return new R6(s1A);
        }
        if (viewType == 100) {
            C1 c1A = C1.a(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(c1A, "inflate(LayoutInflater.f….context), parent, false)");
            return new S6(c1A);
        }
        throw new ClassCastException("Unknown viewType " + viewType);
    }
}
