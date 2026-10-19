package io.didomi.drawable;

import android.content.Context;
import android.widget.TextView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import io.didomi.drawable.vendors.ctv.model.TVDataProcessingLegalType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.t7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \u000f2\u00020\u0001:\u0001\u0010B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\f\u0010\u0003J\u000f\u0010\r\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000e\u0010\u0003¨\u0006\u0011"}, d2 = {"Lio/didomi/sdk/t7;", "Lio/didomi/sdk/H7;", "<init>", "()V", "Landroid/content/Context;", "context", "", "onAttach", "(Landroid/content/Context;)V", "Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;", CampaignEx.JSON_KEY_AD_K, "i", "g", "e", "a", "android_release"}, mv = {1, 8, 0})
public final class C1904t7 extends H7 {
    @Override // io.didomi.drawable.H7
    public TVDataProcessingLegalType d() {
        return TVDataProcessingLegalType.ADDITIONAL;
    }

    @Override // io.didomi.drawable.H7
    public void g() {
    }

    @Override // io.didomi.drawable.H7
    public void i() {
        C1788i1 binding = getBinding();
        TextView textView = binding != null ? binding.f8579g : null;
        if (textView == null) {
            return;
        }
        textView.setText(e().e0());
    }

    @Override // io.didomi.drawable.H7
    public void k() {
        C1788i1 binding = getBinding();
        TextView textView = binding != null ? binding.h : null;
        if (textView == null) {
            return;
        }
        String upperCase = e().i().toUpperCase(e().p0());
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        textView.setText(upperCase);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Didomi.Companion.getInstance().getComponent$android_release().a(this);
        super.onAttach(context);
    }
}
