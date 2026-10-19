package io.didomi.drawable.notice.ctv;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.KeyEventDispatcher;
import androidx.core.widget.TextViewCompat;
import androidx.fragment.app.DialogFragment;
import androidx.lifecycle.LifecycleOwner;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.gameloft.adsmanager.JavaUtils;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import io.didomi.drawable.C1806k;
import io.didomi.drawable.C1810k3;
import io.didomi.drawable.C1823l6;
import io.didomi.drawable.C1925v8;
import io.didomi.drawable.C3;
import io.didomi.drawable.D8;
import io.didomi.drawable.Didomi;
import io.didomi.drawable.I3;
import io.didomi.drawable.N2;
import io.didomi.drawable.R;
import io.didomi.drawable.U;
import io.didomi.drawable.V5;
import io.didomi.drawable.X0;
import io.didomi.drawable.Y5;
import io.didomi.drawable.k9;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;
import kotlin.text.StringsKt__StringsKt;
import kotlin.v;
import kotlinx.coroutines.Job;

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
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 I2\u00020\u0001:\u0002\u000f\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\u0003J\u000f\u0010\b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\b\u0010\u0003J\u0017\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\r\u0010\u0003J\u0019\u0010\u000f\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b\u000f\u0010\fJ\u0017\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J+\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020\u00192\b\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ!\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u001d2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0004H\u0016¢\u0006\u0004\b#\u0010\u0003J\u000f\u0010$\u001a\u00020\u0004H\u0016¢\u0006\u0004\b$\u0010\u0003J\u000f\u0010%\u001a\u00020\u0004H\u0016¢\u0006\u0004\b%\u0010\u0003J\u000f\u0010&\u001a\u00020\u0004H\u0016¢\u0006\u0004\b&\u0010\u0003R\"\u0010,\u001a\u00020'8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000f\u0010(\u001a\u0004\b\u000f\u0010)\"\u0004\b*\u0010+R\"\u00103\u001a\u00020-8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000b\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\"\u00109\u001a\u0002048\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b/\u00105\u001a\u0004\b\u000b\u00106\"\u0004\b7\u00108R\u0018\u0010<\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010;R\u0018\u0010?\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010>R\u0014\u0010B\u001a\u00020@8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010AR\u0014\u0010C\u001a\u00020@8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010AR\u0014\u0010D\u001a\u00020@8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010AR\u0014\u0010F\u001a\u00020@8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bE\u0010AR\u0014\u0010H\u001a\u00020@8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bG\u0010A¨\u0006J"}, d2 = {"Lio/didomi/sdk/notice/ctv/a;", "Landroidx/fragment/app/DialogFragment;", "<init>", "()V", "", "h", "e", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, InneractiveMediationDefs.GENDER_FEMALE, "", "noticeText", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;)V", "g", "partnersLabel", "a", "Landroid/content/Context;", "context", "onAttach", "(Landroid/content/Context;)V", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "parent", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "view", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", o2.h.u0, o2.h.t0, "dismiss", "onDestroyView", "Lio/didomi/sdk/l6;", "Lio/didomi/sdk/l6;", "()Lio/didomi/sdk/l6;", "setModel", "(Lio/didomi/sdk/l6;)V", "model", "Lio/didomi/sdk/D8;", "Lio/didomi/sdk/D8;", "c", "()Lio/didomi/sdk/D8;", "setUiProvider", "(Lio/didomi/sdk/D8;)V", "uiProvider", "Lio/didomi/sdk/I3;", "Lio/didomi/sdk/I3;", "()Lio/didomi/sdk/I3;", "setNavigationManager", "(Lio/didomi/sdk/I3;)V", "navigationManager", "Lio/didomi/sdk/X0;", "Lio/didomi/sdk/X0;", "binding", "Lkotlinx/coroutines/Job;", "Lkotlinx/coroutines/Job;", "job", "Landroid/view/View$OnClickListener;", "Landroid/view/View$OnClickListener;", "agreeButtonListener", "disagreeButtonListener", "manageButtonListener", "i", "privacyButtonListener", "j", "partnersButtonListener", CampaignEx.JSON_KEY_AD_K, "android_release"}, mv = {1, 8, 0})
public final class a extends DialogFragment {
    public static final b k = new b(null);
    public C1823l6 a;
    public D8 b;
    public I3 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private X0 f8717d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Job f8718e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final View.OnClickListener f8719f = new View.OnClickListener() { // from class: io.didomi.sdk.notice.ctv.i
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            a.a(this.a, view);
        }
    };

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final View.OnClickListener f8720g = new View.OnClickListener() { // from class: io.didomi.sdk.notice.ctv.h
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            a.b(this.a, view);
        }
    };
    private final View.OnClickListener h = new View.OnClickListener() { // from class: io.didomi.sdk.notice.ctv.g
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            a.c(this.a, view);
        }
    };
    private final View.OnClickListener i = new View.OnClickListener() { // from class: io.didomi.sdk.notice.ctv.e
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            a.e(this.a, view);
        }
    };
    private final View.OnClickListener j = new View.OnClickListener() { // from class: io.didomi.sdk.notice.ctv.d
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            a.d(this.a, view);
        }
    };

    /* JADX INFO: renamed from: io.didomi.sdk.notice.ctv.a$a, reason: collision with other inner class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lio/didomi/sdk/notice/ctv/a$a;", "", "", "a", "()V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "android_release"}, mv = {1, 8, 0})
    public interface InterfaceC0496a {
        void a();

        void b();
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0006R\u0014\u0010\b\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0006R\u0014\u0010\n\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\u0006¨\u0006\r"}, d2 = {"Lio/didomi/sdk/notice/ctv/a$b;", "", "<init>", "()V", "", "GRANULARITY_TEXT_VIEW_FONT_SIZE", "I", "MAX_TEXT_VIEW_FONT_SIZE", "MIN_TEXT_VIEW_FONT_SIZE", "", "TAG", "Ljava/lang/String;", "VERTICAL_PADDING", "android_release"}, mv = {1, 8, 0})
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(n nVar) {
            this();
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(Z)V"}, mv = {1, 8, 0})
    static final class c extends Lambda implements Function1<Boolean, v> {
        c() {
            super(1);
        }

        public final void a(boolean z) {
            if (z) {
                return;
            }
            a.this.dismiss();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(Boolean bool) {
            a(bool.booleanValue());
            return v.a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(View view, boolean z) {
        if (z) {
            return;
        }
        view.setEnabled(false);
        view.setFocusable(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Button this_apply) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(a this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.a().C();
    }

    private final void a(String str) {
        Button button;
        X0 x0 = this.f8717d;
        if (x0 == null || (button = x0.f8443e) == null) {
            return;
        }
        int i = R.dimen.didomi_tv_button_padding;
        k9.a(button, i, 0, i, 0, 10, null);
        button.setOnClickListener(this.j);
        button.setText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(a this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.a().D();
    }

    private final void b(String str) {
        TextView textView;
        X0 x0 = this.f8717d;
        if (x0 == null || (textView = x0.i) == null) {
            return;
        }
        textView.setMaxHeight(textView.getResources().getDisplayMetrics().heightPixels - ((int) (JavaUtils.Constants.NATIVE_HEIGHT_DP_300 * textView.getResources().getDisplayMetrics().density)));
        textView.setText(C1925v8.a.a(StringsKt__StringsKt.trim(V5.i(str)).toString()));
        TextViewCompat.setAutoSizeTextTypeUniformWithConfiguration(textView, 3, 14, 1, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(a this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.a().E();
        I3.a(this$0.b(), this$0.getActivity(), null, 2, null);
    }

    private final void d() {
        Button button;
        X0 x0 = this.f8717d;
        if (x0 == null || (button = x0.b) == null) {
            return;
        }
        int i = R.dimen.didomi_tv_button_padding;
        k9.a(button, i, 0, i, 0, 10, null);
        button.setOnClickListener(this.f8719f);
        button.setText(a().b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(a this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.a().G();
        this$0.b().a(this$0.getActivity(), Y5.Vendors);
    }

    private final void e() {
        Button button;
        X0 x0 = this.f8717d;
        if (x0 == null || (button = x0.c) == null) {
            return;
        }
        if (a().e() == C1806k.i.a.NONE) {
            button.setVisibility(8);
            return;
        }
        button.setOnClickListener(this.f8720g);
        int dimensionPixelSize = button.getResources().getDimensionPixelSize(R.dimen.didomi_tv_button_padding);
        button.setPaddingRelative(dimensionPixelSize, 0, dimensionPixelSize, 0);
        button.setText(a().b(false));
        button.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(a this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.a().L();
        KeyEventDispatcher.Component activity = this$0.getActivity();
        InterfaceC0496a interfaceC0496a = activity instanceof InterfaceC0496a ? (InterfaceC0496a) activity : null;
        if (interfaceC0496a != null) {
            interfaceC0496a.a();
        }
    }

    private final void f() {
        Button button;
        X0 x0 = this.f8717d;
        if (x0 == null || (button = x0.f8442d) == null) {
            return;
        }
        int i = R.dimen.didomi_tv_button_padding;
        k9.a(button, i, 0, i, 0, 10, null);
        button.setOnClickListener(this.h);
        button.setText(a().l());
    }

    private final void g() {
        Button button;
        X0 x0 = this.f8717d;
        if (x0 == null || (button = x0.f8444f) == null) {
            return;
        }
        int i = R.dimen.didomi_tv_button_padding;
        k9.a(button, i, 0, i, 0, 10, null);
        button.setOnClickListener(this.i);
        button.setText(a().u());
    }

    private final void h() {
        final Button button;
        X0 x0 = this.f8717d;
        if (x0 == null || (button = x0.f8445g) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            button.setFocusedByDefault(true);
        }
        button.post(new Runnable() { // from class: io.didomi.sdk.notice.ctv.c
            @Override // java.lang.Runnable
            public final void run() {
                a.a(button);
            }
        });
        int i = R.dimen.didomi_tv_button_padding;
        k9.a(button, i, 0, i, 0, 10, null);
        button.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: io.didomi.sdk.notice.ctv.f
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                a.a(view, z);
            }
        });
        button.setText(a().J());
    }

    public final C1823l6 a() {
        C1823l6 c1823l6 = this.a;
        if (c1823l6 != null) {
            return c1823l6;
        }
        Intrinsics.throwUninitializedPropertyAccessException("model");
        return null;
    }

    public final I3 b() {
        I3 i3 = this.c;
        if (i3 != null) {
            return i3;
        }
        Intrinsics.throwUninitializedPropertyAccessException("navigationManager");
        return null;
    }

    public final D8 c() {
        D8 d8 = this.b;
        if (d8 != null) {
            return d8;
        }
        Intrinsics.throwUninitializedPropertyAccessException("uiProvider");
        return null;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismiss() {
        super.dismiss();
        KeyEventDispatcher.Component activity = getActivity();
        InterfaceC0496a interfaceC0496a = activity instanceof InterfaceC0496a ? (InterfaceC0496a) activity : null;
        if (interfaceC0496a != null) {
            interfaceC0496a.b();
        }
        a().K();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Didomi.Companion.getInstance().getComponent$android_release().a(this);
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = new Dialog(requireContext(), R.style.Didomi_Theme_TVDialog);
        dialog.setCancelable(false);
        dialog.setCanceledOnTouchOutside(false);
        Window window = dialog.getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new InsetDrawable((Drawable) new ColorDrawable(0), 0, 0, 0, 0));
        }
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        X0 x0A = X0.a(inflater, viewGroup, false);
        this.f8717d = x0A;
        ConstraintLayout root = x0A.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "inflate(inflater, parent…g = it\n            }.root");
        return root;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        C3 c3N = a().n();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "viewLifecycleOwner");
        c3N.a(viewLifecycleOwner);
        this.f8717d = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        Job job = this.f8718e;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.f8718e = N2.a(this, c().e(), new c());
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        ImageView imageView;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        h();
        e();
        d();
        f();
        g();
        U.NoticeAndPartnersProperties noticeAndPartnersPropertiesR = a().r();
        b(noticeAndPartnersPropertiesR.getNoticeText());
        a(noticeAndPartnersPropertiesR.getPartnersButtonText());
        X0 x0 = this.f8717d;
        if (x0 == null || (imageView = x0.h) == null) {
            return;
        }
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "viewLifecycleOwner");
        C1810k3.a(imageView, viewLifecycleOwner, a().n());
    }
}
