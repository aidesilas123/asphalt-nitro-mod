package io.didomi.drawable;

import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.app.NotificationCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.i5, reason: case insensitive filesystem */
/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Exception occurred when reading Kotlin metadata
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:108)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
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
    	... 4 more
    */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0019\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u0019\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\b¨\u0006\t"}, d2 = {"Landroidx/recyclerview/widget/RecyclerView;", "", "count", "", "a", "(Landroidx/recyclerview/widget/RecyclerView;I)V", "Landroid/view/View;", "headerView", "(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V", "android_release"}, mv = {1, 8, 0})
public final class C1792i5 {

    /* JADX INFO: renamed from: io.didomi.sdk.i5$a */
    @Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J'\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"io/didomi/sdk/i5$a", "Landroidx/core/view/AccessibilityDelegateCompat;", "Landroid/view/ViewGroup;", "host", "Landroid/view/View;", "child", "Landroid/view/accessibility/AccessibilityEvent;", NotificationCompat.CATEGORY_EVENT, "", "onRequestSendAccessibilityEvent", "(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z", "android_release"}, mv = {1, 8, 0})
    public static final class a extends AccessibilityDelegateCompat {
        final /* synthetic */ RecyclerView a;

        a(RecyclerView recyclerView) {
            this.a = recyclerView;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean onRequestSendAccessibilityEvent(ViewGroup host, View child, AccessibilityEvent event) {
            Intrinsics.checkNotNullParameter(host, "host");
            Intrinsics.checkNotNullParameter(child, "child");
            Intrinsics.checkNotNullParameter(event, "event");
            if (event.getEventType() == 32768) {
                RecyclerView.LayoutManager layoutManager = this.a.getLayoutManager();
                LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
                if (linearLayoutManager != null) {
                    linearLayoutManager.scrollToPosition(0);
                }
            }
            return super.onRequestSendAccessibilityEvent(host, child, event);
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.i5$b */
    @Metadata(d1 = {"\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J'\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fR\"\u0010\u0016\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"io/didomi/sdk/i5$b", "Landroidx/core/view/AccessibilityDelegateCompat;", "Landroid/view/ViewGroup;", "host", "Landroid/view/View;", "child", "Landroid/view/accessibility/AccessibilityEvent;", NotificationCompat.CATEGORY_EVENT, "", "onRequestSendAccessibilityEvent", "(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z", "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;", "info", "", "onInitializeAccessibilityNodeInfo", "(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V", "a", "Z", "getRemoveListCountAccessibility", "()Z", "setRemoveListCountAccessibility", "(Z)V", "removeListCountAccessibility", "android_release"}, mv = {1, 8, 0})
    public static final class b extends AccessibilityDelegateCompat {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private boolean removeListCountAccessibility;
        final /* synthetic */ RecyclerView b;
        final /* synthetic */ int c;

        b(RecyclerView recyclerView, int i) {
            this.b = recyclerView;
            this.c = i;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View host, AccessibilityNodeInfoCompat info) {
            Intrinsics.checkNotNullParameter(host, "host");
            Intrinsics.checkNotNullParameter(info, "info");
            super.onInitializeAccessibilityNodeInfo(host, info);
            if (this.removeListCountAccessibility) {
                info.setCollectionInfo(null);
            } else {
                info.setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(this.c, 1, true));
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0057  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x005c  */
        @Override // androidx.core.view.AccessibilityDelegateCompat
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean onRequestSendAccessibilityEvent(android.view.ViewGroup r5, android.view.View r6, android.view.accessibility.AccessibilityEvent r7) {
            /*
                r4 = this;
                java.lang.String r0 = "host"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
                java.lang.String r0 = "child"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
                java.lang.String r0 = "event"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
                int r0 = r7.getEventType()
                r1 = 32768(0x8000, float:4.5918E-41)
                if (r0 != r1) goto L75
                boolean r0 = r4.removeListCountAccessibility
                androidx.recyclerview.widget.RecyclerView r2 = r4.b
                androidx.recyclerview.widget.RecyclerView$ViewHolder r2 = r2.findContainingViewHolder(r6)
                if (r2 == 0) goto L57
                boolean r3 = r2 instanceof io.didomi.drawable.U4
                if (r3 == 0) goto L31
                io.didomi.sdk.U4 r2 = (io.didomi.drawable.U4) r2
                boolean r2 = r2.getPreventListAccessibilityAnnouncement()
                java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
                goto L50
            L31:
                boolean r3 = r2 instanceof io.didomi.drawable.P5
                if (r3 == 0) goto L40
                io.didomi.sdk.P5 r2 = (io.didomi.drawable.P5) r2
                boolean r2 = r2.getPreventListAccessibilityAnnouncement()
                java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
                goto L50
            L40:
                boolean r3 = r2 instanceof io.didomi.drawable.g9
                if (r3 == 0) goto L4f
                io.didomi.sdk.g9 r2 = (io.didomi.drawable.g9) r2
                boolean r2 = r2.getPreventListAccessibilityAnnouncement()
                java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
                goto L50
            L4f:
                r2 = 0
            L50:
                if (r2 == 0) goto L57
                boolean r2 = r2.booleanValue()
                goto L58
            L57:
                r2 = 0
            L58:
                r4.removeListCountAccessibility = r2
                if (r2 == r0) goto L5f
                r5.sendAccessibilityEvent(r1)
            L5f:
                androidx.recyclerview.widget.RecyclerView r0 = r4.b
                androidx.recyclerview.widget.RecyclerView$LayoutManager r0 = r0.getLayoutManager()
                java.lang.String r1 = "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"
                kotlin.jvm.internal.Intrinsics.checkNotNull(r0, r1)
                androidx.recyclerview.widget.LinearLayoutManager r0 = (androidx.recyclerview.widget.LinearLayoutManager) r0
                androidx.recyclerview.widget.RecyclerView r1 = r4.b
                int r1 = r1.getChildAdapterPosition(r6)
                r0.scrollToPosition(r1)
            L75:
                boolean r5 = super.onRequestSendAccessibilityEvent(r5, r6, r7)
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: io.didomi.drawable.C1792i5.b.onRequestSendAccessibilityEvent(android.view.ViewGroup, android.view.View, android.view.accessibility.AccessibilityEvent):boolean");
        }
    }

    public static final void a(RecyclerView recyclerView, int i) {
        Intrinsics.checkNotNullParameter(recyclerView, "<this>");
        ViewCompat.setAccessibilityDelegate(recyclerView, new b(recyclerView, i));
    }

    public static final void a(RecyclerView recyclerView, View headerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "<this>");
        Intrinsics.checkNotNullParameter(headerView, "headerView");
        ViewCompat.setAccessibilityDelegate(headerView, new a(recyclerView));
    }
}
