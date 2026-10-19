package io.didomi.drawable;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.ImageButton;
import androidx.core.app.NotificationCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

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
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a\u0019\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u0019\u0010\u0006\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0006\u0010\u0005\u001am\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\f\u001a\u00020\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0004\u0010\u0013\u001a\u0011\u0010\u0004\u001a\u00020\u0003*\u00020\u0000¢\u0006\u0004\b\u0004\u0010\u0014\u001a\u0011\u0010\u0006\u001a\u00020\u0003*\u00020\u0000¢\u0006\u0004\b\u0006\u0010\u0014\u001a%\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\u0015\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0004\u0010\u0016\u001a\u0011\u0010\u0017\u001a\u00020\u0003*\u00020\u0000¢\u0006\u0004\b\u0017\u0010\u0014¨\u0006\u0018"}, d2 = {"Landroid/view/View;", "Lio/didomi/sdk/a;", "accessibility", "", "a", "(Landroid/view/View;Lio/didomi/sdk/a;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "", "label", "actionDescription", "stateDescription", "", "announceState", "announceStateLabel", "", "actionId", "collectionItemPosition", "Lio/didomi/sdk/b;", "customClassName", "(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Integer;Lio/didomi/sdk/b;)V", "(Landroid/view/View;)V", "description", "(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V", "c", "android_release"}, mv = {1, 8, 0})
public final class j9 {

