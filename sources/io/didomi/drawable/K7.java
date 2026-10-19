package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.V7;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001fB\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ-\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\n2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u0005H\u0016¢\u0006\u0004\b\u001a\u0010\u001eJ\u0015\u0010\u001f\u001a\u00020\u00192\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u001f\u0010 J\u001b\u0010\u001f\u001a\u00020\u00192\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00060!¢\u0006\u0004\b\u001f\u0010#R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010$R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006'"}, d2 = {"Lio/didomi/sdk/K7;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lio/didomi/sdk/Y7;", "Lio/didomi/sdk/K7$a;", "callback", "", "Lio/didomi/sdk/V7;", "list", "<init>", "(Lio/didomi/sdk/K7$a;Ljava/util/List;)V", "", "getItemCount", "()I", o2.h.L, "", "getItemId", "(I)J", "getItemViewType", "(I)I", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "(Landroid/view/ViewGroup;I)Lio/didomi/sdk/Y7;", "holder", "", "onBindViewHolder", "(Lio/didomi/sdk/Y7;I)V", "", "payloads", "(Lio/didomi/sdk/Y7;ILjava/util/List;)V", "a", "(I)V", "", "deviceStorageDisclosureList", "(Ljava/util/List;)V", "Lio/didomi/sdk/K7$a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/util/List;", "android_release"}, mv = {1, 8, 0})
public final class K7 extends RecyclerView.Adapter<Y7> {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final a callback;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final List<V7> list;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H&¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H&¢\u0006\u0004\b\u0007\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH&¢\u0006\u0004\b\u0007\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H&¢\u0006\u0004\b\u000b\u0010\u0004J\u0017\u0010\f\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH&¢\u0006\u0004\b\f\u0010\nJ\u000f\u0010\r\u001a\u00020\u0002H&¢\u0006\u0004\b\r\u0010\u0004J\u000f\u0010\f\u001a\u00020\u0002H&¢\u0006\u0004\b\f\u0010\u0004J\u0017\u0010\f\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH&¢\u0006\u0004\b\f\u0010\u0010J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H&¢\u0006\u0004\b\u0007\u0010\u0013J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u000eH&¢\u0006\u0004\b\u0007\u0010\u0010¨\u0006\u0015"}, d2 = {"Lio/didomi/sdk/K7$a;", "", "", "e", "()V", InneractiveMediationDefs.GENDER_FEMALE, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "a", "", "isChecked", "(Z)V", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "g", "", "index", "(I)V", "", "id", "(Ljava/lang/String;)V", o2.h.L, "android_release"}, mv = {1, 8, 0})
    public interface a {
        void a();

        void a(int position);

        void a(String id);

        void a(boolean isChecked);

        void b();

        void b(int index);

        void b(boolean isChecked);

        void c();

        void d();

        void e();

        void f();

        void g();
    }

