package io.didomi.drawable;

import android.content.Context;
import android.widget.ImageView;
import android.widget.TextView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.i8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \t2\u00020\u0001:\u0001\u0013B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000b\u0010\u0003R\"\u0010\u0012\u001a\u00020\f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\n\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, d2 = {"Lio/didomi/sdk/i8;", "Lio/didomi/sdk/n7;", "<init>", "()V", "Landroid/content/Context;", "context", "", "onAttach", "(Landroid/content/Context;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/t8;", "Lio/didomi/sdk/t8;", "e", "()Lio/didomi/sdk/t8;", "setModel", "(Lio/didomi/sdk/t8;)V", "model", "a", "android_release"}, mv = {1, 8, 0})
public final class C1795i8 extends AbstractC1844n7 {

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    public C1905t8 model;

    @Override // io.didomi.drawable.AbstractC1844n7
    public void b() {
        ImageView imageView;
        C1758f1 binding = getBinding();
        if (binding == null || (imageView = binding.b) == null) {
            return;
        }
        imageView.setImageBitmap(e().b(imageView.getResources().getDimensionPixelSize(R.dimen.didomi_tv_preferences_qr_code_size)));
    }

    @Override // io.didomi.drawable.AbstractC1844n7
    public void c() {
        C1758f1 binding = getBinding();
        TextView textView = binding != null ? binding.f8545d : null;
        if (textView == null) {
            return;
        }
        textView.setText(e().G0());
    }

    @Override // io.didomi.drawable.AbstractC1844n7
    public void d() {
        C1758f1 binding = getBinding();
        TextView textView = binding != null ? binding.f8546e : null;
        if (textView == null) {
            return;
        }
        textView.setText(e().H0());
    }

    public final C1905t8 e() {
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
}
