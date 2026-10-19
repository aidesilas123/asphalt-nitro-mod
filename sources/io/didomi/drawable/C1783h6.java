package io.didomi.drawable;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextSwitcher;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: renamed from: io.didomi.sdk.h6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00052\u00020\u0001:\u0001\u001cB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\u0003J\u000f\u0010\b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\b\u0010\u0003J\u000f\u0010\t\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\t\u0010\u0003J\u0017\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ+\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J!\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001a\u0010\u0003R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\"\u0010%\u001a\u00020\u001f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b \u0010\"\"\u0004\b#\u0010$R\"\u0010+\u001a\u00020&8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0007\u0010'\u001a\u0004\b\u001c\u0010(\"\u0004\b)\u0010*R\u0014\u0010.\u001a\u00020,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010-¨\u0006/"}, d2 = {"Lio/didomi/sdk/h6;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "", "e", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "c", InneractiveMediationDefs.GENDER_FEMALE, "g", "Landroid/content/Context;", "context", "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "parent", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "view", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "Lio/didomi/sdk/Y0;", "a", "Lio/didomi/sdk/Y0;", "binding", "Lio/didomi/sdk/l7;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/l7;", "()Lio/didomi/sdk/l7;", "setPurposesModel", "(Lio/didomi/sdk/l7;)V", "purposesModel", "Lio/didomi/sdk/m6;", "Lio/didomi/sdk/m6;", "()Lio/didomi/sdk/m6;", "setModel", "(Lio/didomi/sdk/m6;)V", "model", "Landroid/view/View$OnKeyListener;", "Landroid/view/View$OnKeyListener;", "keyListener", "android_release"}, mv = {1, 8, 0})
public final class C1783h6 extends Fragment {

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private Y0 binding;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    public C1824l7 purposesModel;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    public C1833m6 model;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final View.OnKeyListener keyListener = new View.OnKeyListener() { // from class: io.didomi.sdk.be
        @Override // android.view.View.OnKeyListener
        public final boolean onKey(View view, int i, KeyEvent keyEvent) {
            return C1783h6.a(this.a, view, i, keyEvent);
        }
    };

