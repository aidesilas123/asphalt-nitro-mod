package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001cB%\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\fH\u0016¢\u0006\u0004\b\u001a\u0010\u001bR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!¨\u0006\""}, d2 = {"Lio/didomi/sdk/A0;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lio/didomi/sdk/B0;", "Lio/didomi/sdk/A0$a;", "callback", "", "Lio/didomi/sdk/y0;", "list", "Lio/didomi/sdk/z8;", "themeProvider", "<init>", "(Lio/didomi/sdk/A0$a;Ljava/util/List;Lio/didomi/sdk/z8;)V", "", "getItemCount", "()I", o2.h.L, "", "getItemId", "(I)J", "holder", "", "onBindViewHolder", "(Lio/didomi/sdk/B0;I)V", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "(Landroid/view/ViewGroup;I)Lio/didomi/sdk/B0;", "a", "Lio/didomi/sdk/A0$a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/util/List;", "c", "Lio/didomi/sdk/z8;", "android_release"}, mv = {1, 8, 0})
public final class A0 extends RecyclerView.Adapter<B0> {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final a callback;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final List<DeviceStorageDisclosureItem> list;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final C1965z8 themeProvider;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lio/didomi/sdk/A0$a;", "", "", "index", "", "a", "(I)V", "android_release"}, mv = {1, 8, 0})
    public interface a {
        void a(int index);
    }

    public A0(a callback, List<DeviceStorageDisclosureItem> list, C1965z8 themeProvider) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(themeProvider, "themeProvider");
        this.callback = callback;
        this.list = list;
        this.themeProvider = themeProvider;
        setHasStableIds(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(A0 this$0, int i, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.callback.a(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int position) {
        return this.list.get(position).getId();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(B0 holder, final int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        holder.a(this.list.get(position));
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.n9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                A0.a(this.a, position, view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public B0 onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        C1858p1 c1858p1A = C1858p1.a(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(c1858p1A, "inflate(LayoutInflater.f….context), parent, false)");
        return new B0(c1858p1A, this.themeProvider);
    }
}
