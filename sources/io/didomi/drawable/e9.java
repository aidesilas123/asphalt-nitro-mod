package io.didomi.drawable;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewGroupKt;
import androidx.recyclerview.widget.RecyclerView;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Iterator;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

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
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\n\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ/\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J'\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0016\u0010\u0017J'\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0018\u0010\u0017R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u001b\u0010 \u001a\u00020\u001d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u001e\u001a\u0004\b\u0019\u0010\u001fR\u001b\u0010$\u001a\u00020!8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\u001e\u001a\u0004\b\"\u0010#R\u001b\u0010(\u001a\u00020%8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010\u001e\u001a\u0004\b\u0015\u0010'R\u0014\u0010+\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u001b\u0010/\u001a\u00020,8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b-\u0010\u001e\u001a\u0004\b&\u0010.R\u001b\u00103\u001a\u0002008BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u0010\u001e\u001a\u0004\b\u001b\u00102R\u001b\u00105\u001a\u0002008BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b4\u0010\u001e\u001a\u0004\b-\u00102R\u001b\u00107\u001a\u0002008BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b6\u0010\u001e\u001a\u0004\b1\u00102R\u001b\u00109\u001a\u0002008BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b8\u0010\u001e\u001a\u0004\b)\u00102¨\u0006:"}, d2 = {"Lio/didomi/sdk/e9;", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "", "shouldHandleAllVendorsState", "Lio/didomi/sdk/z8;", "themeProvider", "<init>", "(Landroidx/recyclerview/widget/RecyclerView;ZLio/didomi/sdk/z8;)V", "Landroid/graphics/Rect;", "outRect", "Landroid/view/View;", "view", "parent", "Landroidx/recyclerview/widget/RecyclerView$State;", "state", "", "getItemOffsets", "(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V", "Landroid/graphics/Canvas;", "c", "onDraw", "(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V", "onDrawOver", "a", "Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/z8;", "Landroid/view/accessibility/AccessibilityManager;", "Lkotlin/Lazy;", "()Landroid/view/accessibility/AccessibilityManager;", "accessibilityManager", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()I", "paddingForLargeScreens", "Lio/didomi/sdk/Z8;", "e", "()Lio/didomi/sdk/Z8;", "bulkActionViewHolder", InneractiveMediationDefs.GENDER_FEMALE, "I", "matchingVendorsViewHolderId", "Landroid/graphics/Paint;", "g", "()Landroid/graphics/Paint;", "paint", "", "h", "()F", "bulkActionHeight", "i", "separatorMarginBottom", "j", "separatorMarginHorizontal", CampaignEx.JSON_KEY_AD_K, "separatorHeight", "android_release"}, mv = {1, 8, 0})
public final class e9 extends RecyclerView.ItemDecoration {
    private final boolean a;
    private final C1965z8 b;
    private final Lazy c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f8541d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f8542e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f8543f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f8544g;
    private final Lazy h;
    private final Lazy i;
    private final Lazy j;
    private final Lazy k;

    /* JADX INFO: renamed from: io.didomi.sdk.e9$a, reason: from Kotlin metadata */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Landroid/view/accessibility/AccessibilityManager;", "a", "()Landroid/view/accessibility/AccessibilityManager;"}, mv = {1, 8, 0})
    static final class AccessibilityManager extends Lambda implements Function0<android.view.accessibility.AccessibilityManager> {
        final /* synthetic */ RecyclerView a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AccessibilityManager(RecyclerView recyclerView) {
            super(0);
            this.a = recyclerView;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final android.view.accessibility.AccessibilityManager invoke() {
            Context context = this.a.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "recyclerView.context");
            return C1707a0.a(context);
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0007\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Float;"}, mv = {1, 8, 0})
    static final class b extends Lambda implements Function0<Float> {
        final /* synthetic */ RecyclerView a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(RecyclerView recyclerView) {
            super(0);
            this.a = recyclerView;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Float invoke() {
            return Float.valueOf(this.a.getResources().getDimension(R.dimen.didomi_vendors_item_height));
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/Z8;", "a", "()Lio/didomi/sdk/Z8;"}, mv = {1, 8, 0})
    static final class c extends Lambda implements Function0<Z8> {
        final /* synthetic */ RecyclerView b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(RecyclerView recyclerView) {
            super(0);
            this.b = recyclerView;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Z8 invoke() {
            C1965z8 c1965z8 = e9.this.b;
            C1819l2 c1819l2A = C1819l2.a(LayoutInflater.from(this.b.getContext()), this.b, false);
            Intrinsics.checkNotNullExpressionValue(c1819l2A, "inflate(LayoutInflater.f…xt), recyclerView, false)");
            return new Z8(c1965z8, c1819l2A);
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Integer;"}, mv = {1, 8, 0})
    static final class d extends Lambda implements Function0<Integer> {
        final /* synthetic */ RecyclerView a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(RecyclerView recyclerView) {
            super(0);
            this.a = recyclerView;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer invoke() {
            int dimensionPixelSize = this.a.getResources().getDimensionPixelSize(R.dimen.didomi_content_max_width);
            int i = this.a.getResources().getDisplayMetrics().widthPixels;
            return Integer.valueOf(i > dimensionPixelSize ? (i - dimensionPixelSize) / 2 : 0);
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Landroid/graphics/Paint;", "a", "()Landroid/graphics/Paint;"}, mv = {1, 8, 0})
    static final class e extends Lambda implements Function0<Paint> {
        final /* synthetic */ RecyclerView a;
        final /* synthetic */ e9 b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(RecyclerView recyclerView, e9 e9Var) {
            super(0);
            this.a = recyclerView;
            this.b = e9Var;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Paint invoke() {
            Paint paint = new Paint();
            paint.setColor(ContextCompat.getColor(this.a.getContext(), this.b.b.t() ? R.color.didomi_dark_divider : R.color.didomi_light_divider));
            return paint;
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0007\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Float;"}, mv = {1, 8, 0})
    static final class f extends Lambda implements Function0<Float> {
        final /* synthetic */ RecyclerView a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(RecyclerView recyclerView) {
            super(0);
            this.a = recyclerView;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Float invoke() {
            return Float.valueOf(this.a.getResources().getDimension(R.dimen.didomi_vendors_separator_height));
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0007\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Float;"}, mv = {1, 8, 0})
    static final class g extends Lambda implements Function0<Float> {
        final /* synthetic */ RecyclerView a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(RecyclerView recyclerView) {
            super(0);
            this.a = recyclerView;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Float invoke() {
            return Float.valueOf(this.a.getResources().getDimension(R.dimen.didomi_vendors_separator_margin_bottom));
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0007\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Float;"}, mv = {1, 8, 0})
    static final class h extends Lambda implements Function0<Float> {
        final /* synthetic */ RecyclerView a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(RecyclerView recyclerView) {
            super(0);
            this.a = recyclerView;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Float invoke() {
            return Float.valueOf(this.a.getResources().getDimension(R.dimen.didomi_vendors_separator_margin_horizontal));
        }
    }

    public e9(RecyclerView recyclerView, boolean z, C1965z8 themeProvider) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(themeProvider, "themeProvider");
        this.a = z;
        this.b = themeProvider;
        this.c = LazyKt__LazyJVMKt.lazy(new AccessibilityManager(recyclerView));
        this.f8541d = LazyKt__LazyJVMKt.lazy(new d(recyclerView));
        this.f8542e = LazyKt__LazyJVMKt.lazy(new c(recyclerView));
        this.f8543f = z ? 1 : 0;
        this.f8544g = LazyKt__LazyJVMKt.lazy(new e(recyclerView, this));
        this.h = LazyKt__LazyJVMKt.lazy(new b(recyclerView));
        this.i = LazyKt__LazyJVMKt.lazy(new g(recyclerView));
        this.j = LazyKt__LazyJVMKt.lazy(new h(recyclerView));
        this.k = LazyKt__LazyJVMKt.lazy(new f(recyclerView));
    }

    private final android.view.accessibility.AccessibilityManager a() {
        return (android.view.accessibility.AccessibilityManager) this.c.getValue();
    }

    private final float b() {
        return ((Number) this.h.getValue()).floatValue();
    }

    private final Z8 c() {
        return (Z8) this.f8542e.getValue();
    }

    private final int d() {
        return ((Number) this.f8541d.getValue()).intValue();
    }

    private final Paint e() {
        return (Paint) this.f8544g.getValue();
    }

    private final float f() {
        return ((Number) this.k.getValue()).floatValue();
    }

    private final float g() {
        return ((Number) this.i.getValue()).floatValue();
    }

    private final float h() {
        return ((Number) this.j.getValue()).floatValue();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(outRect, "outRect");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(state, "state");
        super.getItemOffsets(outRect, view, parent, state);
        if (parent.getChildViewHolder(view).getItemViewType() == this.f8543f) {
            outRect.set(0, 0, 0, (int) (f() + g()));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas c2, RecyclerView parent, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(c2, "c");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(state, "state");
        RecyclerView.Adapter adapter = parent.getAdapter();
        if (adapter == null) {
            return;
        }
        int itemCount = adapter.getItemCount() - 1;
        int i = 0;
        if (itemCount < 0) {
            return;
        }
        while (true) {
            View childAt = parent.getChildAt(i);
            if (childAt == null) {
                return;
            }
            if (parent.getChildViewHolder(childAt).getItemViewType() == this.f8543f) {
                c2.drawRect(h() + d(), childAt.getBottom(), (childAt.getWidth() - h()) + d(), childAt.getBottom() + f(), e());
                return;
            } else if (i == itemCount) {
                return;
            } else {
                i++;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDrawOver(Canvas c2, RecyclerView parent, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(c2, "c");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(state, "state");
        super.onDrawOver(c2, parent, state);
        if (!this.a || a().isEnabled()) {
            return;
        }
        View childAt = parent.getChildAt(0);
        if (parent.getChildViewHolder(childAt) instanceof c9) {
            return;
        }
        Iterator<View> it = ViewGroupKt.getChildren(parent).iterator();
        while (it.hasNext()) {
            RecyclerView.ViewHolder childViewHolder = parent.getChildViewHolder(it.next());
            f9 f9Var = childViewHolder instanceof f9 ? (f9) childViewHolder : null;
            if (f9Var != null) {
                f9Var.d();
            }
        }
        Z8 z8C = c();
        RecyclerView.Adapter adapter = parent.getAdapter();
        if (adapter != null) {
            adapter.onBindViewHolder(z8C, 1);
        }
        View view = z8C.itemView;
        view.measure(View.MeasureSpec.makeMeasureSpec(childAt.getMeasuredWidth() + d(), 1073741824), View.MeasureSpec.makeMeasureSpec(childAt.getMeasuredHeight(), 0));
        view.layout(childAt.getLeft(), 0, childAt.getRight() + (d() * 2), (int) b());
        view.setPadding(d(), 0, 0, 0);
        view.draw(c2);
        c2.drawRect(h() + d(), b(), (childAt.getWidth() - h()) + d(), b() + f(), e());
    }
}
