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
import android.widget.ViewSwitcher;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.models.DeviceStorageDisclosure;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00072\u00020\u0001:\u0001\u001bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\u0003J\u000f\u0010\b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\b\u0010\u0003J\u0017\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ+\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J!\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0019\u0010\u0003R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\"\u0010$\u001a\u00020\u001e8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b\u001f\u0010!\"\u0004\b\"\u0010#R\"\u0010*\u001a\u00020%8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0006\u0010&\u001a\u0004\b\u001b\u0010'\"\u0004\b(\u0010)R\u0014\u0010-\u001a\u00020+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010,¨\u0006."}, d2 = {"Lio/didomi/sdk/Z7;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "c", "e", InneractiveMediationDefs.GENDER_FEMALE, "Landroid/content/Context;", "context", "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "parent", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "view", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "Lio/didomi/sdk/Z0;", "a", "Lio/didomi/sdk/Z0;", "binding", "Lio/didomi/sdk/t8;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/t8;", "()Lio/didomi/sdk/t8;", "setModel", "(Lio/didomi/sdk/t8;)V", "model", "Lio/didomi/sdk/o6;", "Lio/didomi/sdk/o6;", "()Lio/didomi/sdk/o6;", "setDisclosuresModel", "(Lio/didomi/sdk/o6;)V", "disclosuresModel", "Landroid/view/View$OnKeyListener;", "Landroid/view/View$OnKeyListener;", "keyListener", "android_release"}, mv = {1, 8, 0})
public final class Z7 extends Fragment {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private Z0 binding;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    public C1905t8 model;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    public C1853o6 disclosuresModel;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final View.OnKeyListener keyListener = new View.OnKeyListener() { // from class: io.didomi.sdk.pd
        @Override // android.view.View.OnKeyListener
        public final boolean onKey(View view, int i, KeyEvent keyEvent) {
            return Z7.a(this.a, view, i, keyEvent);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static final View a(Z7 this$0) {
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
    public static final boolean a(Z7 this$0, View view, int i, KeyEvent keyEvent) {
        TextSwitcher textSwitcher;
        TextSwitcher textSwitcher2;
        TextSwitcher textSwitcher3;
        TextSwitcher textSwitcher4;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i == 21 && keyEvent.getAction() == 1) {
            if (this$0.a().getSelectedIndex() <= 0) {
                return true;
            }
            this$0.a().s();
            this$0.b().d(r3.g0() - 1);
            Z0 z0 = this$0.binding;
            if (z0 != null && (textSwitcher4 = z0.f8468g) != null) {
                textSwitcher4.setInAnimation(textSwitcher4.getContext(), R.anim.didomi_text_enter_from_left_alpha);
                textSwitcher4.setOutAnimation(textSwitcher4.getContext(), R.anim.didomi_text_exit_to_right_alpha);
            }
            Z0 z02 = this$0.binding;
            if (z02 != null && (textSwitcher3 = z02.f8467f) != null) {
                textSwitcher3.setInAnimation(textSwitcher3.getContext(), R.anim.didomi_text_enter_from_left_alpha);
                textSwitcher3.setOutAnimation(textSwitcher3.getContext(), R.anim.didomi_text_exit_to_right_alpha);
            }
            this$0.d();
            return true;
        }
        if (i != 22 || keyEvent.getAction() != 1) {
            return false;
        }
        List<DeviceStorageDisclosure> listT = this$0.a().t();
        if (listT == null) {
            return true;
        }
        if (this$0.a().getSelectedIndex() >= Integer.valueOf(listT.size()).intValue() - 1) {
            return true;
        }
        this$0.a().r();
        C1905t8 c1905t8B = this$0.b();
        c1905t8B.d(c1905t8B.g0() + 1);
        Z0 z03 = this$0.binding;
        if (z03 != null && (textSwitcher2 = z03.f8468g) != null) {
            textSwitcher2.setInAnimation(textSwitcher2.getContext(), R.anim.didomi_text_enter_from_right_alpha);
            textSwitcher2.setOutAnimation(textSwitcher2.getContext(), R.anim.didomi_text_exit_to_left_alpha);
        }
        Z0 z04 = this$0.binding;
        if (z04 != null && (textSwitcher = z04.f8467f) != null) {
            textSwitcher.setInAnimation(textSwitcher.getContext(), R.anim.didomi_text_enter_from_right_alpha);
            textSwitcher.setOutAnimation(textSwitcher.getContext(), R.anim.didomi_text_exit_to_left_alpha);
        }
        this$0.d();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final View b(Z7 this$0) {
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
        Z0 z0 = this.binding;
        if (z0 != null) {
            List<DeviceStorageDisclosure> listT = a().t();
            int size = listT != null ? listT.size() : 0;
            if (size >= 0 && size < 2) {
                ImageView imageView = z0.b;
                Intrinsics.checkNotNullExpressionValue(imageView, "imageCtvDeviceStorageDis…osureDetailLeftArrowImage");
                imageView.setVisibility(4);
                ImageView imageView2 = z0.c;
                Intrinsics.checkNotNullExpressionValue(imageView2, "imageCtvDeviceStorageDis…sureDetailRightArrowImage");
                imageView2.setVisibility(4);
                return;
            }
            int selectedIndex = a().getSelectedIndex();
            if (selectedIndex == 0) {
                ImageView imageView3 = z0.c;
                Intrinsics.checkNotNullExpressionValue(imageView3, "imageCtvDeviceStorageDis…sureDetailRightArrowImage");
                imageView3.setVisibility(0);
                ImageView imageView4 = z0.b;
                Intrinsics.checkNotNullExpressionValue(imageView4, "imageCtvDeviceStorageDis…osureDetailLeftArrowImage");
                imageView4.setVisibility(4);
                return;
            }
            if (selectedIndex == size - 1) {
                ImageView imageView5 = z0.c;
                Intrinsics.checkNotNullExpressionValue(imageView5, "imageCtvDeviceStorageDis…sureDetailRightArrowImage");
                imageView5.setVisibility(4);
                ImageView imageView6 = z0.b;
                Intrinsics.checkNotNullExpressionValue(imageView6, "imageCtvDeviceStorageDis…osureDetailLeftArrowImage");
                imageView6.setVisibility(0);
                return;
            }
            ImageView imageView7 = z0.c;
            Intrinsics.checkNotNullExpressionValue(imageView7, "imageCtvDeviceStorageDis…sureDetailRightArrowImage");
            imageView7.setVisibility(0);
            ImageView imageView8 = z0.b;
            Intrinsics.checkNotNullExpressionValue(imageView8, "imageCtvDeviceStorageDis…osureDetailLeftArrowImage");
            imageView8.setVisibility(0);
        }
    }

    private final void d() {
        c();
        e();
        f();
    }

    private final void e() {
        TextSwitcher textSwitcher;
        DeviceStorageDisclosure selectedDisclosure = a().getSelectedDisclosure();
        if (selectedDisclosure != null) {
            String strA = a().a(selectedDisclosure);
            Z0 z0 = this.binding;
            if (z0 == null || (textSwitcher = z0.f8467f) == null) {
                return;
            }
            textSwitcher.setText(strA);
        }
    }

    private final void f() {
        TextSwitcher textSwitcher;
        Z0 z0 = this.binding;
        if (z0 == null || (textSwitcher = z0.f8468g) == null) {
            return;
        }
        textSwitcher.setText(a().u());
    }

    public final C1853o6 a() {
        C1853o6 c1853o6 = this.disclosuresModel;
        if (c1853o6 != null) {
            return c1853o6;
        }
        Intrinsics.throwUninitializedPropertyAccessException("disclosuresModel");
        return null;
    }

    public final C1905t8 b() {
        C1905t8 c1905t8 = this.model;
        if (c1905t8 != null) {
            return c1905t8;
        }
        Intrinsics.throwUninitializedPropertyAccessException("model");
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
        Z0 z0A = Z0.a(getLayoutInflater(), parent, false);
        this.binding = z0A;
        ConstraintLayout root = z0A.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "inflate(layoutInflater, …g = it\n            }.root");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        ScrollView scrollView;
        super.onDestroyView();
        Z0 z0 = this.binding;
        if (z0 != null && (scrollView = z0.f8466e) != null) {
            scrollView.setOnKeyListener(null);
        }
        this.binding = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Z0 z0 = this.binding;
        if (z0 != null) {
            z0.f8466e.setOnKeyListener(this.keyListener);
            z0.f8467f.setFactory(new ViewSwitcher.ViewFactory() { // from class: io.didomi.sdk.nd
                @Override // android.widget.ViewSwitcher.ViewFactory
                public final View makeView() {
                    return Z7.a(this.a);
                }
            });
            z0.f8468g.setFactory(new ViewSwitcher.ViewFactory() { // from class: io.didomi.sdk.od
                @Override // android.widget.ViewSwitcher.ViewFactory
                public final View makeView() {
                    return Z7.b(this.a);
                }
            });
            z0.f8465d.getLayoutTransition().enableTransitionType(4);
            z0.h.setText(a().q());
        }
        d();
    }
}
