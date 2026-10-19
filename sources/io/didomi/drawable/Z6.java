package io.didomi.drawable;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.style.StyleSpan;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import io.didomi.drawable.W6;
import io.didomi.drawable.models.InternalVendor;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0017\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001d\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\f\u001a\u00020\u000bH\u0000¢\u0006\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0015\u001a\u00020\b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\n¨\u0006\u0016"}, d2 = {"Lio/didomi/sdk/Z6;", "Lio/didomi/sdk/S4;", "Lio/didomi/sdk/V8;", "vendorRepository", "Lio/didomi/sdk/v3;", "languagesHelper", "<init>", "(Lio/didomi/sdk/V8;Lio/didomi/sdk/v3;)V", "", CampaignEx.JSON_KEY_AD_K, "()Ljava/lang/String;", "Landroid/content/Context;", "context", "", "a", "(Landroid/content/Context;)Ljava/lang/CharSequence;", "", "Lio/didomi/sdk/W6;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Landroid/content/Context;)Ljava/util/List;", "j", "listTypeLabel", "android_release"}, mv = {1, 8, 0})
public class Z6 extends S4 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Z6(V8 vendorRepository, C1920v3 languagesHelper) {
        super(vendorRepository, languagesHelper);
        Intrinsics.checkNotNullParameter(vendorRepository, "vendorRepository");
        Intrinsics.checkNotNullParameter(languagesHelper, "languagesHelper");
    }

    private final CharSequence a(Context context) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        String string = context.getResources().getString(R.string.didomi_iab_tag);
        Intrinsics.checkNotNullExpressionValue(string, "context.resources.getStr…(R.string.didomi_iab_tag)");
        int i = 0;
        for (Object obj : i()) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            InternalVendor internalVendor = (InternalVendor) obj;
            spannableStringBuilder.append((CharSequence) ("* " + V5.g(internalVendor.getName())));
            if (internalVendor.isIabVendor()) {
                StyleSpan styleSpan = new StyleSpan(1);
                int length = spannableStringBuilder.length();
                spannableStringBuilder.append((CharSequence) (' ' + string));
                spannableStringBuilder.setSpan(styleSpan, length, spannableStringBuilder.length(), 17);
            }
            if (i < CollectionsKt__CollectionsKt.getLastIndex(i())) {
                spannableStringBuilder.append((CharSequence) "\n");
            }
            i = i2;
        }
        return V5.l(spannableStringBuilder.toString());
    }

    private final String j() {
        return e() == d9.PurposeLI ? C1920v3.a(c(), "legitimate_interest", (W5) null, (Map) null, 6, (Object) null) : C1920v3.a(c(), "consent", (W5) null, (Map) null, 6, (Object) null);
    }

    private final String k() {
        int size = i().size();
        return C1920v3.a(c(), size == 1 ? "single_partner_count" : "simple_partners_count", null, MapsKt__MapsJVMKt.mapOf(TuplesKt.to("{nb}", String.valueOf(size))), null, 10, null);
    }

    public final List<W6> b(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new W6.Header(0, 1, null));
        arrayList.add(new W6.Title(f(), j(), k(), 0, 8, null));
        arrayList.add(new W6.Content(a(context), 0, 2, null));
        arrayList.add(new W6.Footer(0, 1, null));
        return arrayList;
    }
}