    @Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"io/didomi/sdk/j9$a", "Landroidx/core/view/AccessibilityDelegateCompat;", "Landroid/view/View;", "host", "Landroid/view/accessibility/AccessibilityEvent;", NotificationCompat.CATEGORY_EVENT, "", "onInitializeAccessibilityEvent", "(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V", "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;", "info", "onInitializeAccessibilityNodeInfo", "(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V", "android_release"}, mv = {1, 8, 0})
    public static final class a extends AccessibilityDelegateCompat {
        final /* synthetic */ String a;
        final /* synthetic */ View b;
        final /* synthetic */ EnumC1716b c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f8606d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f8607e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ Integer f8608f;

        a(String str, View view, EnumC1716b enumC1716b, String str2, int i, Integer num) {
            this.a = str;
            this.b = view;
            this.c = enumC1716b;
            this.f8606d = str2;
            this.f8607e = i;
            this.f8608f = num;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityEvent(View host, AccessibilityEvent event) {
            Intrinsics.checkNotNullParameter(host, "host");
            Intrinsics.checkNotNullParameter(event, "event");
            super.onInitializeAccessibilityEvent(host, event);
            String str = this.a;
            if (str == null || StringsKt__StringsJVMKt.isBlank(str) || (this.b instanceof ImageButton)) {
                return;
            }
            List<CharSequence> text = event.getText();
            String str2 = this.a;
            text.clear();
            text.add(str2);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View host, AccessibilityNodeInfoCompat info) {
            Intrinsics.checkNotNullParameter(host, "host");
            Intrinsics.checkNotNullParameter(info, "info");
            super.onInitializeAccessibilityNodeInfo(host, info);
            EnumC1716b enumC1716b = this.c;
            String str = this.f8606d;
            int i = this.f8607e;
            Integer num = this.f8608f;
            if (enumC1716b != null) {
                info.setClassName(enumC1716b.getValue());
            }
            if (str != null && !StringsKt__StringsJVMKt.isBlank(str)) {
                info.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(i, str));
            }
            if (num != null) {
                info.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(num.intValue(), 1, 0, 1, false));
            } else {
                info.setCollectionItemInfo(null);
            }
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"io/didomi/sdk/j9$b", "Landroidx/core/view/AccessibilityDelegateCompat;", "Landroid/view/View;", "host", "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;", "info", "", "onInitializeAccessibilityNodeInfo", "(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V", "android_release"}, mv = {1, 8, 0})
    public static final class b extends AccessibilityDelegateCompat {
        b() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View host, AccessibilityNodeInfoCompat info) {
            Intrinsics.checkNotNullParameter(host, "host");
            Intrinsics.checkNotNullParameter(info, "info");
            super.onInitializeAccessibilityNodeInfo(host, info);
            info.setCollectionItemInfo(null);
        }
    }

    @Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J)\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"io/didomi/sdk/j9$c", "Landroidx/core/view/AccessibilityDelegateCompat;", "Landroid/view/View;", "host", "", "action", "Landroid/os/Bundle;", "args", "", "performAccessibilityAction", "(Landroid/view/View;ILandroid/os/Bundle;)Z", "android_release"}, mv = {1, 8, 0})
    public static final class c extends AccessibilityDelegateCompat {
        c() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View host, int action, Bundle args) {
            Intrinsics.checkNotNullParameter(host, "host");
            if (action == 64) {
                host.sendAccessibilityEvent(32768);
            }
            return super.performAccessibilityAction(host, action, args);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"io/didomi/sdk/j9$d", "Landroidx/core/view/AccessibilityDelegateCompat;", "Landroid/view/View;", "host", "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;", "info", "", "onInitializeAccessibilityNodeInfo", "(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V", "android_release"}, mv = {1, 8, 0})
    public static final class d extends AccessibilityDelegateCompat {
        d() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View host, AccessibilityNodeInfoCompat info) {
            Intrinsics.checkNotNullParameter(host, "host");
            Intrinsics.checkNotNullParameter(info, "info");
            super.onInitializeAccessibilityNodeInfo(host, info);
            info.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
            info.setClickable(false);
            info.setLongClickable(false);
        }
    }

    public static final void a(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        ViewCompat.setAccessibilityDelegate(view, new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(View this_forceAnnounceForAccessibility, AccessibilityManager manager, String str, String str2) {
        Intrinsics.checkNotNullParameter(this_forceAnnounceForAccessibility, "$this_forceAnnounceForAccessibility");
        Intrinsics.checkNotNullParameter(manager, "$manager");
        AccessibilityEvent accessibilityEvent = Build.VERSION.SDK_INT >= 30 ? new AccessibilityEvent() : AccessibilityEvent.obtain();
        accessibilityEvent.setEventType(16384);
        accessibilityEvent.setClassName(this_forceAnnounceForAccessibility.getClass().getName());
        accessibilityEvent.setPackageName(this_forceAnnounceForAccessibility.getContext().getPackageName());
        List<CharSequence> text = accessibilityEvent.getText();
        if (str != null) {
            text.add(str);
        }
        if (str2 != null) {
            text.add(str2);
        }
        manager.sendAccessibilityEvent(accessibilityEvent);
    }

    public static final void a(View view, Accessibility accessibility) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(accessibility, "accessibility");
        a(view, accessibility.getLabel(), accessibility.getActionDescription(), accessibility.getStateDescription(), accessibility.getAnnounceState(), null, accessibility.getActionId(), accessibility.getCollectionItemPosition(), null, 144, null);
    }

    public static final void a(final View view, final String str, final String str2) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        if (Build.VERSION.SDK_INT >= 31) {
            str = null;
        }
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        final AccessibilityManager accessibilityManagerA = C1707a0.a(context);
        if (accessibilityManagerA.isEnabled()) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: io.didomi.sdk.qe
                @Override // java.lang.Runnable
                public final void run() {
                    j9.a(view, accessibilityManagerA, str, str2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(View this_applyAccessibilityCustom, String str, String str2, String str3) {
        Intrinsics.checkNotNullParameter(this_applyAccessibilityCustom, "$this_applyAccessibilityCustom");
        if (str == null) {
            str = str2;
        }
        a(this_applyAccessibilityCustom, str, str3);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void a(final android.view.View r12, final java.lang.String r13, java.lang.String r14, final java.lang.String r15, boolean r16, final java.lang.String r17, int r18, java.lang.Integer r19, io.didomi.drawable.EnumC1716b r20) {
        /*
            r7 = r12
            r8 = r13
            r9 = r15
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r0)
            if (r8 == 0) goto L10
            boolean r0 = kotlin.text.g.isBlank(r13)
            if (r0 == 0) goto L1a
        L10:
            if (r14 == 0) goto La1
            boolean r0 = kotlin.text.g.isBlank(r14)
            if (r0 == 0) goto L1a
            goto La1
        L1a:
            r0 = 1
            if (r9 == 0) goto L26
            boolean r1 = kotlin.text.g.isBlank(r15)
            if (r1 == 0) goto L24
            goto L26
        L24:
            r1 = 0
            goto L27
        L26:
            r1 = 1
        L27:
            r10 = r1 ^ 1
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 30
            if (r0 < r1) goto L3d
            if (r9 == 0) goto L34
            r12.setStateDescription(r15)
        L34:
            if (r8 == 0) goto L39
            r12.setContentDescription(r13)
        L39:
            r3 = r20
            r1 = r8
            goto L82
        L3d:
            boolean r0 = r7 instanceof android.widget.ImageButton
            if (r0 != 0) goto L4e
            if (r10 != 0) goto L4e
            if (r14 == 0) goto L4b
            boolean r0 = kotlin.text.g.isBlank(r14)
            if (r0 == 0) goto L4e
        L4b:
            r3 = r20
            goto L80
        L4e:
            if (r8 == 0) goto L67
            if (r9 == 0) goto L67
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r13)
            java.lang.String r1 = ", "
            r0.append(r1)
            r0.append(r15)
            java.lang.String r0 = r0.toString()
            goto L6c
        L67:
            if (r8 != 0) goto L6b
            r0 = r9
            goto L6c
        L6b:
            r0 = r8
        L6c:
            if (r0 == 0) goto L4b
            boolean r1 = r7 instanceof io.didomi.drawable.view.mobile.DidomiToggle
            if (r1 != 0) goto L7d
            io.didomi.sdk.b r1 = io.didomi.drawable.EnumC1716b.c
            r3 = r20
            if (r3 != r1) goto L79
            goto L81
        L79:
            r12.setContentDescription(r0)
            goto L81
        L7d:
            r3 = r20
            goto L81
        L80:
            r0 = 0
        L81:
            r1 = r0
        L82:
            io.didomi.sdk.j9$a r11 = new io.didomi.sdk.j9$a
            r0 = r11
            r2 = r12
            r3 = r20
            r4 = r14
            r5 = r18
            r6 = r19
            r0.<init>(r1, r2, r3, r4, r5, r6)
            androidx.core.view.ViewCompat.setAccessibilityDelegate(r12, r11)
            if (r16 == 0) goto La1
            if (r10 == 0) goto La1
            io.didomi.sdk.se r0 = new io.didomi.sdk.se
            r1 = r17
            r0.<init>()
            r12.post(r0)
        La1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.didomi.drawable.j9.a(android.view.View, java.lang.String, java.lang.String, java.lang.String, boolean, java.lang.String, int, java.lang.Integer, io.didomi.sdk.b):void");
    }

    public static /* synthetic */ void a(View view, String str, String str2, String str3, boolean z, String str4, int i, Integer num, EnumC1716b enumC1716b, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = null;
        }
        if ((i2 & 2) != 0) {
            str2 = null;
        }
        if ((i2 & 4) != 0) {
            str3 = null;
        }
        if ((i2 & 8) != 0) {
            z = false;
        }
        if ((i2 & 16) != 0) {
            str4 = null;
        }
        if ((i2 & 32) != 0) {
            i = 16;
        }
        if ((i2 & 64) != 0) {
            num = null;
        }
        if ((i2 & 128) != 0) {
            enumC1716b = null;
        }
        a(view, str, str2, str3, z, str4, i, num, enumC1716b);
    }

    public static final void b(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        ViewCompat.setAccessibilityDelegate(view, new c());
    }

    public static final void b(final View view, final Accessibility accessibility) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(accessibility, "accessibility");
        if (Build.VERSION.SDK_INT < 30) {
            a(view, Accessibility.a(accessibility, null, null, null, true, 0, null, 55, null));
        } else {
            a(view, Accessibility.a(accessibility, null, null, null, false, 0, null, 55, null));
            view.post(new Runnable() { // from class: io.didomi.sdk.re
                @Override // java.lang.Runnable
                public final void run() {
                    j9.c(view, accessibility);
                }
            });
        }
    }

    public static final void c(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        ViewCompat.setAccessibilityDelegate(view, new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(View this_updateState, Accessibility accessibility) {
        Intrinsics.checkNotNullParameter(this_updateState, "$this_updateState");
        Intrinsics.checkNotNullParameter(accessibility, "$accessibility");
        a(this_updateState, null, accessibility.getStateDescription());
    }
}
