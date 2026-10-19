package io.didomi.drawable;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.models.DeviceStorageDisclosure;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \f2\u00020\u0001:\u0001\nB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0005\u0010\bJ\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\bJ\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\n\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000b\u0010\bJ\u0017\u0010\f\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\f\u0010\bJ\u0017\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J+\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J!\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00172\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u001b\u0010\u001cR\"\u0010\"\u001a\u00020\u001d8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\n\u0010\u001e\u001a\u0004\b\n\u0010\u001f\"\u0004\b \u0010!R\"\u0010(\u001a\u00020#8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\t\u0010$\u001a\u0004\b\t\u0010%\"\u0004\b&\u0010'R\u0018\u0010+\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010*¨\u0006,"}, d2 = {"Lio/didomi/sdk/E5;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "", "c", "Lio/didomi/sdk/models/DeviceStorageDisclosure;", "disclosure", "(Lio/didomi/sdk/models/DeviceStorageDisclosure;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "a", "e", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/content/Context;", "context", "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "view", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lio/didomi/sdk/C0;", "Lio/didomi/sdk/C0;", "()Lio/didomi/sdk/C0;", "setModel", "(Lio/didomi/sdk/C0;)V", "model", "Lio/didomi/sdk/z8;", "Lio/didomi/sdk/z8;", "()Lio/didomi/sdk/z8;", "setThemeProvider", "(Lio/didomi/sdk/z8;)V", "themeProvider", "Lio/didomi/sdk/U0;", "Lio/didomi/sdk/U0;", "binding", "android_release"}, mv = {1, 8, 0})
public final class E5 extends Fragment {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    public C0 model;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    public C1965z8 themeProvider;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private U0 binding;

    private final void a(DeviceStorageDisclosure disclosure) {
        U0 u0 = this.binding;
        if (u0 != null) {
            String strB = a().b(disclosure);
            if (strB == null) {
                TextView textView = u0.f8383d;
                Intrinsics.checkNotNullExpressionValue(textView, "binding.disclosureDomainTitle");
                textView.setVisibility(8);
                TextView textView2 = u0.c;
                Intrinsics.checkNotNullExpressionValue(textView2, "binding.disclosureDomain");
                textView2.setVisibility(8);
                return;
            }
            TextView setupDomain$lambda$11$lambda$9 = u0.f8383d;
            Intrinsics.checkNotNullExpressionValue(setupDomain$lambda$11$lambda$9, "setupDomain$lambda$11$lambda$9");
            C1955y8.a(setupDomain$lambda$11$lambda$9, b().i().n());
            setupDomain$lambda$11$lambda$9.setText(a().f());
            TextView setupDomain$lambda$11$lambda$10 = u0.c;
            Intrinsics.checkNotNullExpressionValue(setupDomain$lambda$11$lambda$10, "setupDomain$lambda$11$lambda$10");
            C1955y8.a(setupDomain$lambda$11$lambda$10, b().i().c());
            setupDomain$lambda$11$lambda$10.setText(strB);
        }
    }

    private final void b(DeviceStorageDisclosure disclosure) {
        U0 u0 = this.binding;
        if (u0 != null) {
            String strC = a().c(disclosure);
            if (strC == null) {
                TextView textView = u0.f8385f;
                Intrinsics.checkNotNullExpressionValue(textView, "binding.disclosureExpirationTitle");
                textView.setVisibility(8);
                TextView textView2 = u0.f8384e;
                Intrinsics.checkNotNullExpressionValue(textView2, "binding.disclosureExpiration");
                textView2.setVisibility(8);
                return;
            }
            TextView setupExpiration$lambda$8$lambda$6 = u0.f8385f;
            Intrinsics.checkNotNullExpressionValue(setupExpiration$lambda$8$lambda$6, "setupExpiration$lambda$8$lambda$6");
            C1955y8.a(setupExpiration$lambda$8$lambda$6, b().i().n());
            setupExpiration$lambda$8$lambda$6.setText(a().g());
            TextView setupExpiration$lambda$8$lambda$7 = u0.f8384e;
            Intrinsics.checkNotNullExpressionValue(setupExpiration$lambda$8$lambda$7, "setupExpiration$lambda$8$lambda$7");
            C1955y8.a(setupExpiration$lambda$8$lambda$7, b().i().c());
            setupExpiration$lambda$8$lambda$7.setText(strC);
        }
    }

    private final void c() {
        TextView textView;
        U0 u0 = this.binding;
        if (u0 == null || (textView = u0.k) == null) {
            return;
        }
        C1955y8.a(textView, b().i().n());
        textView.setText(a().d());
    }

    private final void c(DeviceStorageDisclosure disclosure) {
        U0 u0 = this.binding;
        if (u0 != null) {
            String strF = a().f(disclosure);
            if (strF.length() <= 0) {
                TextView textView = u0.j;
                Intrinsics.checkNotNullExpressionValue(textView, "binding.disclosurePurposesTitle");
                textView.setVisibility(8);
                TextView textView2 = u0.i;
                Intrinsics.checkNotNullExpressionValue(textView2, "binding.disclosurePurposes");
                textView2.setVisibility(8);
                return;
            }
            TextView setupPurposes$lambda$5$lambda$3 = u0.j;
            Intrinsics.checkNotNullExpressionValue(setupPurposes$lambda$5$lambda$3, "setupPurposes$lambda$5$lambda$3");
            C1955y8.a(setupPurposes$lambda$5$lambda$3, b().i().n());
            setupPurposes$lambda$5$lambda$3.setText(a().l());
            TextView setupPurposes$lambda$5$lambda$4 = u0.i;
            Intrinsics.checkNotNullExpressionValue(setupPurposes$lambda$5$lambda$4, "setupPurposes$lambda$5$lambda$4");
            C1955y8.a(setupPurposes$lambda$5$lambda$4, b().i().c());
            setupPurposes$lambda$5$lambda$4.setText(strF);
        }
    }

    private final void d(DeviceStorageDisclosure disclosure) {
        U0 u0 = this.binding;
        if (u0 != null) {
            String strD = a().d(disclosure);
            if (strD == null) {
                TextView textView = u0.h;
                Intrinsics.checkNotNullExpressionValue(textView, "binding.disclosureNameTitle");
                textView.setVisibility(8);
                TextView textView2 = u0.f8386g;
                Intrinsics.checkNotNullExpressionValue(textView2, "binding.disclosureName");
                textView2.setVisibility(8);
                return;
            }
            TextView setupTitle$lambda$17$lambda$15 = u0.h;
            Intrinsics.checkNotNullExpressionValue(setupTitle$lambda$17$lambda$15, "setupTitle$lambda$17$lambda$15");
            C1955y8.a(setupTitle$lambda$17$lambda$15, b().i().n());
            setupTitle$lambda$17$lambda$15.setText(a().i());
            TextView setupTitle$lambda$17$lambda$16 = u0.f8386g;
            Intrinsics.checkNotNullExpressionValue(setupTitle$lambda$17$lambda$16, "setupTitle$lambda$17$lambda$16");
            C1955y8.a(setupTitle$lambda$17$lambda$16, b().i().c());
            setupTitle$lambda$17$lambda$16.setText(strD);
        }
    }

    private final void e(DeviceStorageDisclosure disclosure) {
        U0 u0 = this.binding;
        if (u0 != null) {
            String strG = a().g(disclosure);
            if (strG == null) {
                TextView textView = u0.m;
                Intrinsics.checkNotNullExpressionValue(textView, "binding.disclosureTypeTitle");
                textView.setVisibility(8);
                TextView textView2 = u0.l;
                Intrinsics.checkNotNullExpressionValue(textView2, "binding.disclosureType");
                textView2.setVisibility(8);
                return;
            }
            TextView setupType$lambda$14$lambda$12 = u0.m;
            Intrinsics.checkNotNullExpressionValue(setupType$lambda$14$lambda$12, "setupType$lambda$14$lambda$12");
            C1955y8.a(setupType$lambda$14$lambda$12, b().i().n());
            setupType$lambda$14$lambda$12.setText(a().p());
            TextView setupType$lambda$14$lambda$13 = u0.l;
            Intrinsics.checkNotNullExpressionValue(setupType$lambda$14$lambda$13, "setupType$lambda$14$lambda$13");
            C1955y8.a(setupType$lambda$14$lambda$13, b().i().c());
            setupType$lambda$14$lambda$13.setText(strG);
        }
    }

    public final C0 a() {
        C0 c0 = this.model;
        if (c0 != null) {
            return c0;
        }
        Intrinsics.throwUninitializedPropertyAccessException("model");
        return null;
    }

    public final C1965z8 b() {
        C1965z8 c1965z8 = this.themeProvider;
        if (c1965z8 != null) {
            return c1965z8;
        }
        Intrinsics.throwUninitializedPropertyAccessException("themeProvider");
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Didomi.Companion.getInstance().getComponent$android_release().a(this);
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        U0 u0A = U0.a(inflater, container, false);
        this.binding = u0A;
        ScrollView root = u0A.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "inflate(inflater, contai…g = it\n            }.root");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        DeviceStorageDisclosure selectedDisclosure = a().getSelectedDisclosure();
        if (selectedDisclosure != null) {
            c();
            d(selectedDisclosure);
            e(selectedDisclosure);
            a(selectedDisclosure);
            b(selectedDisclosure);
            c(selectedDisclosure);
        }
    }
}
