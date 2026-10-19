package io.didomi.drawable;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableString;
import android.text.style.ImageSpan;
import android.view.View;
import android.widget.TextView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import io.didomi.drawable.C1831m4;
import io.didomi.drawable.view.mobile.DidomiToggle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\u0018\u0000 \u00162\u00020\u0001:\u0001\u000fB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001d\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000f\u0010\u0011R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"Lio/didomi/sdk/K4;", "Lio/didomi/sdk/U4;", "Lio/didomi/sdk/v1;", "binding", "Lio/didomi/sdk/m4$a;", "callbacks", "Lio/didomi/sdk/z8;", "themeProvider", "<init>", "(Lio/didomi/sdk/v1;Lio/didomi/sdk/m4$a;Lio/didomi/sdk/z8;)V", "Lio/didomi/sdk/E4;", "data", "", "itemPosition", "", "a", "(Lio/didomi/sdk/E4;I)V", "(Lio/didomi/sdk/E4;)V", "c", "Lio/didomi/sdk/v1;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lio/didomi/sdk/m4$a;", "e", "android_release"}, mv = {1, 8, 0})
public final class K4 extends U4 {

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final C1918v1 binding;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final C1831m4.a callbacks;

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"io/didomi/sdk/K4$b", "Lio/didomi/sdk/view/mobile/DidomiToggle$a;", "Lio/didomi/sdk/view/mobile/DidomiToggle;", "toggle", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "state", "", "a", "(Lio/didomi/sdk/view/mobile/DidomiToggle;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "android_release"}, mv = {1, 8, 0})
    public static final class b implements DidomiToggle.a {
        final /* synthetic */ PurposeDisplayItem b;

        b(PurposeDisplayItem purposeDisplayItem) {
            this.b = purposeDisplayItem;
        }

        @Override // io.didomi.sdk.view.mobile.DidomiToggle.a
        public void a(DidomiToggle toggle, DidomiToggle.b state) {
            Intrinsics.checkNotNullParameter(toggle, "toggle");
            Intrinsics.checkNotNullParameter(state, "state");
            K4.this.callbacks.a(this.b.getType(), this.b.getDataId(), state);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public K4(C1918v1 binding, C1831m4.a callbacks, C1965z8 themeProvider) {
        super(binding, themeProvider);
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
        Intrinsics.checkNotNullParameter(themeProvider, "themeProvider");
        this.binding = binding;
        this.callbacks = callbacks;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(K4 this$0, PurposeDisplayItem data, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(data, "$data");
        this$0.callbacks.a(data.getType(), data.getDataId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(DidomiToggle this_apply) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.setAnimate(true);
    }

    public final void a(PurposeDisplayItem data) {
        Intrinsics.checkNotNullParameter(data, "data");
        if (data.getIsEssential()) {
            return;
        }
        String str = data.h().get(data.getState().ordinal());
        final DidomiToggle update$lambda$8 = this.binding.c;
        update$lambda$8.setCallback(null);
        if (update$lambda$8.getState() != data.getState()) {
            update$lambda$8.setAnimate(false);
            update$lambda$8.setState(data.getState());
            update$lambda$8.post(new Runnable() { // from class: io.didomi.sdk.ua
                @Override // java.lang.Runnable
                public final void run() {
                    K4.a(update$lambda$8);
                }
            });
        }
        Intrinsics.checkNotNullExpressionValue(update$lambda$8, "update$lambda$8");
        j9.a(update$lambda$8, data.getLabel(), data.g().get(data.getState().ordinal()), str, data.getAccessibilityAnnounceState(), null, 0, null, null, PsExtractor.VIDEO_STREAM_MASK, null);
        if (data.getAccessibilityAnnounceState()) {
            data.a(false);
        }
        update$lambda$8.setCallback(new b(data));
    }

    public final void a(final PurposeDisplayItem data, int itemPosition) {
        Intrinsics.checkNotNullParameter(data, "data");
        super.a((InterfaceC1931w4) data);
        C1918v1 c1918v1 = this.binding;
        if (data.getIconId() > 0) {
            Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(this.itemView.getResources(), data.getIconId());
            int dimensionPixelSize = this.itemView.getResources().getDimensionPixelSize(R.dimen.didomi_purpose_item_icon_size);
            TextView bind$lambda$6$lambda$1$lambda$0 = c1918v1.f8772e;
            SpannableString spannableString = new SpannableString("   " + data.getLabel());
            Intrinsics.checkNotNullExpressionValue(bind$lambda$6$lambda$1$lambda$0, "bind$lambda$6$lambda$1$lambda$0");
            C1955y8.a(bind$lambda$6$lambda$1$lambda$0, getThemeProvider().i().c());
            spannableString.setSpan(new ImageSpan(bind$lambda$6$lambda$1$lambda$0.getContext(), Bitmap.createScaledBitmap(bitmapDecodeResource, dimensionPixelSize, dimensionPixelSize, false), 0), 0, 1, 33);
            bind$lambda$6$lambda$1$lambda$0.setText(spannableString);
        } else {
            TextView bind$lambda$6$lambda$2 = c1918v1.f8772e;
            Intrinsics.checkNotNullExpressionValue(bind$lambda$6$lambda$2, "bind$lambda$6$lambda$2");
            C1955y8.a(bind$lambda$6$lambda$2, getThemeProvider().i().c());
            bind$lambda$6$lambda$2.setText(data.getLabel());
        }
        c1918v1.b.setColorFilter(getThemeProvider().j());
        if (data.getIsEssential()) {
            TextView bind$lambda$6$lambda$3 = c1918v1.f8771d;
            Intrinsics.checkNotNullExpressionValue(bind$lambda$6$lambda$3, "bind$lambda$6$lambda$3");
            C1955y8.a(bind$lambda$6$lambda$3, getThemeProvider().i().d());
            bind$lambda$6$lambda$3.setText(data.getLabelEssential());
            bind$lambda$6$lambda$3.setVisibility(0);
            DidomiToggle didomiToggle = c1918v1.c;
            didomiToggle.setVisibility(8);
            didomiToggle.setCallback(null);
        } else {
            TextView textHolderPurposeItemEssentialTitle = c1918v1.f8771d;
            Intrinsics.checkNotNullExpressionValue(textHolderPurposeItemEssentialTitle, "textHolderPurposeItemEssentialTitle");
            textHolderPurposeItemEssentialTitle.setVisibility(8);
            DidomiToggle switchHolderPurposeItem = c1918v1.c;
            Intrinsics.checkNotNullExpressionValue(switchHolderPurposeItem, "switchHolderPurposeItem");
            switchHolderPurposeItem.setVisibility(0);
        }
        View itemView = this.itemView;
        Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
        j9.a(itemView, data.getAccessibilityLabel(), data.getAccessibilityActionDescription(), null, false, null, 0, Integer.valueOf(itemPosition), EnumC1716b.b, 60, null);
        c1918v1.c.setHasMiddleState(!data.getHasTwoStates());
        this.itemView.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.ta
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K4.a(this.a, data, view);
            }
        });
        a(data);
    }
}
