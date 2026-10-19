package io.didomi.drawable;

import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.StyleSpan;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.m6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B)\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bR\u0011\u0010\u000f\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u000eR\u0011\u0010\u0015\u001a\u00020\u00128F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0016"}, d2 = {"Lio/didomi/sdk/m6;", "Lio/didomi/sdk/p0;", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/M2;", "eventsRepository", "Lio/didomi/sdk/C3;", "logoProvider", "Lio/didomi/sdk/v3;", "languagesHelper", "<init>", "(Lio/didomi/sdk/H;Lio/didomi/sdk/M2;Lio/didomi/sdk/C3;Lio/didomi/sdk/v3;)V", "", CampaignEx.JSON_KEY_AD_K, "()Ljava/lang/String;", "additionalDataProcessingHeaderLabel", "e", "illustrationsHeaderLabel", "Landroid/text/Spannable;", "l", "()Landroid/text/Spannable;", "completeDescriptionText", "android_release"}, mv = {1, 8, 0})
public final class C1833m6 extends C1857p0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1833m6(H configurationRepository, M2 eventsRepository, C3 logoProvider, C1920v3 languagesHelper) {
        super(configurationRepository, eventsRepository, logoProvider, languagesHelper);
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(eventsRepository, "eventsRepository");
        Intrinsics.checkNotNullParameter(logoProvider, "logoProvider");
        Intrinsics.checkNotNullParameter(languagesHelper, "languagesHelper");
    }

    @Override // io.didomi.drawable.C1857p0
    public String e() {
        return C1920v3.a(getLanguagesHelper(), "purpose_illustration_explanation", W5.UPPER_CASE, null, null, 12, null);
    }

    public final String k() {
        return C1920v3.a(getLanguagesHelper(), "additional_data_processing", null, null, null, 14, null);
    }

    public final Spannable l() {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(b());
        List<String> listD = d();
        if (!(!listD.isEmpty())) {
            listD = null;
        }
        if (listD != null) {
            if (spannableStringBuilder.length() > 0) {
                spannableStringBuilder.append((CharSequence) "\n\n");
            }
            StyleSpan styleSpan = new StyleSpan(1);
            int length = spannableStringBuilder.length();
            spannableStringBuilder.append((CharSequence) e());
            spannableStringBuilder.setSpan(styleSpan, length, spannableStringBuilder.length(), 17);
            Iterator<T> it = listD.iterator();
            while (it.hasNext()) {
                spannableStringBuilder.append((CharSequence) ("\n\n" + ((String) it.next())));
            }
        } else {
            String strC = c();
            String str = strC.length() > 0 ? strC : null;
            if (str != null) {
                if (spannableStringBuilder.length() > 0) {
                    spannableStringBuilder.append((CharSequence) "\n\n");
                }
                spannableStringBuilder.append((CharSequence) str);
            }
        }
        SpannableString spannableStringValueOf = SpannableString.valueOf(spannableStringBuilder);
        Intrinsics.checkNotNullExpressionValue(spannableStringValueOf, "valueOf(this)");
        return spannableStringValueOf;
    }
}
