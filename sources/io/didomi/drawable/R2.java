package io.didomi.drawable;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

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
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B<\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012!\u0010\u000b\u001a\u001d\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00040\u0006¢\u0006\u0004\b\f\u0010\rJ!\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J'\u0010\u000f\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000f\u0010\u0016J/\u0010\u000f\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000f\u0010\u001aJ!\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000f\u0010\u001cJ\u001f\u0010\u000f\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u000f\u0010\u001fJ\u0017\u0010\u000f\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000f\u0010 J'\u0010#\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b#\u0010$R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010%R/\u0010\u000b\u001a\u001d\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00040\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R$\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020)\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010*¨\u0006+"}, d2 = {"Lio/didomi/sdk/R2;", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "Landroidx/recyclerview/widget/RecyclerView;", "parent", "", "shouldFadeOutHeader", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "itemPosition", "isHeader", "<init>", "(Landroidx/recyclerview/widget/RecyclerView;ZLkotlin/jvm/functions/Function1;)V", "Landroid/view/View;", "a", "(ILandroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;", "Landroid/graphics/Canvas;", "canvas", "header", "paddingTop", "", "(Landroid/graphics/Canvas;Landroid/view/View;I)V", "c", "currentHeader", "nextHeader", "(Landroid/graphics/Canvas;Landroid/view/View;Landroid/view/View;I)V", "contactPoint", "(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/view/View;", "Landroid/view/ViewGroup;", "view", "(Landroid/view/ViewGroup;Landroid/view/View;)V", "(I)I", "Landroidx/recyclerview/widget/RecyclerView$State;", "state", "onDrawOver", "(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V", "Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/jvm/functions/Function1;", "Lkotlin/Pair;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lkotlin/Pair;", "android_release"}, mv = {1, 8, 0})
public final class R2 extends RecyclerView.ItemDecoration {
    private final boolean a;
    private final Function1<Integer, Boolean> b;
    private Pair<Integer, ? extends RecyclerView.ViewHolder> c;

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"io/didomi/sdk/R2$a", "Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;", "", "onChanged", "()V", "android_release"}, mv = {1, 8, 0})
    public static final class a extends RecyclerView.AdapterDataObserver {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            R2.this.c = null;
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"io/didomi/sdk/R2$b", "Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "Landroid/view/MotionEvent;", "motionEvent", "", "onInterceptTouchEvent", "(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z", "android_release"}, mv = {1, 8, 0})
    public static final class b extends RecyclerView.SimpleOnItemTouchListener {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.SimpleOnItemTouchListener, androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            RecyclerView.ViewHolder viewHolder;
            View view;
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
            if (motionEvent.getAction() != 0) {
                return false;
            }
            float y = motionEvent.getY();
            Pair pair = R2.this.c;
            return y <= ((float) ((pair == null || (viewHolder = (RecyclerView.ViewHolder) pair.g()) == null || (view = viewHolder.itemView) == null) ? 0 : view.getBottom()));
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u000f\u001a\u00020\f2\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0003H\n¢\u0006\u0004\b\r\u0010\u000e"}, d2 = {"Landroid/view/View;", "kotlin.jvm.PlatformType", "view", "", "<anonymous parameter 1>", "<anonymous parameter 2>", "<anonymous parameter 3>", "<anonymous parameter 4>", "<anonymous parameter 5>", "<anonymous parameter 6>", "<anonymous parameter 7>", "<anonymous parameter 8>", "", "onLayoutChange", "(Landroid/view/View;IIIIIIII)V", "<anonymous>"}, mv = {1, 8, 0})
    public static final class c implements View.OnLayoutChangeListener {
        public c() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            Intrinsics.checkNotNullExpressionValue(view, "view");
            R2.this.c = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public R2(RecyclerView parent, boolean z, Function1<? super Integer, Boolean> isHeader) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(isHeader, "isHeader");
        this.a = z;
        this.b = isHeader;
        RecyclerView.Adapter adapter = parent.getAdapter();
        if (adapter != null) {
            adapter.registerAdapterDataObserver(new a());
        }
        parent.addOnLayoutChangeListener(new c());
        parent.addOnItemTouchListener(new b());
    }

    public /* synthetic */ R2(RecyclerView recyclerView, boolean z, Function1 function1, int i, n nVar) {
        this(recyclerView, (i & 2) != 0 ? false : z, function1);
    }

    private final int a(int i) {
        while (!this.b.invoke(Integer.valueOf(i)).booleanValue()) {
            i--;
            if (i < 0) {
                return -1;
            }
        }
        return i;
    }

    private final View a(int i, RecyclerView recyclerView) {
        int iA;
        RecyclerView.Adapter adapter;
        Pair<Integer, ? extends RecyclerView.ViewHolder> pair;
        RecyclerView.ViewHolder viewHolderG;
        RecyclerView.ViewHolder viewHolderG2;
        if (recyclerView.getAdapter() == null || (iA = a(i)) == -1 || (adapter = recyclerView.getAdapter()) == null) {
            return null;
        }
        int itemViewType = adapter.getItemViewType(iA);
        Pair<Integer, ? extends RecyclerView.ViewHolder> pair2 = this.c;
        if (pair2 != null && pair2.f().intValue() == iA && (pair = this.c) != null && (viewHolderG = pair.g()) != null && viewHolderG.getItemViewType() == itemViewType) {
            Pair<Integer, ? extends RecyclerView.ViewHolder> pair3 = this.c;
            if (pair3 == null || (viewHolderG2 = pair3.g()) == null) {
                return null;
            }
            return viewHolderG2.itemView;
        }
        RecyclerView.Adapter adapter2 = recyclerView.getAdapter();
        RecyclerView.ViewHolder viewHolderCreateViewHolder = adapter2 != null ? adapter2.createViewHolder(recyclerView, itemViewType) : null;
        if (viewHolderCreateViewHolder != null) {
            RecyclerView.Adapter adapter3 = recyclerView.getAdapter();
            if (adapter3 != null) {
                adapter3.onBindViewHolder(viewHolderCreateViewHolder, iA);
            }
            View view = viewHolderCreateViewHolder.itemView;
            Intrinsics.checkNotNullExpressionValue(view, "headerHolder.itemView");
            a(recyclerView, view);
            this.c = TuplesKt.to(Integer.valueOf(iA), viewHolderCreateViewHolder);
        }
        if (viewHolderCreateViewHolder != null) {
            return viewHolderCreateViewHolder.itemView;
        }
        return null;
    }

    private final View a(RecyclerView recyclerView, int i) {
        int childCount = recyclerView.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = recyclerView.getChildAt(i2);
            Rect rect = new Rect();
            recyclerView.getDecoratedBoundsWithMargins(childAt, rect);
            if (rect.bottom > i && rect.top <= i) {
                return childAt;
            }
        }
        return null;
    }

    private final void a(Canvas canvas, View view, int i) {
        canvas.save();
        canvas.translate(0.0f, i);
        view.draw(canvas);
        canvas.restore();
    }

    private final void a(Canvas canvas, View view, View view2, int i) {
        canvas.save();
        if (!this.a) {
            canvas.clipRect(0, i, canvas.getWidth(), view.getHeight() + i);
        } else if (Build.VERSION.SDK_INT >= 21) {
            canvas.saveLayerAlpha(new RectF(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight()), (int) (((view2.getTop() - i) / view2.getHeight()) * 255));
        } else {
            canvas.saveLayerAlpha(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), (int) (((view2.getTop() - i) / view2.getHeight()) * 255), 31);
        }
        canvas.translate(0.0f, view2.getTop() - view.getHeight());
        view.draw(canvas);
        if (this.a) {
            canvas.restore();
        }
        canvas.restore();
    }

    private final void a(ViewGroup viewGroup, View view) {
        view.measure(ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(viewGroup.getWidth(), 1073741824), viewGroup.getPaddingStart() + viewGroup.getPaddingEnd(), view.getLayoutParams().width), ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(viewGroup.getHeight(), 0), viewGroup.getPaddingTop() + viewGroup.getPaddingBottom(), view.getLayoutParams().height));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDrawOver(Canvas c2, RecyclerView parent, RecyclerView.State state) {
        int childAdapterPosition;
        View viewA;
        View viewA2;
        Intrinsics.checkNotNullParameter(c2, "c");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(state, "state");
        super.onDrawOver(c2, parent, state);
        View childAt = parent.getChildAt(0);
        if (childAt == null || (childAdapterPosition = parent.getChildAdapterPosition(childAt)) == -1 || (viewA = a(childAdapterPosition, parent)) == null || (viewA2 = a(parent, viewA.getBottom() + parent.getPaddingTop())) == null) {
            return;
        }
        if (this.b.invoke(Integer.valueOf(parent.getChildAdapterPosition(viewA2))).booleanValue()) {
            a(c2, viewA, viewA2, parent.getPaddingTop());
        } else {
            a(c2, viewA, parent.getPaddingTop());
        }
    }
}
