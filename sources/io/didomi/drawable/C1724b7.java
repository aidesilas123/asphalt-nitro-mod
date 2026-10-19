package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.AbstractC1943x6;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.b7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001cB\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001a\u0010\u001bR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006 "}, d2 = {"Lio/didomi/sdk/b7;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lio/didomi/sdk/i7;", "Lio/didomi/sdk/b7$a;", "callback", "", "Lio/didomi/sdk/x6;", "list", "<init>", "(Lio/didomi/sdk/b7$a;Ljava/util/List;)V", "", "getItemCount", "()I", o2.h.L, "", "getItemId", "(I)J", "getItemViewType", "(I)I", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "(Landroid/view/ViewGroup;I)Lio/didomi/sdk/i7;", "holder", "", "onBindViewHolder", "(Lio/didomi/sdk/i7;I)V", "a", "Lio/didomi/sdk/b7$a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/util/List;", "android_release"}, mv = {1, 8, 0})
public final class C1724b7 extends RecyclerView.Adapter<AbstractC1794i7> {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final a callback;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final List<AbstractC1943x6> list;

    /* JADX INFO: renamed from: io.didomi.sdk.b7$a */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H&¢\u0006\u0004\b\u0005\u0010\t¨\u0006\n"}, d2 = {"Lio/didomi/sdk/b7$a;", "", "Lio/didomi/sdk/d9;", "listType", "", "a", "(Lio/didomi/sdk/d9;)V", "", o2.h.L, "(I)V", "android_release"}, mv = {1, 8, 0})
    public interface a {
        void a(int position);

        void a(d9 listType);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C1724b7(a callback, List<? extends AbstractC1943x6> list) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(list, "list");
        this.callback = callback;
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
    public void onBindViewHolder(AbstractC1794i7 holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (holder instanceof C1734c7) {
            AbstractC1943x6 abstractC1943x6 = this.list.get(position);
            Intrinsics.checkNotNull(abstractC1943x6, "null cannot be cast to non-null type io.didomi.sdk.purpose.ctv.model.TVPurposeAdditionalInfo.AdditionalDescription");
            ((C1734c7) holder).a((AbstractC1943x6.AdditionalDescription) abstractC1943x6);
            return;
        }
        if (holder instanceof C1774g7) {
            AbstractC1943x6 abstractC1943x62 = this.list.get(position);
            Intrinsics.checkNotNull(abstractC1943x62, "null cannot be cast to non-null type io.didomi.sdk.purpose.ctv.model.TVPurposeAdditionalInfo.Title");
            ((C1774g7) holder).a((AbstractC1943x6.Title) abstractC1943x62);
        } else if (holder instanceof C1764f7) {
            AbstractC1943x6 abstractC1943x63 = this.list.get(position);
            Intrinsics.checkNotNull(abstractC1943x63, "null cannot be cast to non-null type io.didomi.sdk.purpose.ctv.model.TVPurposeAdditionalInfo.Subtitle");
            ((C1764f7) holder).a((AbstractC1943x6.Subtitle) abstractC1943x63);
        } else if (holder instanceof C1784h7) {
            a aVar = this.callback;
            AbstractC1943x6 abstractC1943x64 = this.list.get(position);
            Intrinsics.checkNotNull(abstractC1943x64, "null cannot be cast to non-null type io.didomi.sdk.purpose.ctv.model.TVPurposeAdditionalInfo.VendorsCount");
            ((C1784h7) holder).a(aVar, position, (AbstractC1943x6.VendorsCount) abstractC1943x64);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public AbstractC1794i7 onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (viewType == 100) {
            C1 c1A = C1.a(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(c1A, "inflate(LayoutInflater.f….context), parent, false)");
            return new C1744d7(c1A);
        }
        if (viewType == 0) {
            E1 e1A = E1.a(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(e1A, "inflate(LayoutInflater.f….context), parent, false)");
            return new C1754e7(e1A);
        }
        if (viewType == 1) {
            G1 g1A = G1.a(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(g1A, "inflate(LayoutInflater.f….context), parent, false)");
            return new C1774g7(g1A);
        }
        if (viewType == 2) {
            F1 f1A = F1.a(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(f1A, "inflate(LayoutInflater.f….context), parent, false)");
            return new C1764f7(f1A);
        }
        if (viewType == 3) {
            D1 d1A = D1.a(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(d1A, "inflate(LayoutInflater.f….context), parent, false)");
            return new C1734c7(d1A);
        }
        if (viewType == 4) {
            H1 h1A = H1.a(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(h1A, "inflate(LayoutInflater.f….context), parent, false)");
            return new C1784h7(h1A);
        }
        throw new ClassCastException("Unknown viewType " + viewType);
    }
}
