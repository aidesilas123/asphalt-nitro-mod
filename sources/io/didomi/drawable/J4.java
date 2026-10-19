package io.didomi.drawable;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \"2\u00020\u0001:\u0001\rB+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000f\u0010\u000eJ'\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u0019R\u0014\u0010\b\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0019R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006#"}, d2 = {"Lio/didomi/sdk/J4;", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "Landroid/content/Context;", "context", "Lio/didomi/sdk/z8;", "themeProvider", "", "dividerForCategoryHeader", "topDividerForSdkStorageDisclosure", "<init>", "(Landroid/content/Context;Lio/didomi/sdk/z8;ZZ)V", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "viewHolder", "a", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/graphics/Canvas;", "canvas", "Landroidx/recyclerview/widget/RecyclerView;", "parent", "Landroidx/recyclerview/widget/RecyclerView$State;", "state", "", "onDrawOver", "(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V", "Z", "Landroid/graphics/drawable/ColorDrawable;", "c", "Landroid/graphics/drawable/ColorDrawable;", "divider", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "paddingHorizontal", "e", "android_release"}, mv = {1, 8, 0})
public final class J4 extends RecyclerView.ItemDecoration {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final boolean dividerForCategoryHeader;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final boolean topDividerForSdkStorageDisclosure;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final ColorDrawable divider;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final int paddingHorizontal;

    public J4(Context context, C1965z8 themeProvider, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(themeProvider, "themeProvider");
        this.dividerForCategoryHeader = z;
        this.topDividerForSdkStorageDisclosure = z2;
        this.divider = new ColorDrawable(ContextCompat.getColor(context, themeProvider.t() ? R.color.didomi_dark_divider : R.color.didomi_light_divider));
        this.paddingHorizontal = context.getResources().getDimensionPixelSize(R.dimen.didomi_list_item_horizontal_padding);
    }

    public /* synthetic */ J4(Context context, C1965z8 c1965z8, boolean z, boolean z2, int i, n nVar) {
        this(context, c1965z8, (i & 4) != 0 ? false : z, (i & 8) != 0 ? false : z2);
    }

    private final boolean a(RecyclerView.ViewHolder viewHolder) {
        return (viewHolder instanceof K4) || (viewHolder instanceof C1851o4) || ((viewHolder instanceof C1891s4) && this.dividerForCategoryHeader) || (viewHolder instanceof O5) || (viewHolder instanceof N5) || (viewHolder instanceof K5) || (viewHolder instanceof J5) || (viewHolder instanceof M4);
    }

    private final boolean b(RecyclerView.ViewHolder viewHolder) {
        return (viewHolder instanceof K5) || ((viewHolder instanceof M4) && this.topDividerForSdkStorageDisclosure);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDrawOver(Canvas canvas, RecyclerView parent, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(state, "state");
        int paddingStart = parent.getPaddingStart() + this.paddingHorizontal;
        int width = (parent.getWidth() - parent.getPaddingEnd()) - this.paddingHorizontal;
        int childCount = parent.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = parent.getChildAt(i);
            Intrinsics.checkNotNullExpressionValue(childAt, "parent.getChildAt(i)");
            RecyclerView.ViewHolder viewHolder = parent.getChildViewHolder(childAt);
            Intrinsics.checkNotNullExpressionValue(viewHolder, "viewHolder");
            if (a(viewHolder)) {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams");
                int bottom = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) layoutParams)).bottomMargin;
                this.divider.setBounds(paddingStart, bottom, width, bottom + 1);
                this.divider.draw(canvas);
            }
            if (b(viewHolder)) {
                int top = childAt.getTop();
                this.divider.setBounds(paddingStart, top, width, top + 1);
                this.divider.draw(canvas);
            }
        }
    }
}
