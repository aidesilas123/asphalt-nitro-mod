package io.didomi.drawable;

import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import io.didomi.drawable.G5;
import io.didomi.drawable.view.mobile.DidomiToggle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\u0018\u0000 \u00162\u00020\u0001:\u0001\u000fB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001d\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010J\u001d\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u0011\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"Lio/didomi/sdk/O5;", "Lio/didomi/sdk/P5;", "Lio/didomi/sdk/B1;", "binding", "Lio/didomi/sdk/G5$a;", "callbacks", "Lio/didomi/sdk/z8;", "themeProvider", "<init>", "(Lio/didomi/sdk/B1;Lio/didomi/sdk/G5$a;Lio/didomi/sdk/z8;)V", "Lio/didomi/sdk/a4;", "data", "", o2.h.L, "", "a", "(Lio/didomi/sdk/a4;I)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", "Lio/didomi/sdk/B1;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lio/didomi/sdk/G5$a;", "e", "android_release"}, mv = {1, 8, 0})
public final class O5 extends P5 {

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final B1 binding;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final G5.a callbacks;

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"io/didomi/sdk/O5$b", "Lio/didomi/sdk/view/mobile/DidomiToggle$a;", "Lio/didomi/sdk/view/mobile/DidomiToggle;", "toggle", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "state", "", "a", "(Lio/didomi/sdk/view/mobile/DidomiToggle;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "android_release"}, mv = {1, 8, 0})
    public static final class b implements DidomiToggle.a {
        final /* synthetic */ PersonalDataDisplayItem b;

        b(PersonalDataDisplayItem personalDataDisplayItem) {
            this.b = personalDataDisplayItem;
        }

        @Override // io.didomi.sdk.view.mobile.DidomiToggle.a
        public void a(DidomiToggle toggle, DidomiToggle.b state) {
            Intrinsics.checkNotNullParameter(toggle, "toggle");
            Intrinsics.checkNotNullParameter(state, "state");
            O5.this.callbacks.a(this.b.getType(), this.b.getDataId(), state);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public O5(B1 binding, G5.a callbacks, C1965z8 themeProvider) {
        super(binding, themeProvider);
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
        Intrinsics.checkNotNullParameter(themeProvider, "themeProvider");
        this.binding = binding;
        this.callbacks = callbacks;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(O5 this$0, PersonalDataDisplayItem data, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(data, "$data");
        this$0.callbacks.a(data.getType(), data.getDataId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(DidomiToggle this_apply) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.setAnimate(true);
    }

    public final void a(final PersonalDataDisplayItem data, int position) {
        boolean z;
        Intrinsics.checkNotNullParameter(data, "data");
        super.a(data);
        B1 b1 = this.binding;
        TextView bind$lambda$3$lambda$0 = b1.f8180d;
        Intrinsics.checkNotNullExpressionValue(bind$lambda$3$lambda$0, "bind$lambda$3$lambda$0");
        C1955y8.a(bind$lambda$3$lambda$0, getThemeProvider().i().c());
        bind$lambda$3$lambda$0.setText(data.getLabel());
        AppCompatImageView bind$lambda$3$lambda$1 = b1.b;
        Intrinsics.checkNotNullExpressionValue(bind$lambda$3$lambda$1, "bind$lambda$3$lambda$1");
        if (data.getCanShowDetails()) {
            bind$lambda$3$lambda$1.setColorFilter(getThemeProvider().j());
            z = true;
        } else {
            z = false;
        }
        bind$lambda$3$lambda$1.setVisibility(z ? 0 : 8);
        if (data.getCanShowDetails()) {
            this.itemView.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.bc
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    O5.a(this.a, data, view);
                }
            });
        } else {
            this.itemView.setOnClickListener(null);
        }
        this.itemView.setClickable(data.getCanShowDetails());
        b1.c.setHasMiddleState(false);
        b(data, position);
    }

    public final void b(PersonalDataDisplayItem data, int position) {
        Intrinsics.checkNotNullParameter(data, "data");
        String str = data.f().get(data.getState().ordinal());
        View itemView = this.itemView;
        Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
        j9.a(itemView, data.getLabel(), data.getAccessibilityActionDescription(), null, false, null, 0, Integer.valueOf(position), data.getCanShowDetails() ? EnumC1716b.b : null, 60, null);
        final DidomiToggle update$lambda$5 = this.binding.c;
        update$lambda$5.setCallback(null);
        if (update$lambda$5.getState() != data.getState()) {
            update$lambda$5.setAnimate(false);
            update$lambda$5.setState(data.getState());
            update$lambda$5.post(new Runnable() { // from class: io.didomi.sdk.cc
                @Override // java.lang.Runnable
                public final void run() {
                    O5.a(update$lambda$5);
                }
            });
        }
        Intrinsics.checkNotNullExpressionValue(update$lambda$5, "update$lambda$5");
        j9.a(update$lambda$5, data.getLabel(), data.e().get(data.getState().ordinal()), str, data.getAccessibilityAnnounceState(), null, 0, null, null, PsExtractor.VIDEO_STREAM_MASK, null);
        if (data.getAccessibilityAnnounceState()) {
            data.a(false);
        }
        update$lambda$5.setCallback(new b(data));
    }
}