    /* JADX INFO: renamed from: io.didomi.sdk.h6$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\u000b¨\u0006\r"}, d2 = {"Lio/didomi/sdk/h6$a;", "", "<init>", "()V", "Lio/didomi/sdk/o0;", "dataProcessing", "Lio/didomi/sdk/h6;", "a", "(Lio/didomi/sdk/o0;)Lio/didomi/sdk/h6;", "", "KEY_DATA_PROCESSING", "Ljava/lang/String;", "TAG", "android_release"}, mv = {1, 8, 0})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        public final C1783h6 a(InterfaceC1847o0 dataProcessing) {
            Intrinsics.checkNotNullParameter(dataProcessing, "dataProcessing");
            C1783h6 c1783h6 = new C1783h6();
            Bundle bundle = new Bundle();
            bundle.putParcelable("data_processing", dataProcessing);
            c1783h6.setArguments(bundle);
            return c1783h6;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final View a(C1783h6 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TextView textView = new TextView(this$0.getContext());
        if (Build.VERSION.SDK_INT >= 23) {
            textView.setTextAppearance(R.style.DidomiTVTextLarge);
        } else {
            textView.setTextAppearance(this$0.getContext(), R.style.DidomiTVTextLarge);
        }
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean a(C1783h6 this$0, View view, int i, KeyEvent keyEvent) {
        TextSwitcher textSwitcher;
        TextSwitcher textSwitcher2;
        TextSwitcher textSwitcher3;
        TextSwitcher textSwitcher4;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i == 21 && keyEvent.getAction() == 1) {
            if (!this$0.b().d2()) {
                return true;
            }
            Y0 y0 = this$0.binding;
            if (y0 != null && (textSwitcher4 = y0.f8452g) != null) {
                textSwitcher4.setInAnimation(textSwitcher4.getContext(), R.anim.didomi_text_enter_from_left_alpha);
                textSwitcher4.setOutAnimation(textSwitcher4.getContext(), R.anim.didomi_text_exit_to_right_alpha);
            }
            Y0 y02 = this$0.binding;
            if (y02 != null && (textSwitcher3 = y02.f8451f) != null) {
                textSwitcher3.setInAnimation(textSwitcher3.getContext(), R.anim.didomi_text_enter_from_left_alpha);
                textSwitcher3.setOutAnimation(textSwitcher3.getContext(), R.anim.didomi_text_exit_to_right_alpha);
            }
            this$0.e();
            return true;
        }
        if (i != 22 || keyEvent.getAction() != 1) {
            return false;
        }
        if (!this$0.b().c2()) {
            return true;
        }
        Y0 y03 = this$0.binding;
        if (y03 != null && (textSwitcher2 = y03.f8452g) != null) {
            textSwitcher2.setInAnimation(textSwitcher2.getContext(), R.anim.didomi_text_enter_from_right_alpha);
            textSwitcher2.setOutAnimation(textSwitcher2.getContext(), R.anim.didomi_text_exit_to_left_alpha);
        }
        Y0 y04 = this$0.binding;
        if (y04 != null && (textSwitcher = y04.f8451f) != null) {
            textSwitcher.setInAnimation(textSwitcher.getContext(), R.anim.didomi_text_enter_from_right_alpha);
            textSwitcher.setOutAnimation(textSwitcher.getContext(), R.anim.didomi_text_exit_to_left_alpha);
        }
        this$0.e();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final View b(C1783h6 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TextView textView = new TextView(this$0.getContext());
        if (Build.VERSION.SDK_INT >= 23) {
            textView.setTextAppearance(R.style.DidomiTVTextAction);
        } else {
            textView.setTextAppearance(this$0.getContext(), R.style.DidomiTVTextAction);
        }
        return textView;
    }

    private final void c() {
        Y0 y0 = this.binding;
        if (y0 != null) {
            int size = b().D0().size();
            if (size >= 0 && size < 2) {
                ImageView imageCtvDataProcessingDetailLeftArrowImage = y0.b;
                Intrinsics.checkNotNullExpressionValue(imageCtvDataProcessingDetailLeftArrowImage, "imageCtvDataProcessingDetailLeftArrowImage");
                imageCtvDataProcessingDetailLeftArrowImage.setVisibility(4);
                ImageView imageCtvDataProcessingDetailRightArrowImage = y0.c;
                Intrinsics.checkNotNullExpressionValue(imageCtvDataProcessingDetailRightArrowImage, "imageCtvDataProcessingDetailRightArrowImage");
                imageCtvDataProcessingDetailRightArrowImage.setVisibility(4);
                return;
            }
            int currentDataProcessingIndex = b().getCurrentDataProcessingIndex();
            if (currentDataProcessingIndex == 0) {
                ImageView imageCtvDataProcessingDetailRightArrowImage2 = y0.c;
                Intrinsics.checkNotNullExpressionValue(imageCtvDataProcessingDetailRightArrowImage2, "imageCtvDataProcessingDetailRightArrowImage");
                imageCtvDataProcessingDetailRightArrowImage2.setVisibility(0);
                ImageView imageCtvDataProcessingDetailLeftArrowImage2 = y0.b;
                Intrinsics.checkNotNullExpressionValue(imageCtvDataProcessingDetailLeftArrowImage2, "imageCtvDataProcessingDetailLeftArrowImage");
                imageCtvDataProcessingDetailLeftArrowImage2.setVisibility(4);
                return;
            }
            if (currentDataProcessingIndex == size - 1) {
                ImageView imageCtvDataProcessingDetailRightArrowImage3 = y0.c;
                Intrinsics.checkNotNullExpressionValue(imageCtvDataProcessingDetailRightArrowImage3, "imageCtvDataProcessingDetailRightArrowImage");
                imageCtvDataProcessingDetailRightArrowImage3.setVisibility(4);
                ImageView imageCtvDataProcessingDetailLeftArrowImage3 = y0.b;
                Intrinsics.checkNotNullExpressionValue(imageCtvDataProcessingDetailLeftArrowImage3, "imageCtvDataProcessingDetailLeftArrowImage");
                imageCtvDataProcessingDetailLeftArrowImage3.setVisibility(0);
                return;
            }
            ImageView imageCtvDataProcessingDetailRightArrowImage4 = y0.c;
            Intrinsics.checkNotNullExpressionValue(imageCtvDataProcessingDetailRightArrowImage4, "imageCtvDataProcessingDetailRightArrowImage");
            imageCtvDataProcessingDetailRightArrowImage4.setVisibility(0);
            ImageView imageCtvDataProcessingDetailLeftArrowImage4 = y0.b;
            Intrinsics.checkNotNullExpressionValue(imageCtvDataProcessingDetailLeftArrowImage4, "imageCtvDataProcessingDetailLeftArrowImage");
            imageCtvDataProcessingDetailLeftArrowImage4.setVisibility(0);
        }
    }

    private final void d() {
        g();
        f();
        c();
    }

    private final void e() {
        List<InterfaceC1847o0> listD0 = b().D0();
        int currentDataProcessingIndex = b().getCurrentDataProcessingIndex();
        if (currentDataProcessingIndex >= 0 && currentDataProcessingIndex <= listD0.size()) {
            a().a(listD0.get(currentDataProcessingIndex));
        }
        d();
    }

    private final void f() {
        TextSwitcher textSwitcher;
        Y0 y0 = this.binding;
        if (y0 == null || (textSwitcher = y0.f8451f) == null) {
            return;
        }
        textSwitcher.setText(a().l());
    }

    private final void g() {
        TextSwitcher textSwitcher;
        Y0 y0 = this.binding;
        if (y0 == null || (textSwitcher = y0.f8452g) == null) {
            return;
        }
        textSwitcher.setText(a().h());
    }

    public final C1833m6 a() {
        C1833m6 c1833m6 = this.model;
        if (c1833m6 != null) {
            return c1833m6;
        }
        Intrinsics.throwUninitializedPropertyAccessException("model");
        return null;
    }

    public final C1824l7 b() {
        C1824l7 c1824l7 = this.purposesModel;
        if (c1824l7 != null) {
            return c1824l7;
        }
        Intrinsics.throwUninitializedPropertyAccessException("purposesModel");
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Didomi.Companion.getInstance().getComponent$android_release().a(this);
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup parent, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        Y0 y0A = Y0.a(getLayoutInflater(), parent, false);
        this.binding = y0A;
        ConstraintLayout root = y0A.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "inflate(layoutInflater, …g = it\n            }.root");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        ScrollView scrollView;
        super.onDestroyView();
        Y0 y0 = this.binding;
        if (y0 != null && (scrollView = y0.f8450e) != null) {
            scrollView.setOnKeyListener(null);
        }
        this.binding = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
    @Override // androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onViewCreated(android.view.View r2, android.os.Bundle r3) throws java.lang.Throwable {
        /*
            r1 = this;
            java.lang.String r0 = "view"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            super.onViewCreated(r2, r3)
            int r2 = android.os.Build.VERSION.SDK_INT
            java.lang.String r3 = "data_processing"
            r0 = 33
            if (r2 < r0) goto L1f
            android.os.Bundle r2 = r1.getArguments()
            if (r2 == 0) goto L2c
            java.lang.Class<io.didomi.sdk.o0> r0 = io.didomi.drawable.InterfaceC1847o0.class
            java.lang.Object r2 = r2.getParcelable(r3, r0)
            io.didomi.sdk.o0 r2 = (io.didomi.drawable.InterfaceC1847o0) r2
            goto L2d
        L1f:
            android.os.Bundle r2 = r1.getArguments()
            if (r2 == 0) goto L2c
            android.os.Parcelable r2 = r2.getParcelable(r3)
            io.didomi.sdk.o0 r2 = (io.didomi.drawable.InterfaceC1847o0) r2
            goto L2d
        L2c:
            r2 = 0
        L2d:
            io.didomi.sdk.m6 r3 = r1.a()
            if (r2 == 0) goto L70
            r3.a(r2)
            io.didomi.sdk.Y0 r2 = r1.binding
            if (r2 == 0) goto L6c
            android.widget.ScrollView r3 = r2.f8450e
            android.view.View$OnKeyListener r0 = r1.keyListener
            r3.setOnKeyListener(r0)
            android.widget.TextSwitcher r3 = r2.f8451f
            io.didomi.sdk.ae r0 = new io.didomi.sdk.ae
            r0.<init>()
            r3.setFactory(r0)
            android.widget.TextSwitcher r3 = r2.f8452g
            io.didomi.sdk.ce r0 = new io.didomi.sdk.ce
            r0.<init>()
            r3.setFactory(r0)
            android.widget.LinearLayout r3 = r2.f8449d
            android.animation.LayoutTransition r3 = r3.getLayoutTransition()
            r0 = 4
            r3.enableTransitionType(r0)
            android.widget.TextView r2 = r2.h
            io.didomi.sdk.m6 r3 = r1.a()
            java.lang.String r3 = r3.k()
            r2.setText(r3)
        L6c:
            r1.d()
            return
        L70:
            java.lang.Throwable r2 = new java.lang.Throwable
            java.lang.String r3 = "DataProcessing is invalid"
            r2.<init>(r3)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: io.didomi.drawable.C1783h6.onViewCreated(android.view.View, android.os.Bundle):void");
    }
}