    public K7(a callback, List<V7> list) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(list, "list");
        this.callback = callback;
        this.list = list;
        setHasStableIds(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(View this_apply) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(K7 this$0, int i, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            this$0.callback.a(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(K7 this$0, int i, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            this$0.callback.a(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(K7 this$0, int i, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            this$0.callback.a(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(K7 this$0, int i, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            this$0.callback.a(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(K7 this$0, int i, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            this$0.callback.a(i);
        }
    }

    public final void a(int position) {
        notifyItemChanged(position, Boolean.TRUE);
    }

    public final void a(List<? extends V7> deviceStorageDisclosureList) {
        Intrinsics.checkNotNullParameter(deviceStorageDisclosureList, "deviceStorageDisclosureList");
        if (deviceStorageDisclosureList.isEmpty()) {
            return;
        }
        int size = this.list.size() - 1;
        this.list.addAll(size, deviceStorageDisclosureList);
        notifyItemRangeInserted(size, deviceStorageDisclosureList.size());
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
    public /* bridge */ /* synthetic */ void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i, List list) {
        onBindViewHolder((Y7) viewHolder, i, (List<Object>) list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(Y7 holder, final int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (holder instanceof R7) {
            V7 v7 = this.list.get(position);
            Intrinsics.checkNotNull(v7, "null cannot be cast to non-null type io.didomi.sdk.vendors.ctv.model.TVVendorDetailItem.Disclaimer");
            ((R7) holder).a((V7.Disclaimer) v7);
            return;
        }
        if (holder instanceof L7) {
            a aVar = this.callback;
            V7 v72 = this.list.get(position);
            Intrinsics.checkNotNull(v72, "null cannot be cast to non-null type io.didomi.sdk.vendors.ctv.model.TVVendorDetailItem.ArrowLink");
            ((L7) holder).a(aVar, (V7.ArrowLink) v72);
            holder.itemView.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: io.didomi.sdk.bb
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean z) {
                    K7.a(this.a, position, view, z);
                }
            });
            return;
        }
        if (holder instanceof X7) {
            V7 v73 = this.list.get(position);
            Intrinsics.checkNotNull(v73, "null cannot be cast to non-null type io.didomi.sdk.vendors.ctv.model.TVVendorDetailItem.SectionTitle");
            ((X7) holder).a((V7.SectionTitle) v73);
            return;
        }
        if (holder instanceof M7) {
            V7 v74 = this.list.get(position);
            Intrinsics.checkNotNull(v74, "null cannot be cast to non-null type io.didomi.sdk.vendors.ctv.model.TVVendorDetailItem.Consent");
            ((M7) holder).a((V7.Consent) v74, this.callback);
            holder.itemView.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: io.didomi.sdk.za
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean z) {
                    K7.b(this.a, position, view, z);
                }
            });
            return;
        }
        if (holder instanceof W7) {
            V7 v75 = this.list.get(position);
            Intrinsics.checkNotNull(v75, "null cannot be cast to non-null type io.didomi.sdk.vendors.ctv.model.TVVendorDetailItem.LegitimateInterest");
            ((W7) holder).a((V7.LegitimateInterest) v75, this.callback);
            holder.itemView.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: io.didomi.sdk.xa
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean z) {
                    K7.c(this.a, position, view, z);
                }
            });
            return;
        }
        if (holder instanceof N7) {
            V7 v76 = this.list.get(position);
            Intrinsics.checkNotNull(v76, "null cannot be cast to non-null type io.didomi.sdk.vendors.ctv.model.TVVendorDetailItem.Cookie");
            ((N7) holder).a((V7.Cookie) v76);
            return;
        }
        if (holder instanceof Q7) {
            V7 v77 = this.list.get(position);
            Intrinsics.checkNotNull(v77, "null cannot be cast to non-null type io.didomi.sdk.vendors.ctv.model.TVVendorDetailItem.DeviceStorageDisclosureTitle");
            ((Q7) holder).a((V7.DeviceStorageDisclosureTitle) v77);
        } else {
            if (holder instanceof P7) {
                V7 v78 = this.list.get(position);
                Intrinsics.checkNotNull(v78, "null cannot be cast to non-null type io.didomi.sdk.vendors.ctv.model.TVVendorDetailItem.DeviceStorageDisclosure");
                ((P7) holder).a((V7.DeviceStorageDisclosure) v78, this.callback);
                holder.itemView.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: io.didomi.sdk.ab
                    @Override // android.view.View.OnFocusChangeListener
                    public final void onFocusChange(View view, boolean z) {
                        K7.d(this.a, position, view, z);
                    }
                });
                return;
            }
            if (holder instanceof O7) {
                V7 v79 = this.list.get(position);
                Intrinsics.checkNotNull(v79, "null cannot be cast to non-null type io.didomi.sdk.vendors.ctv.model.TVVendorDetailItem.DataCategory");
                ((O7) holder).a((V7.DataCategory) v79, this.callback);
                holder.itemView.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: io.didomi.sdk.cb
                    @Override // android.view.View.OnFocusChangeListener
                    public final void onFocusChange(View view, boolean z) {
                        K7.e(this.a, position, view, z);
                    }
                });
            }
        }
    }

    public void onBindViewHolder(Y7 holder, int position, List<Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        if (payloads.isEmpty()) {
            onBindViewHolder(holder, position);
        } else {
            final View view = holder.itemView;
            view.post(new Runnable() { // from class: io.didomi.sdk.ya
                @Override // java.lang.Runnable
                public final void run() {
                    K7.a(view);
                }
            });
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public Y7 onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        switch (viewType) {
            case 1:
                C1749e2 c1749e2A = C1749e2.a(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(c1749e2A, "inflate(LayoutInflater.f….context), parent, false)");
                return new R7(c1749e2A);
            case 2:
                C1719b2 c1719b2A = C1719b2.a(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(c1719b2A, "inflate(LayoutInflater.f….context), parent, false)");
                return new L7(c1719b2A);
            case 3:
            case 7:
            case 8:
            default:
                throw new ClassCastException("Unknown viewType " + viewType);
            case 4:
                C1769g2 c1769g2A = C1769g2.a(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(c1769g2A, "inflate(LayoutInflater.f….context), parent, false)");
                return new X7(c1769g2A);
            case 5:
                C1729c2 c1729c2A = C1729c2.a(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(c1729c2A, "inflate(LayoutInflater.f….context), parent, false)");
                return new M7(c1729c2A);
            case 6:
                C1759f2 c1759f2A = C1759f2.a(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(c1759f2A, "inflate(LayoutInflater.f….context), parent, false)");
                return new W7(c1759f2A);
            case 9:
                C1739d2 c1739d2A = C1739d2.a(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(c1739d2A, "inflate(LayoutInflater.f….context), parent, false)");
                return new N7(c1739d2A);
            case 10:
                C1769g2 c1769g2A2 = C1769g2.a(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(c1769g2A2, "inflate(LayoutInflater.f….context), parent, false)");
                return new Q7(c1769g2A2);
            case 11:
                C1719b2 c1719b2A2 = C1719b2.a(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(c1719b2A2, "inflate(LayoutInflater.f….context), parent, false)");
                return new P7(c1719b2A2);
            case 12:
                C1719b2 c1719b2A3 = C1719b2.a(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(c1719b2A3, "inflate(LayoutInflater.f….context), parent, false)");
                return new O7(c1719b2A3);
            case 13:
                C1 c1A = C1.a(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(c1A, "inflate(LayoutInflater.f….context), parent, false)");
                return new S7(c1A);
        }
    }
}
